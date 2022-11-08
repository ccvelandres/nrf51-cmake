#include <stdint.h>
#include <stddef.h>
#include "nrf.h"
#include "nrf_error.h"
#include "nrf_assert.h"
#include "ble_srv_common.h"
#include "ble_hids.h"

#include "hid.h"

static const uint8_t m_hid_report_map[] =
    {
        0x05, 0x01,       // Usage Page (Generic Desktop)
        0x09, 0x06,       // Usage (Keyboard)
        0xA1, 0x01,       // Collection (Application)
        0xA1, 0x00,       //   Collection (Physical)
        0x85, 0x01,       //     Report ID (1)
        0x05, 0x07,       //     Usage Page (Kbrd/Keypad)
        0x19, 0xE0,       //     Usage Minimum (0xE0)
        0x29, 0xE7,       //     Usage Maximum (0xE7)
        0x15, 0x00,       //     Logical Minimum (0)
        0x25, 0x01,       //     Logical Maximum (1)
        0x95, 0x08,       //     Report Count (8)
        0x75, 0x01,       //     Report Size (1)
        0x81, 0x02,       //     Input (Data,Var,Abs,No Wrap,Linear,Preferred State,No Null Position)
        0x95, 0x01,       //     Report Count (1)
        0x75, 0x08,       //     Report Size (8)
        0x81, 0x01,       //     Input (Const,Array,Abs,No Wrap,Linear,Preferred State,No Null Position)
        0x05, 0x07,       //     Usage Page (Kbrd/Keypad)
        0x19, 0x00,       //     Usage Minimum (0x00)
        0x29, 0x81,       //     Usage Maximum (0x81)
        0x15, 0x00,       //     Logical Minimum (0)
        0x26, 0x81, 0x00, //     Logical Maximum (129)
        0x95, 0x06,       //     Report Count (6)
        0x75, 0x08,       //     Report Size (8)
        0x81, 0x00,       //     Input (Data,Array,Abs,No Wrap,Linear,Preferred State,No Null Position)
        0xC0,             //   End Collection
        0xC0,             // End Collection
};

const ble_hids_inp_rep_init_t m_hid_input_report_array[HID_INPUT_REPORT_ID_MAX] =
    {
        [HID_INPUT_REPORT_ID_0] = {.max_len = HID_INPUT_REPORT_ID_MAX,
                                   .rep_ref =
                                       {
                                           .report_id = HID_INPUT_REPORT_ID_0,
                                           .report_type = BLE_HIDS_REP_TYPE_INPUT},
                                   .security_mode =
                                       {
                                           .cccd_write_perm = {1, 2}, // Security Mode 1 Level 2: Encrypted link required, MITM protection not necessary.
                                           .read_perm = {1, 2},       // Security Mode 1 Level 2: Encrypted link required, MITM protection not necessary.
                                           .write_perm = {1, 2}       // Security Mode 1 Level 2: Encrypted link required, MITM protection not necessary.
                                       }}};

const ble_hids_outp_rep_init_t m_hid_output_report_array[HID_OUTPUT_REPORT_ID_MAX] =
    {
        [HID_OUTPUT_REPORT_ID_0] = {.max_len = HID_OUTPUT_REPORT_ID_MAX,
                                    .rep_ref =
                                        {
                                            .report_id = HID_OUTPUT_REPORT_ID_0,
                                            .report_type = BLE_HIDS_REP_TYPE_OUTPUT},
                                    .security_mode =
                                        {
                                            .read_perm = {1, 2}, // Security Mode 1 Level 2: Encrypted link required, MITM protection not necessary.
                                            .write_perm = {1, 2} // Security Mode 1 Level 2: Encrypted link required, MITM protection not necessary.
                                        }}};

#define BASE_USB_HID_SPEC_VERSION 0x0101

static ble_hids_t m_hids; /**< Structure used to identify the HID service. */
static bool m_in_boot_mode;

/** HID event handlers */
static void on_hids_evt(ble_hids_t *p_hids, ble_hids_evt_t *p_evt);
static void on_hids_err(uint32_t nrf_error);


void hids_on_ble_evt(ble_evt_t *p_ble_evt)
{
    ble_hids_on_ble_evt(&m_hids, p_ble_evt);
}

void hids_init(void)
{
    uint32_t err_code;

    // Initialize HID Service
    uint8_t hid_info_flags = HID_INFO_FLAG_REMOTE_WAKE_MSK | HID_INFO_FLAG_NORMALLY_CONNECTABLE_MSK;

    ble_hids_init_t hids_init_obj =
        {
            .evt_handler = on_hids_evt,
            .error_handler = on_hids_err,
            .is_kb = true,
            .is_mouse = false,
            .inp_rep_count = sizeof(m_hid_input_report_array) / sizeof(ble_hids_inp_rep_init_t),
            .p_inp_rep_array = (ble_hids_inp_rep_init_t *)m_hid_input_report_array,
            .outp_rep_count = sizeof(m_hid_output_report_array) / sizeof(m_hid_output_report_array),
            .p_outp_rep_array = (ble_hids_outp_rep_init_t *)m_hid_output_report_array,
            .feature_rep_count = 0,
            .p_feature_rep_array = NULL,
            .rep_map =
                {
                    .data_len = sizeof(m_hid_report_map),
                    .p_data = (uint8_t *)m_hid_report_map,
                    .security_mode =
                        {
                            .read_perm = {1, 2}, // Security Mode 1 Level 2: Encrypted link required, MITM protection not necessary.
                            .write_perm = {0, 0} // Security Mode 0 Level 0: No access permissions
                        }},
            .hid_information =
                {
                    .b_country_code = 0,
                    .bcd_hid = BASE_USB_HID_SPEC_VERSION,
                    .flags = hid_info_flags,
                    .security_mode =
                        {
                            .read_perm = {1, 2}, // Security Mode 1 Level 2: Encrypted link required, MITM protection not necessary.
                            .write_perm = {0, 0} // Security Mode 0 Level 0: No access permissions
                        }},
            .included_services_count = 0,
            .p_included_services_array = NULL,
            .security_mode_protocol =
                {
                    .read_perm = {1, 2}, // Security Mode 1 Level 2: Encrypted link required, MITM protection not necessary.
                    .write_perm = {1, 2} // Security Mode 1 Level 2: Encrypted link required, MITM protection not necessary.
                },
            .security_mode_ctrl_point =
                {
                    .read_perm = {0, 0}, // Security Mode 0 Level 0: No access permissions
                    .write_perm = {1, 2} // Security Mode 1 Level 2: Encrypted link required, MITM protection not necessary.
                },
            .security_mode_boot_kb_inp_rep =
                {
                    .cccd_write_perm = {1, 2}, // Security Mode 1 Level 2: Encrypted link required, MITM protection not necessary.
                    .read_perm = {1, 2},       // Security Mode 1 Level 2: Encrypted link required, MITM protection not necessary.
                    .write_perm = {0, 0}       // Security Mode 0 Level 0: No access permissions
                },
            .security_mode_boot_kb_outp_rep =
                {
                    .read_perm = {1, 2}, // Security Mode 1 Level 2: Encrypted link required, MITM protection not necessary.
                    .write_perm = {0, 0} // Security Mode 0 Level 0: No access permissions
                },
        };

    err_code = ble_hids_init(&m_hids, &hids_init_obj);
    APP_ERROR_CHECK(err_code);
}

/**@brief Function for handling HID events.
 *
 * @details This function will be called for all HID events which are passed to the application.
 *
 * @param[in]   p_hids  HID service structure.
 * @param[in]   p_evt   Event received from the HID service.
 */
static void on_hids_evt(ble_hids_t *p_hids, ble_hids_evt_t *p_evt)
{
    switch (p_evt->evt_type)
    {
    case BLE_HIDS_EVT_BOOT_MODE_ENTERED:
        m_in_boot_mode = true;
        break;

    case BLE_HIDS_EVT_REPORT_MODE_ENTERED:
        m_in_boot_mode = false;
        break;

    case BLE_HIDS_EVT_REP_CHAR_WRITE:
        // on_hid_rep_char_write(p_evt);
        break;

    case BLE_HIDS_EVT_NOTIF_ENABLED:
        break;

    default:
        // No implementation needed.
        break;
    }
}

/**@brief Function for handling Service errors.
 *
 * @details A pointer to this function will be passed to each service which may need to inform the
 *          application about an error.
 *
 * @param[in]   nrf_error   Error code containing information about what went wrong.
 */
static void on_hids_err(uint32_t nrf_error)
{
    APP_ERROR_HANDLER(nrf_error);
}


#define INPUT_REPORT_KEYS_MAX_LEN 8 /**< Maximum length of the Input Report characteristic. */


/**@brief   Function for transmitting a key scan Press & Release Notification.
 *
 * @warning This handler is an example only. You need to analyze how you wish to send the key
 *          release.
 *
 * @param[in]  p_instance     Identifies the service for which Key Notifications are requested.
 * @param[in]  p_key_pattern  Pointer to key pattern.
 * @param[in]  pattern_len    Length of key pattern. 0 < pattern_len < 7.
 * @param[in]  pattern_offset Offset applied to Key Pattern for transmission.
 * @param[out] actual_len     Provides actual length of Key Pattern transmitted, making buffering of
 *                            rest possible if needed.
 * @return     NRF_SUCCESS on success, BLE_ERROR_NO_TX_PACKETS in case transmission could not be
 *             completed due to lack of transmission buffer or other error codes indicating reason
 *             for failure.
 *
 * @note       In case of BLE_ERROR_NO_TX_PACKETS, remaining pattern that could not be transmitted
 *             can be enqueued \ref buffer_enqueue function.
 *             In case a pattern of 'cofFEe' is the p_key_pattern, with pattern_len as 6 and
 *             pattern_offset as 0, the notifications as observed on the peer side would be
 *             1>    'c', 'o', 'f', 'F', 'E', 'e'
 *             2>    -  , 'o', 'f', 'F', 'E', 'e'
 *             3>    -  ,   -, 'f', 'F', 'E', 'e'
 *             4>    -  ,   -,   -, 'F', 'E', 'e'
 *             5>    -  ,   -,   -,   -, 'E', 'e'
 *             6>    -  ,   -,   -,   -,   -, 'e'
 *             7>    -  ,   -,   -,   -,   -,  -
 *             Here, '-' refers to release, 'c' refers to the key character being transmitted.
 *             Therefore 7 notifications will be sent.
 *             In case an offset of 4 was provided, the pattern notifications sent will be from 5-7
 *             will be transmitted.
 */
// static uint32_t send_key_scan_press_release(ble_hids_t *p_hids,
//                                             uint8_t *p_key_pattern,
//                                             uint16_t pattern_len,
//                                             uint16_t pattern_offset,
//                                             uint16_t *p_actual_len)
// {
//     uint32_t err_code;
//     uint16_t offset;
//     uint16_t data_len;
//     uint8_t data[INPUT_REPORT_KEYS_MAX_LEN];

//     // HID Report Descriptor enumerates an array of size 6, the pattern hence shall not be any
//     // longer than this.
//     STATIC_ASSERT((INPUT_REPORT_KEYS_MAX_LEN - 2) == 6);

//     ASSERT(pattern_len <= (INPUT_REPORT_KEYS_MAX_LEN - 2));

//     offset = pattern_offset;
//     data_len = pattern_len;

//     do
//     {
//         // Reset the data buffer.
//         memset(data, 0, sizeof(data));

//         // Copy the scan code.
//         memcpy(data + SCAN_CODE_POS + offset, p_key_pattern + offset, data_len - offset);

//         if (bsp_button_is_pressed(SHIFT_BUTTON_ID))
//         {
//             data[MODIFIER_KEY_POS] |= SHIFT_KEY_CODE;
//         }

//         if (!m_in_boot_mode)
//         {
//             err_code = ble_hids_inp_rep_send(p_hids,
//                                              INPUT_REPORT_KEYS_INDEX,
//                                              INPUT_REPORT_KEYS_MAX_LEN,
//                                              data);
//         }
//         else
//         {
//             err_code = ble_hids_boot_kb_inp_rep_send(p_hids,
//                                                      INPUT_REPORT_KEYS_MAX_LEN,
//                                                      data);
//         }

//         if (err_code != NRF_SUCCESS)
//         {
//             break;
//         }

//         offset++;
//     } while (offset <= data_len);

//     *p_actual_len = offset;

//     return err_code;
// }

// /**@brief Function for sending sample key presses to the peer.
//  *
//  * @param[in]   key_pattern_len   Pattern length.
//  * @param[in]   p_key_pattern     Pattern to be sent.
//  */
// static void keys_send(uint8_t key_pattern_len, uint8_t *p_key_pattern)
// {
//     uint32_t err_code;
//     uint16_t actual_len;

//     err_code = send_key_scan_press_release(&m_hids,
//                                            p_key_pattern,
//                                            key_pattern_len,
//                                            0,
//                                            &actual_len);

//     if ((err_code != NRF_SUCCESS) &&
//         (err_code != NRF_ERROR_INVALID_STATE) &&
//         (err_code != BLE_ERROR_NO_TX_PACKETS) &&
//         (err_code != BLE_ERROR_GATTS_SYS_ATTR_MISSING))
//     {
//         APP_ERROR_HANDLER(err_code);
//     }
// }

// /**@brief Function for handling the HID Report Characteristic Write event.
//  *
//  * @param[in]   p_evt   HID service event.
//  */
// static void on_hid_rep_char_write(ble_hids_evt_t *p_evt)
// {
//     if (p_evt->params.char_write.char_id.rep_type == BLE_HIDS_REP_TYPE_OUTPUT)
//     {
//         uint32_t err_code;
//         uint8_t report_val;
//         uint8_t report_index = p_evt->params.char_write.char_id.rep_index;

//         if (report_index == OUTPUT_REPORT_INDEX)
//         {
//             // This code assumes that the outptu report is one byte long. Hence the following
//             // static assert is made.
//             STATIC_ASSERT(OUTPUT_REPORT_MAX_LEN == 1);

//             err_code = ble_hids_outp_rep_get(&m_hids,
//                                              report_index,
//                                              OUTPUT_REPORT_MAX_LEN,
//                                              0,
//                                              &report_val);
//             APP_ERROR_CHECK(err_code);

//             if (!m_caps_on && ((report_val & OUTPUT_REPORT_BIT_MASK_CAPS_LOCK) != 0))
//             {
//                 // Caps Lock is turned On.
//                 NRF_LOG_INFO("Caps Lock is turned On!\r\n");
//                 err_code = bsp_indication_set(BSP_INDICATE_ALERT_3);
//                 APP_ERROR_CHECK(err_code);

//                 keys_send(sizeof(m_caps_on_key_scan_str), m_caps_on_key_scan_str);
//                 m_caps_on = true;
//             }
//             else if (m_caps_on && ((report_val & OUTPUT_REPORT_BIT_MASK_CAPS_LOCK) == 0))
//             {
//                 // Caps Lock is turned Off .
//                 NRF_LOG_INFO("Caps Lock is turned Off!\r\n");
//                 err_code = bsp_indication_set(BSP_INDICATE_ALERT_OFF);
//                 APP_ERROR_CHECK(err_code);

//                 keys_send(sizeof(m_caps_off_key_scan_str), m_caps_off_key_scan_str);
//                 m_caps_on = false;
//             }
//             else
//             {
//                 // The report received is not supported by this application. Do nothing.
//             }
//         }
//     }
// }