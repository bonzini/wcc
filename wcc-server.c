/*
 * Look for keypresses and convert them to the I2C format used by a Wii Classic
 * Controller, putting the result on the standard input every 10 ms.
 * This is really only a debugging/development tool for wcc-client.
 * Analog controls are not supported.
 *
 * Copyright (c) 2017 Paolo Bonzini
 * License: GPLv2+
 *
 * To test, run this as root:
 *    ./wcc-server /dev/input/eventNN > /dev/udp/other-host/40000
 *
 * where /dev/input/eventNN is a keyboard device, and on another computer:
 *    systemd-socket-activate --inetd -d -l0.0.0.0:40000 ./wcc-client
 */
#include <errno.h>
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdbool.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/ioctl.h>
#include <sys/poll.h>
#include <linux/input.h>
#include <linux/input-event-codes.h>
#include "wcc.h"

#define TIMEOUT -1
// #define TIMEOUT 10

#define ARRAY_SIZE(a) (sizeof(a) / sizeof(a[0]))

static int16_t axes[8] = {
    ABS_X, ABS_Y, -1, ABS_RX, ABS_RY, -1, ABS_HAT0X, ABS_HAT0Y
};

/*   D/C                   F/V
 * -------------------------------
 *    UP                    W
 *  LT  RT     1 ESC 2     A S
 *    DN                    Z
 */
static int16_t buttons[16] = {
    KEY_UP, KEY_LEFT, KEY_V, KEY_W,
    KEY_Z, KEY_A, KEY_S, KEY_C,
    -1, KEY_F, KEY_2, KEY_ESC,
    KEY_1, KEY_D, KEY_DOWN, KEY_RIGHT,
};

/* Leave the sticks in the middle */
static struct wcc_status status = {
    .abs[WCC_ABS_LX] = (WCC_ABS_L_MIN + WCC_ABS_L_MAX) / 2,
    .abs[WCC_ABS_LY] = (WCC_ABS_L_MIN + WCC_ABS_L_MAX) / 2,
    .abs[WCC_ABS_RX] = (WCC_ABS_R_MIN + WCC_ABS_R_MAX) / 2,
    .abs[WCC_ABS_RY] = (WCC_ABS_R_MIN + WCC_ABS_R_MAX) / 2,
};

static void got_key(int key, bool down)
{
    int i;
    for (i = 0; i < ARRAY_SIZE(buttons); i++)
        if (key == buttons[i]) {
            if (down)
                status.btn |= (1 << i);
            else
                status.btn &= ~(1 << i);

            if ((1 << i) == WCC_BLT)
                status.abs[WCC_ABS_LT] = down ? WCC_ABS_LT_MAX : 0;
            if ((1 << i) == WCC_BRT)
                status.abs[WCC_ABS_RT] = down ? WCC_ABS_RT_MAX : 0;
            return;
        }
}

int main(int argc, char **argv)
{
    if (argc == 1) {
        fprintf(stderr, "Usage: wcc-server INPUT\n");
        exit(1);
    }

    int input_fd;
    input_fd = open(argv[1], O_RDWR);
    if (input_fd < 0) {
        perror("open");
        exit(1);
    }

    struct pollfd pfd = { .fd = input_fd, .events = POLLIN };
    uint8_t i2c_data[WCC_I2C_LENGTH];
    btn_to_i2c(i2c_data, &status);
    while (1) {
        poll(&pfd, 1, TIMEOUT);
        if (pfd.revents & POLLIN) {
            struct input_event e;
            int r = read(input_fd, &e, sizeof(e));
            if (r != sizeof(e)) {
                if (r < 0 && errno == EINTR)
                    continue;
                if (r == 0)
                    exit(0);
                perror("read");
                exit(1);
            }
            if (e.type == EV_KEY && e.value <= 1)
                got_key(e.code, e.value);
            if (e.type == EV_SYN && e.code == SYN_REPORT)
                btn_to_i2c(i2c_data, &status);
            else
                continue;
        }

        int r = write(1, i2c_data, WCC_I2C_LENGTH);
        if (r != WCC_I2C_LENGTH) {
            if (r < 0 && errno == EINTR)
                continue;
            if (r < 0 && errno == EPIPE)
                exit(0);
            perror("write");
            exit(1);
        }
    }
}
