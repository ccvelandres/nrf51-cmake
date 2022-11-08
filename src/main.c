/**
 * Copyright (c) 2012 - 2017, Nordic Semiconductor ASA
 *
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice, this
 *    list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form, except as embedded into a Nordic
 *    Semiconductor ASA integrated circuit in a product or a software update for
 *    such product, must reproduce the above copyright notice, this list of
 *    conditions and the following disclaimer in the documentation and/or other
 *    materials provided with the distribution.
 *
 * 3. Neither the name of Nordic Semiconductor ASA nor the names of its
 *    contributors may be used to endorse or promote products derived from this
 *    software without specific prior written permission.
 *
 * 4. This software, with or without modification, must only be used with a
 *    Nordic Semiconductor ASA integrated circuit.
 *
 * 5. Any software provided in binary form under this license must not be reverse
 *    engineered, decompiled, modified and/or disassembled.
 *
 * THIS SOFTWARE IS PROVIDED BY NORDIC SEMICONDUCTOR ASA "AS IS" AND ANY EXPRESS
 * OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 * OF MERCHANTABILITY, NONINFRINGEMENT, AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL NORDIC SEMICONDUCTOR ASA OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
 * GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
 * OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 */

/** @file
 *
 * @defgroup ble_sdk_app_hids_keyboard_main main.c
 * @{
 * @ingroup ble_sdk_app_hids_keyboard
 * @brief HID Keyboard Sample Application main file.
 *
 * This file contains is the source code for a sample application using the HID, Battery and Device
 * Information Services for implementing a simple keyboard functionality.
 * Pressing Button 0 will send text 'hello' to the connected peer. On receiving output report,
 * it toggles the state of LED 2 on the mother board based on whether or not Caps Lock is on.
 * This application uses the @ref app_scheduler.
 *
 * Also it would accept pairing requests from any peer device.
 */

#include <stdint.h>
#include <string.h>
#include "nordic_common.h"
#include "nrf.h"
#include "nrf_assert.h"
#include "app_error.h"
#include "nrf_gpio.h"
#include "ble.h"
#include "ble_hci.h"
#include "ble_srv_common.h"
#include "ble_advertising.h"
#include "ble_advdata.h"
#include "ble_hids.h"
#include "ble_dis.h"
#include "ble_conn_params.h"
#include "bsp.h"
#include "app_scheduler.h"
#include "softdevice_handler_appsh.h"
#include "app_timer_appsh.h"
#include "peer_manager.h"
#include "app_button.h"
#include "fds.h"
#include "fstorage.h"
#include "ble_conn_state.h"

#include "hid.h"

#define NRF_LOG_MODULE_NAME "APP"
#include "nrf_log.h"
#include "nrf_log_ctrl.h"

#if BUTTONS_NUMBER < 2
#error "Not enough resources on board"
#endif

#if (NRF_SD_BLE_API_VERSION == 3)
#define NRF_BLE_MAX_MTU_SIZE GATT_MTU_SIZE_DEFAULT /**< MTU size used in the softdevice enabling and to reply to a BLE_GATTS_EVT_EXCHANGE_MTU_REQUEST event. */
#endif

#define CENTRAL_LINK_COUNT 0    /**< Number of central links used by the application. When changing this number remember to adjust the RAM settings*/
#define PERIPHERAL_LINK_COUNT 1 /**< Number of peripheral links used by the application. When changing this number remember to adjust the RAM settings*/

#define UART_TX_BUF_SIZE 256 /**< UART TX buffer size. */
#define UART_RX_BUF_SIZE 1   /**< UART RX buffer size. */

#define KEY_PRESS_BUTTON_ID 0 /**< Button used as Keyboard key press. */
#define SHIFT_BUTTON_ID 1     /**< Button used as 'SHIFT' Key. */

#define DEVICE_NAME "Nordic_Keyboard"           /**< Name of device. Will be included in the advertising data. */
#define MANUFACTURER_NAME "NordicSemiconductor" /**< Manufacturer. Will be passed to Device Information Service. */

#define APP_TIMER_PRESCALER 0     /**< Value of the RTC1 PRESCALER register. */
#define APP_TIMER_OP_QUEUE_SIZE 4 /**< Size of timer operation queues. */

#define PNP_ID_VENDOR_ID_SOURCE 0x02  /**< Vendor ID Source. */
#define PNP_ID_VENDOR_ID 0x1915       /**< Vendor ID. */
#define PNP_ID_PRODUCT_ID 0xEEEE      /**< Product ID. */
#define PNP_ID_PRODUCT_VERSION 0x0001 /**< Product Version. */

#define APP_ADV_FAST_INTERVAL 0x0028 /**< Fast advertising interval (in units of 0.625 ms. This value corresponds to 25 ms.). */
#define APP_ADV_SLOW_INTERVAL 0x0C80 /**< Slow advertising interval (in units of 0.625 ms. This value corrsponds to 2 seconds). */
#define APP_ADV_FAST_TIMEOUT 30      /**< The duration of the fast advertising period (in seconds). */
#define APP_ADV_SLOW_TIMEOUT 180     /**< The duration of the slow advertising period (in seconds). */

/*lint -emacro(524, MIN_CONN_INTERVAL) // Loss of precision */
#define MIN_CONN_INTERVAL MSEC_TO_UNITS(7.5, UNIT_1_25_MS) /**< Minimum connection interval (7.5 ms) */
#define MAX_CONN_INTERVAL MSEC_TO_UNITS(30, UNIT_1_25_MS)  /**< Maximum connection interval (30 ms). */
#define SLAVE_LATENCY 6                                    /**< Slave latency. */
#define CONN_SUP_TIMEOUT MSEC_TO_UNITS(430, UNIT_10_MS)    /**< Connection supervisory timeout (430 ms). */

#define FIRST_CONN_PARAMS_UPDATE_DELAY APP_TIMER_TICKS(5000, APP_TIMER_PRESCALER) /**< Time from initiating event (connect or start of notification) to first time sd_ble_gap_conn_param_update is called (5 seconds). */
#define NEXT_CONN_PARAMS_UPDATE_DELAY APP_TIMER_TICKS(30000, APP_TIMER_PRESCALER) /**< Time between each call to sd_ble_gap_conn_param_update after the first call (30 seconds). */
#define MAX_CONN_PARAMS_UPDATE_COUNT 3                                            /**< Number of attempts before giving up the connection parameter negotiation. */

#define APP_FEATURE_NOT_SUPPORTED BLE_GATT_STATUS_ATTERR_APP_BEGIN + 2 /**< Reply when unsupported features are requested. */

#define DEAD_BEEF 0xDEADBEEF /**< Value used as error code on stack dump, can be used to identify stack location on stack unwind. */

#define SCHED_MAX_EVENT_DATA_SIZE MAX(APP_TIMER_SCHED_EVT_SIZE, \
                                      BLE_STACK_HANDLER_SCHED_EVT_SIZE) /**< Maximum size of scheduler events. */
#ifdef SVCALL_AS_NORMAL_FUNCTION
#define SCHED_QUEUE_SIZE 20 /**< Maximum number of events in the scheduler queue. More is needed in case of Serialization. */
#else
#define SCHED_QUEUE_SIZE 8 /**< Maximum number of events in the scheduler queue. */
#endif

typedef enum
{
    BLE_NO_ADV,             /**< No advertising running. */
    BLE_DIRECTED_ADV,       /**< Direct advertising to the latest central. */
    BLE_FAST_ADV_WHITELIST, /**< Advertising with whitelist. */
    BLE_FAST_ADV,           /**< Fast advertising running. */
    BLE_SLOW_ADV,           /**< Slow advertising running. */
    BLE_SLEEP,              /**< Go to system-off. */
} ble_advertising_mode_t;

static uint16_t m_conn_handle = BLE_CONN_HANDLE_INVALID; /**< Handle of the current connection. */

static pm_peer_id_t m_peer_id; /**< Device reference handle to the current bonded central. */
static bool m_caps_on = false; /**< Variable to indicate if Caps Lock is turned on. */

static pm_peer_id_t m_whitelist_peers[BLE_GAP_WHITELIST_ADDR_MAX_COUNT]; /**< List of peers currently in the whitelist. */
static uint32_t m_whitelist_peer_cnt;                                    /**< Number of peers currently in the whitelist. */
static bool m_is_wl_changed;                                             /**< Indicates if the whitelist has been changed since last time it has been updated in the Peer Manager. */

static ble_uuid_t m_adv_uuids[] = {{BLE_UUID_HUMAN_INTERFACE_DEVICE_SERVICE, BLE_UUID_TYPE_BLE}};

/**brief Callback function for asserts in the SoftDevice.
 *
 * @details This function will be called in case of an assert in the SoftDevice.
 *
 * @warning This handler is an example only and does not fit a final product. You need to analyze
 *          how your product is supposed to react in case of Assert.
 * @warning On assert from the SoftDevice, the system can only recover on reset.
 *
 * @param[in]   line_num   Line number of the failing ASSERT call.
 * @param[in]   file_name  File name of the failing ASSERT call.
 */
void assert_nrf_callback(uint16_t line_num, const uint8_t *p_file_name)
{
    app_error_handler(DEAD_BEEF, line_num, p_file_name);
}

/**@brief Function for handling advertising errors.
 *
 * @param[in] nrf_error  Error code containing information about what went wrong.
 */
static void ble_advertising_error_handler(uint32_t nrf_error)
{
    APP_ERROR_HANDLER(nrf_error);
}

/**@brief Function for putting the chip into sleep mode.
 *
 * @note This function will not return.
 */
static void sleep_mode_enter(void)
{
    uint32_t err_code = bsp_indication_set(BSP_INDICATE_IDLE);

    APP_ERROR_CHECK(err_code);

    // Prepare wakeup buttons.

    // Go to system-off mode (this function will not return; wakeup will cause a reset).
    err_code = sd_power_system_off();
    APP_ERROR_CHECK(err_code);
}

/**@brief Function for the Power manager.
 */
static void power_manage(void)
{
    uint32_t err_code = sd_app_evt_wait();

    APP_ERROR_CHECK(err_code);
}

/**@brief Fetch the list of peer manager peer IDs.
 *
 * @param[inout] p_peers   The buffer where to store the list of peer IDs.
 * @param[inout] p_size    In: The size of the @p p_peers buffer.
 *                         Out: The number of peers copied in the buffer.
 */
static void peer_list_get(pm_peer_id_t *p_peers, uint32_t *p_size)
{
    pm_peer_id_t peer_id;
    uint32_t peers_to_copy;

    peers_to_copy = (*p_size < BLE_GAP_WHITELIST_ADDR_MAX_COUNT) ? *p_size : BLE_GAP_WHITELIST_ADDR_MAX_COUNT;

    peer_id = pm_next_peer_id_get(PM_PEER_ID_INVALID);
    *p_size = 0;

    while ((peer_id != PM_PEER_ID_INVALID) && (peers_to_copy--))
    {
        p_peers[(*p_size)++] = peer_id;
        peer_id = pm_next_peer_id_get(peer_id);
    }
}

/**@brief Function for starting advertising.
 */
static void advertising_start(void)
{
    ret_code_t ret;

    memset(m_whitelist_peers, PM_PEER_ID_INVALID, sizeof(m_whitelist_peers));
    m_whitelist_peer_cnt = (sizeof(m_whitelist_peers) / sizeof(pm_peer_id_t));

    peer_list_get(m_whitelist_peers, &m_whitelist_peer_cnt);

    ret = pm_whitelist_set(m_whitelist_peers, m_whitelist_peer_cnt);
    APP_ERROR_CHECK(ret);

    // Setup the device identies list.
    // Some SoftDevices do not support this feature.
    ret = pm_device_identities_list_set(m_whitelist_peers, m_whitelist_peer_cnt);
    if (ret != NRF_ERROR_NOT_SUPPORTED)
    {
        APP_ERROR_CHECK(ret);
    }

    m_is_wl_changed = false;

    ret = ble_advertising_start(BLE_ADV_MODE_FAST);
    APP_ERROR_CHECK(ret);
}

/**@brief Function for handling advertising events.
 *
 * @details This function will be called for advertising events which are passed to the application.
 *
 * @param[in] ble_adv_evt  Advertising event.
 */
static void on_adv_evt(ble_adv_evt_t ble_adv_evt)
{
    uint32_t err_code;

    switch (ble_adv_evt)
    {
    case BLE_ADV_EVT_DIRECTED:
        NRF_LOG_INFO("BLE_ADV_EVT_DIRECTED\r\n");
        err_code = bsp_indication_set(BSP_INDICATE_ADVERTISING_DIRECTED);
        APP_ERROR_CHECK(err_code);
        break; // BLE_ADV_EVT_DIRECTED

    case BLE_ADV_EVT_FAST:
        NRF_LOG_INFO("BLE_ADV_EVT_FAST\r\n");
        err_code = bsp_indication_set(BSP_INDICATE_ADVERTISING);
        APP_ERROR_CHECK(err_code);
        break; // BLE_ADV_EVT_FAST

    case BLE_ADV_EVT_SLOW:
        NRF_LOG_INFO("BLE_ADV_EVT_SLOW\r\n");
        err_code = bsp_indication_set(BSP_INDICATE_ADVERTISING_SLOW);
        APP_ERROR_CHECK(err_code);
        break; // BLE_ADV_EVT_SLOW

    case BLE_ADV_EVT_FAST_WHITELIST:
        NRF_LOG_INFO("BLE_ADV_EVT_FAST_WHITELIST\r\n");
        err_code = bsp_indication_set(BSP_INDICATE_ADVERTISING_WHITELIST);
        APP_ERROR_CHECK(err_code);
        break; // BLE_ADV_EVT_FAST_WHITELIST

    case BLE_ADV_EVT_SLOW_WHITELIST:
        NRF_LOG_INFO("BLE_ADV_EVT_SLOW_WHITELIST\r\n");
        err_code = bsp_indication_set(BSP_INDICATE_ADVERTISING_WHITELIST);
        APP_ERROR_CHECK(err_code);
        break; // BLE_ADV_EVT_SLOW_WHITELIST

    case BLE_ADV_EVT_IDLE:
        sleep_mode_enter();
        break; // BLE_ADV_EVT_IDLE

    case BLE_ADV_EVT_WHITELIST_REQUEST:
    {
        ble_gap_addr_t whitelist_addrs[BLE_GAP_WHITELIST_ADDR_MAX_COUNT];
        ble_gap_irk_t whitelist_irks[BLE_GAP_WHITELIST_ADDR_MAX_COUNT];
        uint32_t addr_cnt = BLE_GAP_WHITELIST_ADDR_MAX_COUNT;
        uint32_t irk_cnt = BLE_GAP_WHITELIST_ADDR_MAX_COUNT;

        err_code = pm_whitelist_get(whitelist_addrs, &addr_cnt,
                                    whitelist_irks, &irk_cnt);
        APP_ERROR_CHECK(err_code);
        NRF_LOG_DEBUG("pm_whitelist_get returns %d addr in whitelist and %d irk whitelist\r\n",
                      addr_cnt,
                      irk_cnt);

        // Apply the whitelist.
        err_code = ble_advertising_whitelist_reply(whitelist_addrs, addr_cnt,
                                                   whitelist_irks, irk_cnt);
        APP_ERROR_CHECK(err_code);
    }
    break; // BLE_ADV_EVT_WHITELIST_REQUEST

    case BLE_ADV_EVT_PEER_ADDR_REQUEST:
    {
        pm_peer_data_bonding_t peer_bonding_data;

        // Only Give peer address if we have a handle to the bonded peer.
        if (m_peer_id != PM_PEER_ID_INVALID)
        {
            err_code = pm_peer_data_bonding_load(m_peer_id, &peer_bonding_data);
            if (err_code != NRF_ERROR_NOT_FOUND)
            {
                APP_ERROR_CHECK(err_code);

                ble_gap_addr_t *p_peer_addr = &(peer_bonding_data.peer_ble_id.id_addr_info);
                err_code = ble_advertising_peer_addr_reply(p_peer_addr);
                APP_ERROR_CHECK(err_code);
            }
        }
    }
    break; // BLE_ADV_EVT_PEER_ADDR_REQUEST

    default:
        break;
    }
}

/**@brief Function for handling the Application's BLE Stack events.
 *
 * @param[in]   p_ble_evt   Bluetooth stack event.
 */
static void on_ble_evt(ble_evt_t *p_ble_evt)
{
    uint32_t err_code;

    switch (p_ble_evt->header.evt_id)
    {
    case BLE_GAP_EVT_CONNECTED:
        NRF_LOG_INFO("Connected\r\n");
        err_code = bsp_indication_set(BSP_INDICATE_CONNECTED);
        APP_ERROR_CHECK(err_code);

        m_conn_handle = p_ble_evt->evt.gap_evt.conn_handle;
        break; // BLE_GAP_EVT_CONNECTED

    case BLE_EVT_TX_COMPLETE:
        break; // BLE_EVT_TX_COMPLETE

    case BLE_GAP_EVT_DISCONNECTED:
        NRF_LOG_INFO("Disconnected\r\n");

        m_conn_handle = BLE_CONN_HANDLE_INVALID;

        // Reset m_caps_on variable. Upon reconnect, the HID host will re-send the Output
        // report containing the Caps lock state.
        m_caps_on = false;
        // disabling alert 3. signal - used for capslock ON
        err_code = bsp_indication_set(BSP_INDICATE_ALERT_OFF);
        APP_ERROR_CHECK(err_code);

        if (m_is_wl_changed)
        {
            // The whitelist has been modified, update it in the Peer Manager.
            err_code = pm_whitelist_set(m_whitelist_peers, m_whitelist_peer_cnt);
            APP_ERROR_CHECK(err_code);

            err_code = pm_device_identities_list_set(m_whitelist_peers, m_whitelist_peer_cnt);
            if (err_code != NRF_ERROR_NOT_SUPPORTED)
            {
                APP_ERROR_CHECK(err_code);
            }

            m_is_wl_changed = false;
        }
        break; // BLE_GAP_EVT_DISCONNECTED

    case BLE_GATTC_EVT_TIMEOUT:
        // Disconnect on GATT Client timeout event.
        NRF_LOG_DEBUG("GATT Client Timeout.\r\n");
        err_code = sd_ble_gap_disconnect(p_ble_evt->evt.gattc_evt.conn_handle,
                                         BLE_HCI_REMOTE_USER_TERMINATED_CONNECTION);
        APP_ERROR_CHECK(err_code);
        break; // BLE_GATTC_EVT_TIMEOUT

    case BLE_GATTS_EVT_TIMEOUT:
        // Disconnect on GATT Server timeout event.
        NRF_LOG_DEBUG("GATT Server Timeout.\r\n");
        err_code = sd_ble_gap_disconnect(p_ble_evt->evt.gatts_evt.conn_handle,
                                         BLE_HCI_REMOTE_USER_TERMINATED_CONNECTION);
        APP_ERROR_CHECK(err_code);
        break; // BLE_GATTS_EVT_TIMEOUT

    case BLE_EVT_USER_MEM_REQUEST:
        err_code = sd_ble_user_mem_reply(m_conn_handle, NULL);
        APP_ERROR_CHECK(err_code);
        break; // BLE_EVT_USER_MEM_REQUEST

    case BLE_GATTS_EVT_RW_AUTHORIZE_REQUEST:
    {
        ble_gatts_evt_rw_authorize_request_t req;
        ble_gatts_rw_authorize_reply_params_t auth_reply;

        req = p_ble_evt->evt.gatts_evt.params.authorize_request;

        if (req.type != BLE_GATTS_AUTHORIZE_TYPE_INVALID)
        {
            if ((req.request.write.op == BLE_GATTS_OP_PREP_WRITE_REQ) ||
                (req.request.write.op == BLE_GATTS_OP_EXEC_WRITE_REQ_NOW) ||
                (req.request.write.op == BLE_GATTS_OP_EXEC_WRITE_REQ_CANCEL))
            {
                if (req.type == BLE_GATTS_AUTHORIZE_TYPE_WRITE)
                {
                    auth_reply.type = BLE_GATTS_AUTHORIZE_TYPE_WRITE;
                }
                else
                {
                    auth_reply.type = BLE_GATTS_AUTHORIZE_TYPE_READ;
                }
                auth_reply.params.write.gatt_status = APP_FEATURE_NOT_SUPPORTED;
                err_code = sd_ble_gatts_rw_authorize_reply(p_ble_evt->evt.gatts_evt.conn_handle,
                                                           &auth_reply);
                APP_ERROR_CHECK(err_code);
            }
        }
    }
    break; // BLE_GATTS_EVT_RW_AUTHORIZE_REQUEST

#if (NRF_SD_BLE_API_VERSION == 3)
    case BLE_GATTS_EVT_EXCHANGE_MTU_REQUEST:
        err_code = sd_ble_gatts_exchange_mtu_reply(p_ble_evt->evt.gatts_evt.conn_handle,
                                                   NRF_BLE_MAX_MTU_SIZE);
        APP_ERROR_CHECK(err_code);
        break; // BLE_GATTS_EVT_EXCHANGE_MTU_REQUEST
#endif

    default:
        // No implementation needed.
        break;
    }
}

/**@brief Function for handling events from the BSP module.
 *
 * @param[in]   event   Event generated by button press.
 */
static void bsp_event_handler(bsp_event_t event)
{
    uint32_t err_code;

    switch (event)
    {
    case BSP_EVENT_SLEEP:
        sleep_mode_enter();
        break;

    case BSP_EVENT_DISCONNECT:
        err_code = sd_ble_gap_disconnect(m_conn_handle,
                                         BLE_HCI_REMOTE_USER_TERMINATED_CONNECTION);
        if (err_code != NRF_ERROR_INVALID_STATE)
        {
            APP_ERROR_CHECK(err_code);
        }
        break;

    case BSP_EVENT_WHITELIST_OFF:
        if (m_conn_handle == BLE_CONN_HANDLE_INVALID)
        {
            err_code = ble_advertising_restart_without_whitelist();
            if (err_code != NRF_ERROR_INVALID_STATE)
            {
                APP_ERROR_CHECK(err_code);
            }
        }
        break;

    case BSP_EVENT_KEY_0:
        if (m_conn_handle != BLE_CONN_HANDLE_INVALID)
        {
            /** @todo: handle sending macros here */
        }
        break;

    default:
        break;
    }
}

/**@brief Function for handling Peer Manager events.
 *
 * @param[in] p_evt  Peer Manager event.
 */
static void pm_evt_handler(pm_evt_t const *p_evt)
{
    ret_code_t err_code;

    switch (p_evt->evt_id)
    {
    case PM_EVT_BONDED_PEER_CONNECTED:
    {
        NRF_LOG_INFO("Connected to a previously bonded device.\r\n");
    }
    break;

    case PM_EVT_CONN_SEC_SUCCEEDED:
    {
        NRF_LOG_INFO("Connection secured. Role: %d. conn_handle: %d, Procedure: %d\r\n",
                     ble_conn_state_role(p_evt->conn_handle),
                     p_evt->conn_handle,
                     p_evt->params.conn_sec_succeeded.procedure);

        m_peer_id = p_evt->peer_id;

        // Note: You should check on what kind of white list policy your application should use.
        if (p_evt->params.conn_sec_succeeded.procedure == PM_LINK_SECURED_PROCEDURE_BONDING)
        {
            NRF_LOG_INFO("New Bond, add the peer to the whitelist if possible\r\n");
            NRF_LOG_INFO("\tm_whitelist_peer_cnt %d, MAX_PEERS_WLIST %d\r\n",
                         m_whitelist_peer_cnt + 1,
                         BLE_GAP_WHITELIST_ADDR_MAX_COUNT);

            if (m_whitelist_peer_cnt < BLE_GAP_WHITELIST_ADDR_MAX_COUNT)
            {
                // Bonded to a new peer, add it to the whitelist.
                m_whitelist_peers[m_whitelist_peer_cnt++] = m_peer_id;
                m_is_wl_changed = true;
            }
        }
    }
    break;

    case PM_EVT_CONN_SEC_FAILED:
    {
        /* Often, when securing fails, it shouldn't be restarted, for security reasons.
         * Other times, it can be restarted directly.
         * Sometimes it can be restarted, but only after changing some Security Parameters.
         * Sometimes, it cannot be restarted until the link is disconnected and reconnected.
         * Sometimes it is impossible, to secure the link, or the peer device does not support it.
         * How to handle this error is highly application dependent. */
    }
    break;

    case PM_EVT_CONN_SEC_CONFIG_REQ:
    {
        // Reject pairing request from an already bonded peer.
        pm_conn_sec_config_t conn_sec_config = {.allow_repairing = false};
        pm_conn_sec_config_reply(p_evt->conn_handle, &conn_sec_config);
    }
    break;

    case PM_EVT_STORAGE_FULL:
    {
        // Run garbage collection on the flash.
        err_code = fds_gc();
        if (err_code == FDS_ERR_BUSY || err_code == FDS_ERR_NO_SPACE_IN_QUEUES)
        {
            // Retry.
        }
        else
        {
            APP_ERROR_CHECK(err_code);
        }
    }
    break;

    case PM_EVT_PEERS_DELETE_SUCCEEDED:
    {
        advertising_start();
    }
    break;

    case PM_EVT_LOCAL_DB_CACHE_APPLY_FAILED:
    {
        // The local database has likely changed, send service changed indications.
        pm_local_database_has_changed();
    }
    break;

    case PM_EVT_PEER_DATA_UPDATE_FAILED:
    {
        // Assert.
        APP_ERROR_CHECK(p_evt->params.peer_data_update_failed.error);
    }
    break;

    case PM_EVT_PEER_DELETE_FAILED:
    {
        // Assert.
        APP_ERROR_CHECK(p_evt->params.peer_delete_failed.error);
    }
    break;

    case PM_EVT_PEERS_DELETE_FAILED:
    {
        // Assert.
        APP_ERROR_CHECK(p_evt->params.peers_delete_failed_evt.error);
    }
    break;

    case PM_EVT_ERROR_UNEXPECTED:
    {
        // Assert.
        APP_ERROR_CHECK(p_evt->params.error_unexpected.error);
    }
    break;

    case PM_EVT_CONN_SEC_START:
    case PM_EVT_PEER_DATA_UPDATE_SUCCEEDED:
    case PM_EVT_PEER_DELETE_SUCCEEDED:
    case PM_EVT_LOCAL_DB_CACHE_APPLIED:
    case PM_EVT_SERVICE_CHANGED_IND_SENT:
    case PM_EVT_SERVICE_CHANGED_IND_CONFIRMED:
    default:
        break;
    }
}

/**@brief   Function for dispatching a BLE stack event to all modules with a BLE stack event handler.
 *
 * @details This function is called from the scheduler in the main loop after a BLE stack
 *          event has been received.
 *
 * @param[in]   p_ble_evt   Bluetooth stack event.
 */
static void ble_evt_dispatch(ble_evt_t *p_ble_evt)
{
    /** The Connection state module has to be fed BLE events in order to function correctly
     * Remember to call ble_conn_state_on_ble_evt before calling any ble_conns_state_* functions. */
    ble_conn_state_on_ble_evt(p_ble_evt);
    pm_on_ble_evt(p_ble_evt);
    on_ble_evt(p_ble_evt);
    ble_advertising_on_ble_evt(p_ble_evt);
    ble_conn_params_on_ble_evt(p_ble_evt);
    hids_on_ble_evt(p_ble_evt);
}

/**@brief   Function for dispatching a system event to interested modules.
 *
 * @details This function is called from the System event interrupt handler after a system
 *          event has been received.
 *
 * @param[in]   sys_evt   System stack event.
 */
static void sys_evt_dispatch(uint32_t sys_evt)
{
    // Dispatch the system event to the fstorage module, where it will be
    // dispatched to the Flash Data Storage (FDS) module.
    fs_sys_event_handler(sys_evt);

    // Dispatch to the Advertising module last, since it will check if there are any
    // pending flash operations in fstorage. Let fstorage process system events first,
    // so that it can report correctly to the Advertising module.
    ble_advertising_on_sys_evt(sys_evt);
}

/**@brief Function for the Timer initialization.
 *
 * @details Initializes the timer module.
 */
static void timers_init(void)
{
    // Initialize timer module, making it use the scheduler.
    APP_TIMER_APPSH_INIT(APP_TIMER_PRESCALER, APP_TIMER_OP_QUEUE_SIZE, true);
}

/**@brief Function for handling a Connection Parameters error.
 *
 * @param[in]   nrf_error   Error code containing information about what went wrong.
 */
static void conn_params_error_handler(uint32_t nrf_error)
{
    APP_ERROR_HANDLER(nrf_error);
}

/**@brief Function for initializing the Connection Parameters module.
 */
static void conn_params_init(void)
{
    uint32_t err_code;
    ble_conn_params_init_t cp_init;

    memset(&cp_init, 0, sizeof(cp_init));

    cp_init.p_conn_params = NULL;
    cp_init.first_conn_params_update_delay = FIRST_CONN_PARAMS_UPDATE_DELAY;
    cp_init.next_conn_params_update_delay = NEXT_CONN_PARAMS_UPDATE_DELAY;
    cp_init.max_conn_params_update_count = MAX_CONN_PARAMS_UPDATE_COUNT;
    cp_init.start_on_notify_cccd_handle = BLE_GATT_HANDLE_INVALID;
    cp_init.disconnect_on_fail = false;
    cp_init.evt_handler = NULL;
    cp_init.error_handler = conn_params_error_handler;

    err_code = ble_conn_params_init(&cp_init);
    APP_ERROR_CHECK(err_code);
}

/**@brief Function for starting timers.
 */
static void timers_start(void)
{
    (void)NULL;
}

/**@brief Function for the Event Scheduler initialization.
 */
static void scheduler_init(void)
{
    APP_SCHED_INIT(SCHED_MAX_EVENT_DATA_SIZE, SCHED_QUEUE_SIZE);
}

/**@brief Function for initializing buttons and leds.
 *
 * @param[out] p_erase_bonds  Will be true if the clear bonding button was pressed to wake the application up.
 */
static void app_bsp_init(bool *p_erase_bonds)
{
    uint32_t err_code = bsp_init(BSP_INIT_LED,
                                 APP_TIMER_TICKS(100, APP_TIMER_PRESCALER),
                                 bsp_event_handler);
    APP_ERROR_CHECK(err_code);

    /** @todo: detect button to erase bonds here */
}

/**@brief Function for initializing the BLE stack.
 *
 * @details Initializes the SoftDevice and the BLE event interrupt.
 */
static void ble_stack_init(void)
{
    uint32_t err_code;

    nrf_clock_lf_cfg_t clock_lf_cfg = NRF_CLOCK_LFCLKSRC;

    // Initialize the SoftDevice handler module.
    SOFTDEVICE_HANDLER_APPSH_INIT(&clock_lf_cfg, true);

    ble_enable_params_t ble_enable_params =
        {
            .common_enable_params =
                {
                    .vs_uuid_count = 0,
                    .p_conn_bw_counts = NULL},
            .gap_enable_params =
                {
                    .central_conn_count = CENTRAL_LINK_COUNT,
                    .periph_conn_count = PERIPHERAL_LINK_COUNT,
                    .central_sec_count = 0},
            .gatts_enable_params =
                {
                    .attr_tab_size = BLE_GATTS_ATTR_TAB_SIZE_DEFAULT,
                    .service_changed = 0}};

    // Check the ram settings against the used number of links
    CHECK_RAM_START_ADDR(CENTRAL_LINK_COUNT, PERIPHERAL_LINK_COUNT);

    // Enable BLE stack.
#if (NRF_SD_BLE_API_VERSION == 3)
    ble_enable_params.gatt_enable_params.att_mtu = NRF_BLE_MAX_MTU_SIZE;
#endif
    err_code = softdevice_enable(&ble_enable_params);
    APP_ERROR_CHECK(err_code);

    // Register with the SoftDevice handler module for BLE events.
    err_code = softdevice_ble_evt_handler_set(ble_evt_dispatch);
    APP_ERROR_CHECK(err_code);

    // Register with the SoftDevice handler module for BLE events.
    err_code = softdevice_sys_evt_handler_set(sys_evt_dispatch);
    APP_ERROR_CHECK(err_code);
}

/**@brief Function for the Peer Manager initialization.
 *
 * @param[in] erase_bonds  Indicates whether bonding information should be cleared from
 *                         persistent storage during initialization of the Peer Manager.
 */
static void peer_manager_init(bool erase_bonds)
{
    ret_code_t err_code;

    err_code = pm_init();
    APP_ERROR_CHECK(err_code);

    if (erase_bonds)
    {
        err_code = pm_peers_delete();
        APP_ERROR_CHECK(err_code);
    }

    // Security parameters to be used for all security procedures.
    ble_gap_sec_params_t sec_param =
        {
            .bond = 1,                       /**< Perform bonding. */
            .mitm = 0,                       /**< Man In The Middle protection not required. */
            .lesc = 0,                       /**< LE Secure Connections not enabled. */
            .keypress = 0,                   /**< Keypress notifications not enabled. */
            .io_caps = BLE_GAP_IO_CAPS_NONE, /**< No I/O capabilities. */
            .oob = 0,                        /**< Out Of Band data not available. */
            .min_key_size = 7,               /**< Minimum encryption key size. */
            .max_key_size = 16,              /**< Maximum encryption key size. */
            .kdist_own.enc = 1,
            .kdist_own.id = 1,
            .kdist_peer.enc = 1,
            .kdist_peer.id = 1};

    err_code = pm_sec_params_set(&sec_param);
    APP_ERROR_CHECK(err_code);

    err_code = pm_register(pm_evt_handler);
    APP_ERROR_CHECK(err_code);
}

/**@brief Function for the GAP initialization.
 *
 * @details This function sets up all the necessary GAP (Generic Access Profile) parameters of the
 *          device including the device name, appearance, and the preferred connection parameters.
 */
static void gap_params_init(void)
{
    uint32_t err_code;
    ble_gap_conn_sec_mode_t sec_mode;

    BLE_GAP_CONN_SEC_MODE_SET_OPEN(&sec_mode);

    err_code = sd_ble_gap_device_name_set(&sec_mode,
                                          (const uint8_t *)DEVICE_NAME,
                                          strlen(DEVICE_NAME));
    APP_ERROR_CHECK(err_code);

    err_code = sd_ble_gap_appearance_set(BLE_APPEARANCE_HID_KEYBOARD);
    APP_ERROR_CHECK(err_code);

    ble_gap_conn_params_t gap_conn_params =
        {
            .min_conn_interval = MIN_CONN_INTERVAL,
            .max_conn_interval = MAX_CONN_INTERVAL,
            .slave_latency = SLAVE_LATENCY,
            .conn_sup_timeout = CONN_SUP_TIMEOUT};

    err_code = sd_ble_gap_ppcp_set(&gap_conn_params);
    APP_ERROR_CHECK(err_code);
}

/**@brief Function for initializing the Advertising functionality.
 */
static void advertising_init(void)
{
    uint32_t err_code;
    uint8_t adv_flags = BLE_GAP_ADV_FLAGS_LE_ONLY_GENERAL_DISC_MODE;

    // Build and set advertising data
    ble_advdata_t advdata =
        {
            .name_type = BLE_ADVDATA_FULL_NAME,
            .include_appearance = true,
            .flags = adv_flags,
            .uuids_complete.uuid_cnt = sizeof(m_adv_uuids) / sizeof(m_adv_uuids[0]),
            .uuids_complete.p_uuids = m_adv_uuids};

    ble_adv_modes_config_t options =
        {
            .ble_adv_whitelist_enabled = true,
            .ble_adv_directed_enabled = true,
            .ble_adv_directed_slow_enabled = false,
            .ble_adv_directed_slow_interval = 0,
            .ble_adv_directed_slow_timeout = 0,
            .ble_adv_fast_enabled = true,
            .ble_adv_fast_interval = APP_ADV_FAST_INTERVAL,
            .ble_adv_fast_timeout = APP_ADV_FAST_TIMEOUT,
            .ble_adv_slow_enabled = true,
            .ble_adv_slow_interval = APP_ADV_SLOW_INTERVAL,
            .ble_adv_slow_timeout = APP_ADV_SLOW_TIMEOUT};

    err_code = ble_advertising_init(&advdata,
                                    NULL,
                                    &options,
                                    on_adv_evt,
                                    ble_advertising_error_handler);
    APP_ERROR_CHECK(err_code);
}

/**@brief Function for initializing Device Information Service.
 */
static void dis_init(void)
{
    uint32_t err_code;

    ble_dis_pnp_id_t pnp_id =
        {
            .vendor_id_source = PNP_ID_VENDOR_ID_SOURCE,
            .vendor_id = PNP_ID_VENDOR_ID,
            .product_id = PNP_ID_PRODUCT_ID,
            .product_version = PNP_ID_PRODUCT_VERSION};

    ble_dis_init_t dis_init_obj =
        {
            .p_pnp_id = &pnp_id};

    ble_srv_ascii_to_utf8(&dis_init_obj.manufact_name_str, MANUFACTURER_NAME);
    BLE_GAP_CONN_SEC_MODE_SET_ENC_NO_MITM(&dis_init_obj.dis_attr_md.read_perm);
    BLE_GAP_CONN_SEC_MODE_SET_NO_ACCESS(&dis_init_obj.dis_attr_md.write_perm);

    err_code = ble_dis_init(&dis_init_obj);
    APP_ERROR_CHECK(err_code);
}

/**@brief Function for application main entry.
 */
int main(void)
{
    bool erase_bonds = false;
    uint32_t err_code;

    // Initialize.
    err_code = NRF_LOG_INIT(NULL);
    APP_ERROR_CHECK(err_code);

    timers_init();
    scheduler_init();
    app_bsp_init(&erase_bonds);
    ble_stack_init();
    peer_manager_init(erase_bonds);
    if (erase_bonds == true)
    {
        NRF_LOG_INFO("Bonds erased!\r\n");
    }
    gap_params_init();
    advertising_init();
    dis_init();
    hids_init();
    conn_params_init();

    // // Start execution.
    // NRF_LOG_INFO("HID Keyboard Start!\r\n");
    timers_start();
    advertising_start();

    // Enter main loop.
    for (;;)
    {
        app_sched_execute();
        if (NRF_LOG_PROCESS() == false)
        {
            power_manage();
        }
    }
}

/**
 * @}
 */
