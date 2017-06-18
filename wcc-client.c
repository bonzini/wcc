/*
 * Receives I2C data from a Wii Classic Controller from the standard input,
 * and passes them to a virtual input device.
 *
 * Copyright (c) 2017 Paolo Bonzini
 * License: GPLv2+
 *
 * To test, run this as root:
 *    systemd-socket-activate --inetd -d -l0.0.0.0:40000 ./wcc-client
 *
 * and on another computer:
 *    ./wcc-server /dev/input/eventNN | socat STDIO UDP-SENDTO:localhost:40000
 *
 * where /dev/input/eventNN is a keyboard device.
 */
#include <errno.h>
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdbool.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/ioctl.h>
#include <linux/input.h>
#include <linux/uinput.h>
#include <linux/input-event-codes.h>
#include "wcc.h"

#define ARRAY_SIZE(a) (sizeof(a) / sizeof(a[0]))

static int16_t axes[8] = {
    [WCC_ABS_LX] = ABS_X,
    [WCC_ABS_LY] = ABS_Y,
    [WCC_ABS_LT] = -1,
    [WCC_ABS_RX] = ABS_RX,
    [WCC_ABS_RY] = ABS_RY,
    [WCC_ABS_RT] = -1,
    [WCC_ABS_DPAD_X] = ABS_HAT0X,
    [WCC_ABS_DPAD_Y] = ABS_HAT0Y
};

static struct input_absinfo absinfo[8] = {
    [WCC_ABS_LX] = { .minimum = WCC_ABS_L_MIN, .maximum = WCC_ABS_L_MAX },
    [WCC_ABS_LY] = { .minimum = WCC_ABS_L_MIN, .maximum = WCC_ABS_L_MAX },
    [WCC_ABS_LT] = { .minimum = WCC_ABS_LT_MIN, .maximum = WCC_ABS_LT_MAX },
    [WCC_ABS_RX] = { .minimum = WCC_ABS_R_MIN, .maximum = WCC_ABS_R_MAX },
    [WCC_ABS_RY] = { .minimum = WCC_ABS_R_MIN, .maximum = WCC_ABS_R_MAX },
    [WCC_ABS_RT] = { .minimum = WCC_ABS_RT_MIN, .maximum = WCC_ABS_RT_MAX },
    [WCC_ABS_DPAD_X] = { .minimum = WCC_ABS_DPAD_MIN, .maximum = WCC_ABS_DPAD_MAX },
    [WCC_ABS_DPAD_Y] = { .minimum = WCC_ABS_DPAD_MIN, .maximum = WCC_ABS_DPAD_MAX },
};

static int16_t buttons[16] = {
    -1, -1, BTN_TR2, BTN_X,
    BTN_A, BTN_Y, BTN_B, BTN_TL2,
    -1, BTN_TR, BTN_START, BTN_MODE,
    BTN_SELECT, BTN_TL, -1, -1,
};
    
static struct wcc_status curr;

void send_abs_to_uinput(int fd, int axis, int curr, int new)
{
    if (curr == new)
        return;

    struct input_event event = {
        .type = EV_ABS,
        .code = axis,
        .value = new
    };

    int r;
    do
        r = write(fd, &event, sizeof(event));
    while (r < 0 && errno == EINTR);
    if (r != sizeof(event))
        perror("EV_ABS");
}

void send_btn_to_uinput(int fd, int axis, bool curr, int new)
{
    if (curr == new)
        return;

    struct input_event event = {
        .type = EV_KEY,
        .code = axis,
        .value = new
    };

    if (write(fd, &event, sizeof(event)) != sizeof(event))
        perror("EV_KEY");
}

void send_to_uinput(int fd, struct wcc_status new)
{
    int i;
    for (i = 0; i < ARRAY_SIZE(axes); i++)
        if (axes[i] >= 0)
            send_abs_to_uinput(fd, axes[i], curr.abs[i], new.abs[i]);
    for (i = 0; i < ARRAY_SIZE(buttons); i++)
        if (buttons[i] >= 0) {
            bool btn_old = !!(curr.btn & (1 << i));
            bool btn_new = !!(new.btn & (1 << i));
            send_btn_to_uinput(fd, buttons[i], btn_old, btn_new);
        }
    curr = new;
}

#define uinput_ioctl(fd, ioc, ptr) uinput_ioctl_(fd, #ioc, ioc, ptr)
void uinput_ioctl_(int fd, char *name, int ioc, void *ptr)
{
    if (ioctl(fd, ioc, ptr) < 0) {
        perror(name);
        exit(1);
    }
}

#define uinput_ioctl_int(fd, ioc, val) uinput_ioctl_int_(fd, #ioc, ioc, val)
void uinput_ioctl_int_(int fd, char *name, int ioc, int val)
{
    if (ioctl(fd, ioc, val) < 0) {
        perror(name);
        exit(1);
    }
}

void uinput_abs_setup(int fd, int axis, struct input_absinfo absinfo)
{
    uinput_ioctl_int(fd, UI_SET_ABSBIT, axis);
    struct uinput_abs_setup uas = {
        .code = axis,
        .absinfo = absinfo
    };
    uinput_ioctl(fd, UI_ABS_SETUP, &uas);
}

static char *uinput_filename[] = {
    "/dev/uinput",
    "/dev/input/uinput",
    "/dev/misc/uinput"
};

int init_uinput(void)
{
    int fd, i;
    
    for (i = 0; i < ARRAY_SIZE(uinput_filename); i++) {
        do
            fd = open(uinput_filename[i], O_RDWR);
        while (fd < 0 && errno == EINTR);
        if (fd >= 0 || errno != ENOENT)
            break;
    }
    if (fd < 0) {
        perror("open");
        exit(1);
    }

    struct uinput_setup dev = {
        .id.bustype = BUS_USB,
        .id.vendor = 0x1b36,
        .id.product = 0xbbbb,
        .id.version = 1,
        .name = "Wii Classic Controller over UDP",
    };
    uinput_ioctl(fd, UI_DEV_SETUP, &dev);
    uinput_ioctl_int(fd, UI_SET_EVBIT, EV_ABS);
    for (i = 0; i < ARRAY_SIZE(axes); i++)
        if (axes[i] >= 0)
            uinput_abs_setup(fd, axes[i], absinfo[i]);
    uinput_ioctl_int(fd, UI_SET_EVBIT, EV_KEY);
    for (i = 0; i < ARRAY_SIZE(buttons); i++)
        if (buttons[i] >= 0)
            uinput_ioctl_int(fd, UI_SET_KEYBIT, buttons[i]);
    uinput_ioctl(fd, UI_DEV_CREATE, NULL);
    return fd;
}

int main()
{
    int uinput_fd = init_uinput();

    while (1) {
        uint8_t i2c_input[WCC_I2C_LENGTH];
        int r = read(0, i2c_input, WCC_I2C_LENGTH);
        if (r != WCC_I2C_LENGTH) {
            if (r < 0 && errno == EINTR)
                continue;
            if (r == 0)
                exit(0);
            perror("read");
            exit(1);
        }
        struct wcc_status new = i2c_to_btn(i2c_input);
        send_to_uinput(uinput_fd, new);
    }
}
