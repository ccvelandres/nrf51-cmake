
#ifndef APP_HID_H
#define APP_HID_H

#include "ble_hids.h"

typedef enum
{
    HID_SCANCODE_NONE = 0,
    HID_SCANCODE_A = 4,
    HID_SCANCODE_B = 5,
    HID_SCANCODE_C = 6,
    HID_SCANCODE_D = 7,
    HID_SCANCODE_E = 8,
    HID_SCANCODE_F = 9,
    HID_SCANCODE_G = 10,
    HID_SCANCODE_H = 11,
    HID_SCANCODE_I = 12,
    HID_SCANCODE_J = 13,
    HID_SCANCODE_K = 14,
    HID_SCANCODE_L = 15,
    HID_SCANCODE_M = 16,
    HID_SCANCODE_N = 17,
    HID_SCANCODE_O = 18,
    HID_SCANCODE_P = 19,
    HID_SCANCODE_Q = 20,
    HID_SCANCODE_R = 21,
    HID_SCANCODE_S = 22,
    HID_SCANCODE_T = 23,
    HID_SCANCODE_U = 24,
    HID_SCANCODE_V = 25,
    HID_SCANCODE_W = 26,
    HID_SCANCODE_X = 27,
    HID_SCANCODE_Y = 28,
    HID_SCANCODE_Z = 29,
    HID_SCANCODE_1 = 30,
    HID_SCANCODE_2 = 31,
    HID_SCANCODE_3 = 32,
    HID_SCANCODE_4 = 33,
    HID_SCANCODE_5 = 34,
    HID_SCANCODE_6 = 35,
    HID_SCANCODE_7 = 36,
    HID_SCANCODE_8 = 37,
    HID_SCANCODE_9 = 38,
    HID_SCANCODE_0 = 39,
    HID_SCANCODE_RETURN = 40,
    HID_SCANCODE_ESCAPE = 41,
    HID_SCANCODE_BACKSPACE = 42,
    HID_SCANCODE_TAB = 43,
    HID_SCANCODE_SPACE = 44,
    HID_SCANCODE_MINUS = 45,
    HID_SCANCODE_EQUALS = 46,
    HID_SCANCODE_LEFTBRACKET = 47,
    HID_SCANCODE_RIGHTBRACKET = 48,
    HID_SCANCODE_BACKSLASH = 49,
    HID_SCANCODE_NONUSHASH = 50,
    HID_SCANCODE_SEMICOLON = 51,
    HID_SCANCODE_APOSTROPHE = 52,
    HID_SCANCODE_GRAVE = 53,
    HID_SCANCODE_COMMA = 54,
    HID_SCANCODE_PERIOD = 55,
    HID_SCANCODE_SLASH = 56,
    HID_SCANCODE_CAPSLOCK = 57,
    HID_SCANCODE_F1 = 58,
    HID_SCANCODE_F2 = 59,
    HID_SCANCODE_F3 = 60,
    HID_SCANCODE_F4 = 61,
    HID_SCANCODE_F5 = 62,
    HID_SCANCODE_F6 = 63,
    HID_SCANCODE_F7 = 64,
    HID_SCANCODE_F8 = 65,
    HID_SCANCODE_F9 = 66,
    HID_SCANCODE_F10 = 67,
    HID_SCANCODE_F11 = 68,
    HID_SCANCODE_F12 = 69,
    HID_SCANCODE_PRINTSCREEN = 70,
    HID_SCANCODE_SCROLLLOCK = 71,
    HID_SCANCODE_PAUSE = 72,
    HID_SCANCODE_INSERT = 73,
    HID_SCANCODE_HOME = 74,
    HID_SCANCODE_PAGEUP = 75,
    HID_SCANCODE_DELETE = 76,
    HID_SCANCODE_END = 77,
    HID_SCANCODE_PAGEDOWN = 78,
    HID_SCANCODE_RIGHT = 79,
    HID_SCANCODE_LEFT = 80,
    HID_SCANCODE_DOWN = 81,
    HID_SCANCODE_UP = 82,
    HID_SCANCODE_NUMLOCKCLEAR = 83,
    HID_SCANCODE_KP_DIVIDE = 84,
    HID_SCANCODE_KP_MULTIPLY = 85,
    HID_SCANCODE_KP_MINUS = 86,
    HID_SCANCODE_KP_PLUS = 87,
    HID_SCANCODE_KP_ENTER = 88,
    HID_SCANCODE_KP_1 = 89,
    HID_SCANCODE_KP_2 = 90,
    HID_SCANCODE_KP_3 = 91,
    HID_SCANCODE_KP_4 = 92,
    HID_SCANCODE_KP_5 = 93,
    HID_SCANCODE_KP_6 = 94,
    HID_SCANCODE_KP_7 = 95,
    HID_SCANCODE_KP_8 = 96,
    HID_SCANCODE_KP_9 = 97,
    HID_SCANCODE_KP_0 = 98,
    HID_SCANCODE_KP_PERIOD = 99,
    HID_SCANCODE_NONUSBACKSLASH = 100,
    HID_SCANCODE_APPLICATION = 101,
    HID_SCANCODE_POWER = 102,
    HID_SCANCODE_KP_EQUALS = 103,
    HID_SCANCODE_F13 = 104,
    HID_SCANCODE_F14 = 105,
    HID_SCANCODE_F15 = 106,
    HID_SCANCODE_F16 = 107,
    HID_SCANCODE_F17 = 108,
    HID_SCANCODE_F18 = 109,
    HID_SCANCODE_F19 = 110,
    HID_SCANCODE_F20 = 111,
    HID_SCANCODE_F21 = 112,
    HID_SCANCODE_F22 = 113,
    HID_SCANCODE_F23 = 114,
    HID_SCANCODE_F24 = 115,
    HID_SCANCODE_EXECUTE = 116,
    HID_SCANCODE_HELP = 117,
    HID_SCANCODE_MENU = 118,
    HID_SCANCODE_SELECT = 119,
    HID_SCANCODE_STOP = 120,
    HID_SCANCODE_AGAIN = 121,
    HID_SCANCODE_UNDO = 122,
    HID_SCANCODE_CUT = 123,
    HID_SCANCODE_COPY = 124,
    HID_SCANCODE_PASTE = 125,
    HID_SCANCODE_FIND = 126,
    HID_SCANCODE_MUTE = 127,
    HID_SCANCODE_VOLUMEUP = 128,
    HID_SCANCODE_VOLUMEDOWN = 129,
} eHidScanCode;

typedef enum
{
    HID_INPUT_REPORT_ID_0,
    HID_INPUT_REPORT_ID_MAX
} eHidInputReport;

typedef enum
{
    HID_OUTPUT_REPORT_ID_0,
    HID_OUTPUT_REPORT_ID_MAX
} eHidOutputReport;

typedef struct
{
    struct
    {
        uint8_t left_ctrl : 1;
        uint8_t left_shift : 1;
        uint8_t left_alt : 1;
        uint8_t left_gui : 1;
        uint8_t right_ctrl : 1;
        uint8_t right_shift : 1;
        uint8_t right_alt : 1;
        uint8_t right_gui : 1;
    } key_modifiers;
    uint8_t : 8;
    eHidScanCode scanCode[6];
} tHidInputReportId_1;

typedef union
{
    tHidInputReportId_1 inputReport_1;
} tHidInputReport_t;

void hids_init(void);
void hids_on_ble_evt(ble_evt_t *p_ble_evt);

void hids_send_input_report(eHidInputReport id, const tHidInputReport_t* data);

#endif