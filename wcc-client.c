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
 *    ./wcc-server /dev/input/eventNN > /dev/udp/other-host/40000
 *
 * where /dev/input/eventNN is a keyboard device.
 */
#include <errno.h>
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
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

#define write_event(fd, type, code, value) write_event_(fd, #type, type, code, value)
static void write_event_(int fd, const char *name, int type, int code, int value)
{
    struct input_event event = {
        .type = type,
        .code = code,
        .value = value
    };
    int r;
    do
        r = write(fd, &event, sizeof(event));
    while (r < 0 && errno == EINTR);
    if (r != sizeof(event))
        perror(name);
}

static bool send_abs_to_uinput(int fd, int axis, int curr, int new)
{
    if (curr == new)
        return false;

    write_event(fd, EV_ABS, axis, new);
    return true;
}

static bool send_btn_to_uinput(int fd, int btn, bool curr, int new)
{
    if (curr == new)
        return false;

    write_event(fd, EV_KEY, btn, new);
    return true;
}

static bool send_to_uinput(int fd, struct wcc_status new)
{
    int i;
    int changes = 0;

    for (i = 0; i < ARRAY_SIZE(axes); i++)
        if (axes[i] >= 0)
            changes += send_abs_to_uinput(fd, axes[i], curr.abs[i], new.abs[i]);
    for (i = 0; i < ARRAY_SIZE(buttons); i++)
        if (buttons[i] >= 0) {
            bool btn_old = !!(curr.btn & (1 << i));
            bool btn_new = !!(new.btn & (1 << i));
            changes += send_btn_to_uinput(fd, buttons[i], btn_old, btn_new);
        }

    curr = new;
    if (changes)
        write_event(fd, EV_SYN, SYN_REPORT, 0);
}

#define uinput_ioctl(fd, ioc, ptr) uinput_ioctl_(fd, #ioc, ioc, ptr)
static void uinput_ioctl_(int fd, char *name, int ioc, void *ptr)
{
    if (ioctl(fd, ioc, ptr) < 0) {
        perror(name);
        exit(1);
    }
}

#define uinput_ioctl_int(fd, ioc, val) uinput_ioctl_int_(fd, #ioc, ioc, val)
static void uinput_ioctl_int_(int fd, char *name, int ioc, int val)
{
    if (ioctl(fd, ioc, val) < 0) {
        perror(name);
        exit(1);
    }
}

static void uinput_abs_setup(int fd, int axis, struct input_absinfo absinfo)
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

static int init_uinput(void)
{
    int fd, i;
    int version;
    int rc;
    
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

    rc = ioctl(fd, UI_GET_VERSION, &version);
    if (rc < 0) {
        version = 0;
    }

    uinput_ioctl_int(fd, UI_SET_EVBIT, EV_ABS);
    uinput_ioctl_int(fd, UI_SET_EVBIT, EV_KEY);

    struct uinput_setup dev = {
        .id.bustype = BUS_USB,
        .id.vendor = 0x1b36,
        .id.product = 0xbbbb,
        .id.version = 1,
        .name = "Wii Classic Controller over UDP",
    };
    if (version < 5) {
        struct uinput_user_dev uud;
        memset(&uud, 0, sizeof(uud));
        uud.id = dev.id;
        strcpy(uud.name, dev.name);
        for (i = 0; i < ARRAY_SIZE(axes); i++) {
            if (axes[i] >= 0) {
                uinput_ioctl_int(fd, UI_SET_ABSBIT, axes[i]);
                uud.absmax[axes[i]] = absinfo[i].maximum;
                uud.absmin[axes[i]] = absinfo[i].minimum;
            }
        }
        write(fd, &uud, sizeof(uud));
    } else {
        ioctl(fd, UI_DEV_SETUP, &dev);
        for (i = 0; i < ARRAY_SIZE(axes); i++)
            if (axes[i] >= 0)
                uinput_abs_setup(fd, axes[i], absinfo[i]);
    }
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
