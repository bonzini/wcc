#ifndef WCC_H
#define WCC_H 1

struct wcc_status {
    int8_t abs[8];

    /* (BDR) (BDD) BLT B- | BH B+ BRT 1 | BZL BB BY BA | BX BZR (BDL) (BDU) */
    uint16_t btn;
};

enum wcc_buttons {
    WCC_BDR    = 0x8000,
    WCC_BDD    = 0x4000,
    WCC_BLT    = 0x2000,
    WCC_BMINUS = 0x1000,
    WCC_BHOME  = 0x0800,
    WCC_BPLUS  = 0x0400,
    WCC_BRT    = 0x0200,
    WCC_FIXED0 = 0x0100,
    WCC_BZL    = 0x0080,
    WCC_BB     = 0x0040,
    WCC_BY     = 0x0020,
    WCC_BA     = 0x0010,
    WCC_BX     = 0x0008,
    WCC_BZR    = 0x0004,
    WCC_BDL    = 0x0002,
    WCC_BDU    = 0x0001,

    WCC_DPAD_X_POS = WCC_BDR,
    WCC_DPAD_X_NEG = WCC_BDL,
    WCC_DPAD_Y_POS = WCC_BDD,
    WCC_DPAD_Y_NEG = WCC_BDU,
    WCC_DPAD_MASK = WCC_DPAD_X_POS | WCC_DPAD_X_NEG | WCC_DPAD_Y_POS | WCC_DPAD_Y_NEG,
};

enum wcc_axes {
    WCC_ABS_LX,
    WCC_ABS_LY,
    WCC_ABS_LT,
    WCC_ABS_RX,
    WCC_ABS_RY,
    WCC_ABS_RT,
    WCC_ABS_DPAD_X,
    WCC_ABS_DPAD_Y,
};

#define WCC_ABS_L_MIN    0
#define WCC_ABS_L_MAX    63
#define WCC_ABS_R_MIN    0
#define WCC_ABS_R_MAX    31
#define WCC_ABS_LT_MIN   0
#define WCC_ABS_LT_MAX   31
#define WCC_ABS_RT_MIN   0
#define WCC_ABS_RT_MAX   31
#define WCC_ABS_DPAD_MIN (-1)
#define WCC_ABS_DPAD_MAX 1

#define WCC_I2C_LENGTH 6

static inline struct wcc_status i2c_to_btn(uint8_t c[WCC_I2C_LENGTH])
{
    uint16_t btn;
    struct wcc_status stat;

    stat.abs[0] = (c[0] & 63);
    stat.abs[1] = (c[1] & 63);
    stat.abs[2] = (c[2] & 96) >> 2;
    stat.abs[2] |= (c[3] & 224) >> 5;
    stat.abs[3] = (c[0] & 192) >> 3;
    stat.abs[3] |= (c[1] & 192) >> 5;
    stat.abs[3] |= (c[2] & 128) >> 7;
    stat.abs[4] = (c[2] & 31);
    stat.abs[5] = (c[3] & 31);

    btn = ~((c[4] << 8) | c[5]);
    stat.btn = btn & ~WCC_DPAD_MASK;
    stat.abs[6] = !!(btn & WCC_DPAD_X_POS) - !!(btn & WCC_DPAD_X_NEG);
    stat.abs[7] = !!(btn & WCC_DPAD_Y_POS) - !!(btn & WCC_DPAD_Y_NEG);

    return stat;
}

static inline void btn_to_i2c(uint8_t c[WCC_I2C_LENGTH], struct wcc_status *stat)
{
    uint16_t btn;

    c[0] = stat->abs[0] & 63;
    c[1] = stat->abs[1] & 63;
    c[2] = (stat->abs[2] << 2) & 96;
    c[3] = (stat->abs[2] << 5) & 224;
    c[0] |= (stat->abs[3] << 3) & 192;
    c[1] |= (stat->abs[3] << 5) & 192;
    c[2] |= (stat->abs[3] << 7) & 128;
    c[2] |= stat->abs[4] & 31;
    c[3] |= stat->abs[5] & 31;

    btn = ~stat->btn;
    c[4] = btn >> 8;
    c[5] = btn & 255;
}

#endif
