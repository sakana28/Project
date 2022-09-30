#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_s_axis_video_V_data_V "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_s_axis_video_V_data_V.dat"
#define AUTOTB_TVOUT_s_axis_video_V_data_V "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_s_axis_video_V_data_V.dat"
#define AUTOTB_TVIN_s_axis_video_V_keep_V "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_s_axis_video_V_keep_V.dat"
#define AUTOTB_TVOUT_s_axis_video_V_keep_V "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_s_axis_video_V_keep_V.dat"
#define AUTOTB_TVIN_s_axis_video_V_strb_V "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_s_axis_video_V_strb_V.dat"
#define AUTOTB_TVOUT_s_axis_video_V_strb_V "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_s_axis_video_V_strb_V.dat"
#define AUTOTB_TVIN_s_axis_video_V_user_V "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_s_axis_video_V_user_V.dat"
#define AUTOTB_TVOUT_s_axis_video_V_user_V "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_s_axis_video_V_user_V.dat"
#define AUTOTB_TVIN_s_axis_video_V_last_V "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_s_axis_video_V_last_V.dat"
#define AUTOTB_TVOUT_s_axis_video_V_last_V "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_s_axis_video_V_last_V.dat"
#define AUTOTB_TVIN_s_axis_video_V_id_V "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_s_axis_video_V_id_V.dat"
#define AUTOTB_TVOUT_s_axis_video_V_id_V "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_s_axis_video_V_id_V.dat"
#define AUTOTB_TVIN_s_axis_video_V_dest_V "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_s_axis_video_V_dest_V.dat"
#define AUTOTB_TVOUT_s_axis_video_V_dest_V "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_s_axis_video_V_dest_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video_V_data_V "../tv/stream_size/stream_size_in_s_axis_video_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_data_V "../tv/stream_size/stream_ingress_status_s_axis_video_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video_V_keep_V "../tv/stream_size/stream_size_in_s_axis_video_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_keep_V "../tv/stream_size/stream_ingress_status_s_axis_video_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video_V_strb_V "../tv/stream_size/stream_size_in_s_axis_video_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_strb_V "../tv/stream_size/stream_ingress_status_s_axis_video_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video_V_user_V "../tv/stream_size/stream_size_in_s_axis_video_V_user_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_user_V "../tv/stream_size/stream_ingress_status_s_axis_video_V_user_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video_V_last_V "../tv/stream_size/stream_size_in_s_axis_video_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_last_V "../tv/stream_size/stream_ingress_status_s_axis_video_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video_V_id_V "../tv/stream_size/stream_size_in_s_axis_video_V_id_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_id_V "../tv/stream_size/stream_ingress_status_s_axis_video_V_id_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video_V_dest_V "../tv/stream_size/stream_size_in_s_axis_video_V_dest_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_dest_V "../tv/stream_size/stream_ingress_status_s_axis_video_V_dest_V.dat"
#define AUTOTB_TVIN_InVideoFormat "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_InVideoFormat.dat"
#define AUTOTB_TVOUT_InVideoFormat "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_InVideoFormat.dat"
#define AUTOTB_TVIN_OutVideoFormat "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_OutVideoFormat.dat"
#define AUTOTB_TVOUT_OutVideoFormat "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_OutVideoFormat.dat"
#define AUTOTB_TVIN_width "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_width.dat"
#define AUTOTB_TVOUT_width "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_width.dat"
#define AUTOTB_TVIN_height "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_height.dat"
#define AUTOTB_TVOUT_height "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_height.dat"
#define AUTOTB_TVIN_ColStart "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_ColStart.dat"
#define AUTOTB_TVOUT_ColStart "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_ColStart.dat"
#define AUTOTB_TVIN_ColEnd "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_ColEnd.dat"
#define AUTOTB_TVOUT_ColEnd "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_ColEnd.dat"
#define AUTOTB_TVIN_RowStart "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_RowStart.dat"
#define AUTOTB_TVOUT_RowStart "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_RowStart.dat"
#define AUTOTB_TVIN_RowEnd "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_RowEnd.dat"
#define AUTOTB_TVOUT_RowEnd "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_RowEnd.dat"
#define AUTOTB_TVIN_K11 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_K11.dat"
#define AUTOTB_TVOUT_K11 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_K11.dat"
#define AUTOTB_TVIN_K12 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_K12.dat"
#define AUTOTB_TVOUT_K12 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_K12.dat"
#define AUTOTB_TVIN_K13 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_K13.dat"
#define AUTOTB_TVOUT_K13 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_K13.dat"
#define AUTOTB_TVIN_K21 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_K21.dat"
#define AUTOTB_TVOUT_K21 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_K21.dat"
#define AUTOTB_TVIN_K22 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_K22.dat"
#define AUTOTB_TVOUT_K22 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_K22.dat"
#define AUTOTB_TVIN_K23 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_K23.dat"
#define AUTOTB_TVOUT_K23 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_K23.dat"
#define AUTOTB_TVIN_K31 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_K31.dat"
#define AUTOTB_TVOUT_K31 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_K31.dat"
#define AUTOTB_TVIN_K32 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_K32.dat"
#define AUTOTB_TVOUT_K32 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_K32.dat"
#define AUTOTB_TVIN_K33 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_K33.dat"
#define AUTOTB_TVOUT_K33 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_K33.dat"
#define AUTOTB_TVIN_ROffset "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_ROffset.dat"
#define AUTOTB_TVOUT_ROffset "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_ROffset.dat"
#define AUTOTB_TVIN_GOffset "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_GOffset.dat"
#define AUTOTB_TVOUT_GOffset "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_GOffset.dat"
#define AUTOTB_TVIN_BOffset "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_BOffset.dat"
#define AUTOTB_TVOUT_BOffset "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_BOffset.dat"
#define AUTOTB_TVIN_ClampMin "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_ClampMin.dat"
#define AUTOTB_TVOUT_ClampMin "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_ClampMin.dat"
#define AUTOTB_TVIN_ClipMax "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_ClipMax.dat"
#define AUTOTB_TVOUT_ClipMax "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_ClipMax.dat"
#define AUTOTB_TVIN_K11_2 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_K11_2.dat"
#define AUTOTB_TVOUT_K11_2 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_K11_2.dat"
#define AUTOTB_TVIN_K12_2 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_K12_2.dat"
#define AUTOTB_TVOUT_K12_2 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_K12_2.dat"
#define AUTOTB_TVIN_K13_2 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_K13_2.dat"
#define AUTOTB_TVOUT_K13_2 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_K13_2.dat"
#define AUTOTB_TVIN_K21_2 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_K21_2.dat"
#define AUTOTB_TVOUT_K21_2 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_K21_2.dat"
#define AUTOTB_TVIN_K22_2 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_K22_2.dat"
#define AUTOTB_TVOUT_K22_2 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_K22_2.dat"
#define AUTOTB_TVIN_K23_2 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_K23_2.dat"
#define AUTOTB_TVOUT_K23_2 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_K23_2.dat"
#define AUTOTB_TVIN_K31_2 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_K31_2.dat"
#define AUTOTB_TVOUT_K31_2 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_K31_2.dat"
#define AUTOTB_TVIN_K32_2 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_K32_2.dat"
#define AUTOTB_TVOUT_K32_2 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_K32_2.dat"
#define AUTOTB_TVIN_K33_2 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_K33_2.dat"
#define AUTOTB_TVOUT_K33_2 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_K33_2.dat"
#define AUTOTB_TVIN_ROffset_2 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_ROffset_2.dat"
#define AUTOTB_TVOUT_ROffset_2 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_ROffset_2.dat"
#define AUTOTB_TVIN_GOffset_2 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_GOffset_2.dat"
#define AUTOTB_TVOUT_GOffset_2 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_GOffset_2.dat"
#define AUTOTB_TVIN_BOffset_2 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_BOffset_2.dat"
#define AUTOTB_TVOUT_BOffset_2 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_BOffset_2.dat"
#define AUTOTB_TVIN_ClampMin_2 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_ClampMin_2.dat"
#define AUTOTB_TVOUT_ClampMin_2 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_ClampMin_2.dat"
#define AUTOTB_TVIN_ClipMax_2 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_ClipMax_2.dat"
#define AUTOTB_TVOUT_ClipMax_2 "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_ClipMax_2.dat"
#define AUTOTB_TVIN_m_axis_video_V_data_V "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_m_axis_video_V_data_V.dat"
#define AUTOTB_TVOUT_m_axis_video_V_data_V "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_m_axis_video_V_data_V.dat"
#define AUTOTB_TVIN_m_axis_video_V_keep_V "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_m_axis_video_V_keep_V.dat"
#define AUTOTB_TVOUT_m_axis_video_V_keep_V "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_m_axis_video_V_keep_V.dat"
#define AUTOTB_TVIN_m_axis_video_V_strb_V "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_m_axis_video_V_strb_V.dat"
#define AUTOTB_TVOUT_m_axis_video_V_strb_V "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_m_axis_video_V_strb_V.dat"
#define AUTOTB_TVIN_m_axis_video_V_user_V "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_m_axis_video_V_user_V.dat"
#define AUTOTB_TVOUT_m_axis_video_V_user_V "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_m_axis_video_V_user_V.dat"
#define AUTOTB_TVIN_m_axis_video_V_last_V "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_m_axis_video_V_last_V.dat"
#define AUTOTB_TVOUT_m_axis_video_V_last_V "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_m_axis_video_V_last_V.dat"
#define AUTOTB_TVIN_m_axis_video_V_id_V "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_m_axis_video_V_id_V.dat"
#define AUTOTB_TVOUT_m_axis_video_V_id_V "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_m_axis_video_V_id_V.dat"
#define AUTOTB_TVIN_m_axis_video_V_dest_V "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvin_m_axis_video_V_dest_V.dat"
#define AUTOTB_TVOUT_m_axis_video_V_dest_V "../tv/cdatafile/c.bd_3a92_csc_0_v_csc.autotvout_m_axis_video_V_dest_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_video_V_data_V "../tv/stream_size/stream_size_out_m_axis_video_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_data_V "../tv/stream_size/stream_egress_status_m_axis_video_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_video_V_keep_V "../tv/stream_size/stream_size_out_m_axis_video_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_keep_V "../tv/stream_size/stream_egress_status_m_axis_video_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_video_V_strb_V "../tv/stream_size/stream_size_out_m_axis_video_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_strb_V "../tv/stream_size/stream_egress_status_m_axis_video_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_video_V_user_V "../tv/stream_size/stream_size_out_m_axis_video_V_user_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_user_V "../tv/stream_size/stream_egress_status_m_axis_video_V_user_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_video_V_last_V "../tv/stream_size/stream_size_out_m_axis_video_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_last_V "../tv/stream_size/stream_egress_status_m_axis_video_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_video_V_id_V "../tv/stream_size/stream_size_out_m_axis_video_V_id_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_id_V "../tv/stream_size/stream_egress_status_m_axis_video_V_id_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_video_V_dest_V "../tv/stream_size/stream_size_out_m_axis_video_V_dest_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_dest_V "../tv/stream_size/stream_egress_status_m_axis_video_V_dest_V.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_video_V_data_V "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_s_axis_video_V_data_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_video_V_keep_V "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_s_axis_video_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_video_V_strb_V "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_s_axis_video_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_video_V_user_V "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_s_axis_video_V_user_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_video_V_last_V "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_s_axis_video_V_last_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_video_V_id_V "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_s_axis_video_V_id_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_video_V_dest_V "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_s_axis_video_V_dest_V.dat"
#define AUTOTB_TVOUT_PC_InVideoFormat "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_InVideoFormat.dat"
#define AUTOTB_TVOUT_PC_OutVideoFormat "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_OutVideoFormat.dat"
#define AUTOTB_TVOUT_PC_width "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_width.dat"
#define AUTOTB_TVOUT_PC_height "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_height.dat"
#define AUTOTB_TVOUT_PC_ColStart "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_ColStart.dat"
#define AUTOTB_TVOUT_PC_ColEnd "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_ColEnd.dat"
#define AUTOTB_TVOUT_PC_RowStart "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_RowStart.dat"
#define AUTOTB_TVOUT_PC_RowEnd "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_RowEnd.dat"
#define AUTOTB_TVOUT_PC_K11 "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_K11.dat"
#define AUTOTB_TVOUT_PC_K12 "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_K12.dat"
#define AUTOTB_TVOUT_PC_K13 "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_K13.dat"
#define AUTOTB_TVOUT_PC_K21 "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_K21.dat"
#define AUTOTB_TVOUT_PC_K22 "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_K22.dat"
#define AUTOTB_TVOUT_PC_K23 "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_K23.dat"
#define AUTOTB_TVOUT_PC_K31 "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_K31.dat"
#define AUTOTB_TVOUT_PC_K32 "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_K32.dat"
#define AUTOTB_TVOUT_PC_K33 "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_K33.dat"
#define AUTOTB_TVOUT_PC_ROffset "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_ROffset.dat"
#define AUTOTB_TVOUT_PC_GOffset "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_GOffset.dat"
#define AUTOTB_TVOUT_PC_BOffset "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_BOffset.dat"
#define AUTOTB_TVOUT_PC_ClampMin "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_ClampMin.dat"
#define AUTOTB_TVOUT_PC_ClipMax "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_ClipMax.dat"
#define AUTOTB_TVOUT_PC_K11_2 "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_K11_2.dat"
#define AUTOTB_TVOUT_PC_K12_2 "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_K12_2.dat"
#define AUTOTB_TVOUT_PC_K13_2 "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_K13_2.dat"
#define AUTOTB_TVOUT_PC_K21_2 "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_K21_2.dat"
#define AUTOTB_TVOUT_PC_K22_2 "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_K22_2.dat"
#define AUTOTB_TVOUT_PC_K23_2 "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_K23_2.dat"
#define AUTOTB_TVOUT_PC_K31_2 "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_K31_2.dat"
#define AUTOTB_TVOUT_PC_K32_2 "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_K32_2.dat"
#define AUTOTB_TVOUT_PC_K33_2 "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_K33_2.dat"
#define AUTOTB_TVOUT_PC_ROffset_2 "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_ROffset_2.dat"
#define AUTOTB_TVOUT_PC_GOffset_2 "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_GOffset_2.dat"
#define AUTOTB_TVOUT_PC_BOffset_2 "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_BOffset_2.dat"
#define AUTOTB_TVOUT_PC_ClampMin_2 "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_ClampMin_2.dat"
#define AUTOTB_TVOUT_PC_ClipMax_2 "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_ClipMax_2.dat"
#define AUTOTB_TVOUT_PC_m_axis_video_V_data_V "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_m_axis_video_V_data_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_video_V_keep_V "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_m_axis_video_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_video_V_strb_V "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_m_axis_video_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_video_V_user_V "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_m_axis_video_V_user_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_video_V_last_V "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_m_axis_video_V_last_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_video_V_id_V "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_m_axis_video_V_id_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_video_V_dest_V "../tv/rtldatafile/rtl.bd_3a92_csc_0_v_csc.autotvout_m_axis_video_V_dest_V.dat"


static const bool little_endian()
{
  int a = 1;
  return *(char*)&a == 1;
}

inline static void rev_endian(char* p, size_t nbytes)
{
  std::reverse(p, p+nbytes);
}

template<size_t bit_width>
struct transaction {
  typedef uint64_t depth_t;
  static const size_t wbytes = (bit_width+7)>>3;
  static const size_t dbytes = sizeof(depth_t);
  const depth_t depth;
  const size_t vbytes;
  const size_t tbytes;
  char * const p;
  typedef char (*p_dat)[wbytes];
  p_dat vp;

  transaction(depth_t depth)
    : depth(depth), vbytes(wbytes*depth), tbytes(dbytes+vbytes),
      p(new char[tbytes]) {
    *(depth_t*)p = depth;
    rev_endian(p, dbytes);
    vp = (p_dat) (p+dbytes);
  }

  void reorder() {
    rev_endian(p, dbytes);
    p_dat vp = (p_dat) (p+dbytes);
    for (depth_t i = 0; i < depth; ++i) {
      rev_endian(vp[i], wbytes);
    }
  }

  template<size_t psize>
  void import(char* param, depth_t num, int64_t offset) {
    param -= offset*psize;
    for (depth_t i = 0; i < num; ++i) {
      memcpy(vp[i], param, wbytes);
      param += psize;
      if (little_endian()) {
        rev_endian(vp[i], wbytes);
      }
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[i], wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num, int64_t skip) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[skip+i], wbytes);
      param += psize;
    }
  }

  ~transaction() { if (p) { delete[] p; } }
};


inline static const std::string begin_str(int num)
{
  return std::string("[[transaction]]           ")
         .append(std::to_string(num))
         .append("\n");
}

inline static const std::string end_str()
{
  return std::string("[[/transaction]]\n");
}

const std::string formatData(unsigned char *pos, size_t wbits)
{
  bool LE = little_endian();
  size_t wbytes = (wbits+7)>>3;
  size_t i = LE ? wbytes-1 : 0;
  auto next = [&] () {
    auto c = pos[i];
    LE ? --i : ++i;
    return c;
  };
  std::ostringstream ss;
  ss << "0x";
  if (int t = (wbits & 0x7)) {
    if (t <= 4) {
      unsigned char mask = (1<<t)-1;
      ss << std::hex << std::setfill('0') << std::setw(1)
         << (int) (next() & mask);
      wbytes -= 1;
    }
  }
  for (size_t i = 0; i < wbytes; ++i) {
    ss << std::hex << std::setfill('0') << std::setw(2) << (int)next();
  }
  ss.put('\n');
  return ss.str();
}

static bool RTLOutputCheckAndReplacement(std::string &data)
{
  bool changed = false;
  for (size_t i = 2; i < data.size(); ++i) {
    if (data[i] == 'X' || data[i] == 'x') {
      data[i] = '0';
      changed = true;
    }
  }
  return changed;
}

struct SimException : public std::exception {
  const char *msg;
  const size_t line;
  SimException(const char *msg, const size_t line)
    : msg(msg), line(line)
  {
  }
};

template<size_t bit_width>
class PostCheck
{
  static const char *bad;
  static const char *err;
  std::fstream stream;
  std::string s;

  void send(char *p, ap_uint<bit_width> &data, size_t l, size_t rest)
  {
    if (rest == 0) {
      if (!little_endian()) {
        const size_t wbytes = (bit_width+7)>>3;
        rev_endian(p-wbytes, wbytes);
      }
    } else if (rest < 8) {
      *p = data.range(l+rest-1, l).to_uint();
      send(p+1, data, l+rest, 0);
    } else {
      *p = data.range(l+8-1, l).to_uint();
      send(p+1, data, l+8, rest-8);
    }
  }

  void readline()
  {
    std::getline(stream, s);
    if (stream.eof()) {
      throw SimException(bad, __LINE__);
    }
  }

public:
  char *param;
  size_t psize;
  size_t depth;

  PostCheck(const char *file)
  {
    stream.open(file);
    if (stream.fail()) {
      throw SimException(err, __LINE__);
    } else {
      readline();
      if (s != "[[[runtime]]]") {
        throw SimException(bad, __LINE__);
      }
    }
  }

  ~PostCheck() noexcept(false)
  {
    stream.close();
  }

  void run(size_t AESL_transaction_pc, size_t skip)
  {
    if (stream.peek() == '[') {
      readline();
    }

    for (size_t i = 0; i < skip; ++i) {
      readline();
    }

    bool foundX = false;
    for (size_t i = 0; i < depth; ++i) {
      readline();
      foundX |= RTLOutputCheckAndReplacement(s);
      ap_uint<bit_width> data(s.c_str(), 16);
      send(param+i*psize, data, 0, bit_width);
    }
    if (foundX) {
      std::cerr << "WARNING: [SIM 212-201] RTL produces unknown value "
                << "'x' or 'X' on some port, possible cause: "
                << "There are uninitialized variables in the design.\n";
    }

    if (stream.peek() == '[') {
      readline();
    }
  }
};

template<size_t bit_width>
const char* PostCheck<bit_width>::bad = "Bad TV file";

template<size_t bit_width>
const char* PostCheck<bit_width>::err = "Error on TV file";
      
class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  s_axis_video_V_data_V_depth = 0;
  s_axis_video_V_keep_V_depth = 0;
  s_axis_video_V_strb_V_depth = 0;
  s_axis_video_V_user_V_depth = 0;
  s_axis_video_V_last_V_depth = 0;
  s_axis_video_V_id_V_depth = 0;
  s_axis_video_V_dest_V_depth = 0;
  InVideoFormat_depth = 0;
  OutVideoFormat_depth = 0;
  width_depth = 0;
  height_depth = 0;
  ColStart_depth = 0;
  ColEnd_depth = 0;
  RowStart_depth = 0;
  RowEnd_depth = 0;
  K11_depth = 0;
  K12_depth = 0;
  K13_depth = 0;
  K21_depth = 0;
  K22_depth = 0;
  K23_depth = 0;
  K31_depth = 0;
  K32_depth = 0;
  K33_depth = 0;
  ROffset_depth = 0;
  GOffset_depth = 0;
  BOffset_depth = 0;
  ClampMin_depth = 0;
  ClipMax_depth = 0;
  K11_2_depth = 0;
  K12_2_depth = 0;
  K13_2_depth = 0;
  K21_2_depth = 0;
  K22_2_depth = 0;
  K23_2_depth = 0;
  K31_2_depth = 0;
  K32_2_depth = 0;
  K33_2_depth = 0;
  ROffset_2_depth = 0;
  GOffset_2_depth = 0;
  BOffset_2_depth = 0;
  ClampMin_2_depth = 0;
  ClipMax_2_depth = 0;
  m_axis_video_V_data_V_depth = 0;
  m_axis_video_V_keep_V_depth = 0;
  m_axis_video_V_strb_V_depth = 0;
  m_axis_video_V_user_V_depth = 0;
  m_axis_video_V_last_V_depth = 0;
  m_axis_video_V_id_V_depth = 0;
  m_axis_video_V_dest_V_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{s_axis_video_V_data_V " << s_axis_video_V_data_V_depth << "}\n";
  total_list << "{s_axis_video_V_keep_V " << s_axis_video_V_keep_V_depth << "}\n";
  total_list << "{s_axis_video_V_strb_V " << s_axis_video_V_strb_V_depth << "}\n";
  total_list << "{s_axis_video_V_user_V " << s_axis_video_V_user_V_depth << "}\n";
  total_list << "{s_axis_video_V_last_V " << s_axis_video_V_last_V_depth << "}\n";
  total_list << "{s_axis_video_V_id_V " << s_axis_video_V_id_V_depth << "}\n";
  total_list << "{s_axis_video_V_dest_V " << s_axis_video_V_dest_V_depth << "}\n";
  total_list << "{InVideoFormat " << InVideoFormat_depth << "}\n";
  total_list << "{OutVideoFormat " << OutVideoFormat_depth << "}\n";
  total_list << "{width " << width_depth << "}\n";
  total_list << "{height " << height_depth << "}\n";
  total_list << "{ColStart " << ColStart_depth << "}\n";
  total_list << "{ColEnd " << ColEnd_depth << "}\n";
  total_list << "{RowStart " << RowStart_depth << "}\n";
  total_list << "{RowEnd " << RowEnd_depth << "}\n";
  total_list << "{K11 " << K11_depth << "}\n";
  total_list << "{K12 " << K12_depth << "}\n";
  total_list << "{K13 " << K13_depth << "}\n";
  total_list << "{K21 " << K21_depth << "}\n";
  total_list << "{K22 " << K22_depth << "}\n";
  total_list << "{K23 " << K23_depth << "}\n";
  total_list << "{K31 " << K31_depth << "}\n";
  total_list << "{K32 " << K32_depth << "}\n";
  total_list << "{K33 " << K33_depth << "}\n";
  total_list << "{ROffset " << ROffset_depth << "}\n";
  total_list << "{GOffset " << GOffset_depth << "}\n";
  total_list << "{BOffset " << BOffset_depth << "}\n";
  total_list << "{ClampMin " << ClampMin_depth << "}\n";
  total_list << "{ClipMax " << ClipMax_depth << "}\n";
  total_list << "{K11_2 " << K11_2_depth << "}\n";
  total_list << "{K12_2 " << K12_2_depth << "}\n";
  total_list << "{K13_2 " << K13_2_depth << "}\n";
  total_list << "{K21_2 " << K21_2_depth << "}\n";
  total_list << "{K22_2 " << K22_2_depth << "}\n";
  total_list << "{K23_2 " << K23_2_depth << "}\n";
  total_list << "{K31_2 " << K31_2_depth << "}\n";
  total_list << "{K32_2 " << K32_2_depth << "}\n";
  total_list << "{K33_2 " << K33_2_depth << "}\n";
  total_list << "{ROffset_2 " << ROffset_2_depth << "}\n";
  total_list << "{GOffset_2 " << GOffset_2_depth << "}\n";
  total_list << "{BOffset_2 " << BOffset_2_depth << "}\n";
  total_list << "{ClampMin_2 " << ClampMin_2_depth << "}\n";
  total_list << "{ClipMax_2 " << ClipMax_2_depth << "}\n";
  total_list << "{m_axis_video_V_data_V " << m_axis_video_V_data_V_depth << "}\n";
  total_list << "{m_axis_video_V_keep_V " << m_axis_video_V_keep_V_depth << "}\n";
  total_list << "{m_axis_video_V_strb_V " << m_axis_video_V_strb_V_depth << "}\n";
  total_list << "{m_axis_video_V_user_V " << m_axis_video_V_user_V_depth << "}\n";
  total_list << "{m_axis_video_V_last_V " << m_axis_video_V_last_V_depth << "}\n";
  total_list << "{m_axis_video_V_id_V " << m_axis_video_V_id_V_depth << "}\n";
  total_list << "{m_axis_video_V_dest_V " << m_axis_video_V_dest_V_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int s_axis_video_V_data_V_depth;
    int s_axis_video_V_keep_V_depth;
    int s_axis_video_V_strb_V_depth;
    int s_axis_video_V_user_V_depth;
    int s_axis_video_V_last_V_depth;
    int s_axis_video_V_id_V_depth;
    int s_axis_video_V_dest_V_depth;
    int InVideoFormat_depth;
    int OutVideoFormat_depth;
    int width_depth;
    int height_depth;
    int ColStart_depth;
    int ColEnd_depth;
    int RowStart_depth;
    int RowEnd_depth;
    int K11_depth;
    int K12_depth;
    int K13_depth;
    int K21_depth;
    int K22_depth;
    int K23_depth;
    int K31_depth;
    int K32_depth;
    int K33_depth;
    int ROffset_depth;
    int GOffset_depth;
    int BOffset_depth;
    int ClampMin_depth;
    int ClipMax_depth;
    int K11_2_depth;
    int K12_2_depth;
    int K13_2_depth;
    int K21_2_depth;
    int K22_2_depth;
    int K23_2_depth;
    int K31_2_depth;
    int K32_2_depth;
    int K33_2_depth;
    int ROffset_2_depth;
    int GOffset_2_depth;
    int BOffset_2_depth;
    int ClampMin_2_depth;
    int ClipMax_2_depth;
    int m_axis_video_V_data_V_depth;
    int m_axis_video_V_keep_V_depth;
    int m_axis_video_V_strb_V_depth;
    int m_axis_video_V_user_V_depth;
    int m_axis_video_V_last_V_depth;
    int m_axis_video_V_id_V_depth;
    int m_axis_video_V_dest_V_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};


struct __cosim_s2__ { char data[2]; };
struct __cosim_s1__ { char data[1]; };
extern "C" void v_csc_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_v_csc_hw(volatile void * __xlx_apatb_param_s_axis_video_V_data_V, volatile void * __xlx_apatb_param_s_axis_video_V_keep_V, volatile void * __xlx_apatb_param_s_axis_video_V_strb_V, volatile void * __xlx_apatb_param_s_axis_video_V_user_V, volatile void * __xlx_apatb_param_s_axis_video_V_last_V, volatile void * __xlx_apatb_param_s_axis_video_V_id_V, volatile void * __xlx_apatb_param_s_axis_video_V_dest_V, volatile void * __xlx_apatb_param_InVideoFormat, volatile void * __xlx_apatb_param_OutVideoFormat, volatile void * __xlx_apatb_param_width, volatile void * __xlx_apatb_param_height, volatile void * __xlx_apatb_param_ColStart, volatile void * __xlx_apatb_param_ColEnd, volatile void * __xlx_apatb_param_RowStart, volatile void * __xlx_apatb_param_RowEnd, volatile void * __xlx_apatb_param_K11, volatile void * __xlx_apatb_param_K12, volatile void * __xlx_apatb_param_K13, volatile void * __xlx_apatb_param_K21, volatile void * __xlx_apatb_param_K22, volatile void * __xlx_apatb_param_K23, volatile void * __xlx_apatb_param_K31, volatile void * __xlx_apatb_param_K32, volatile void * __xlx_apatb_param_K33, volatile void * __xlx_apatb_param_ROffset, volatile void * __xlx_apatb_param_GOffset, volatile void * __xlx_apatb_param_BOffset, volatile void * __xlx_apatb_param_ClampMin, volatile void * __xlx_apatb_param_ClipMax, volatile void * __xlx_apatb_param_K11_2, volatile void * __xlx_apatb_param_K12_2, volatile void * __xlx_apatb_param_K13_2, volatile void * __xlx_apatb_param_K21_2, volatile void * __xlx_apatb_param_K22_2, volatile void * __xlx_apatb_param_K23_2, volatile void * __xlx_apatb_param_K31_2, volatile void * __xlx_apatb_param_K32_2, volatile void * __xlx_apatb_param_K33_2, volatile void * __xlx_apatb_param_ROffset_2, volatile void * __xlx_apatb_param_GOffset_2, volatile void * __xlx_apatb_param_BOffset_2, volatile void * __xlx_apatb_param_ClampMin_2, volatile void * __xlx_apatb_param_ClipMax_2, volatile void * __xlx_apatb_param_m_axis_video_V_data_V, volatile void * __xlx_apatb_param_m_axis_video_V_keep_V, volatile void * __xlx_apatb_param_m_axis_video_V_strb_V, volatile void * __xlx_apatb_param_m_axis_video_V_user_V, volatile void * __xlx_apatb_param_m_axis_video_V_last_V, volatile void * __xlx_apatb_param_m_axis_video_V_id_V, volatile void * __xlx_apatb_param_m_axis_video_V_dest_V) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
static AESL_FILE_HANDLER aesl_fh;
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;
long __xlx_apatb_param_s_axis_video_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_video_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_video_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_video_stream_buf_final_size; ++i) {
((hls::stream<int>*)__xlx_apatb_param_s_axis_video_V_data_V)->read();
((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_keep_V)->read();
((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_strb_V)->read();
((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_user_V)->read();
((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_last_V)->read();
((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_id_V)->read();
((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_dest_V)->read();
}
{unsigned xlx_stream_m_axis_video_size = 0;

          std::vector<sc_bv<24> > m_axis_video_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_video_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<24> > m_axis_video_V_data_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_video_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_video" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_m_axis_video_size=m_axis_video_V_data_V_pc_buffer.size();
m_axis_video_V_data_V_pc_buffer_Copy=m_axis_video_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<24> > m_axis_video_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_video_V_keep_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<24> > m_axis_video_V_keep_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_video_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_video" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_m_axis_video_size=m_axis_video_V_keep_V_pc_buffer.size();
m_axis_video_V_keep_V_pc_buffer_Copy=m_axis_video_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<24> > m_axis_video_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_video_V_strb_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<24> > m_axis_video_V_strb_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_video_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_video" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_m_axis_video_size=m_axis_video_V_strb_V_pc_buffer.size();
m_axis_video_V_strb_V_pc_buffer_Copy=m_axis_video_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<24> > m_axis_video_V_user_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_video_V_user_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<24> > m_axis_video_V_user_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_video_V_user_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_video" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_m_axis_video_size=m_axis_video_V_user_V_pc_buffer.size();
m_axis_video_V_user_V_pc_buffer_Copy=m_axis_video_V_user_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<24> > m_axis_video_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_video_V_last_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<24> > m_axis_video_V_last_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_video_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_video" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_m_axis_video_size=m_axis_video_V_last_V_pc_buffer.size();
m_axis_video_V_last_V_pc_buffer_Copy=m_axis_video_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<24> > m_axis_video_V_id_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_video_V_id_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<24> > m_axis_video_V_id_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_video_V_id_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_video" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_m_axis_video_size=m_axis_video_V_id_V_pc_buffer.size();
m_axis_video_V_id_V_pc_buffer_Copy=m_axis_video_V_id_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<24> > m_axis_video_V_dest_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_video_V_dest_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<24> > m_axis_video_V_dest_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_video_V_dest_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_video" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_m_axis_video_size=m_axis_video_V_dest_V_pc_buffer.size();
m_axis_video_V_dest_V_pc_buffer_Copy=m_axis_video_V_dest_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_m_axis_video_size; j != e; ++j) {
int xlx_stream_elt_data;
((int*)&xlx_stream_elt_data)[0] = m_axis_video_V_data_V_pc_buffer_Copy[j].to_int64();
((hls::stream<int>*)__xlx_apatb_param_m_axis_video_V_data_V)->write(xlx_stream_elt_data);
char xlx_stream_elt_keep;
((char*)&xlx_stream_elt_keep)[0] = m_axis_video_V_keep_V_pc_buffer_Copy[j].to_int64();
((hls::stream<char>*)__xlx_apatb_param_m_axis_video_V_keep_V)->write(xlx_stream_elt_keep);
char xlx_stream_elt_strb;
((char*)&xlx_stream_elt_strb)[0] = m_axis_video_V_strb_V_pc_buffer_Copy[j].to_int64();
((hls::stream<char>*)__xlx_apatb_param_m_axis_video_V_strb_V)->write(xlx_stream_elt_strb);
char xlx_stream_elt_user;
((char*)&xlx_stream_elt_user)[0] = m_axis_video_V_user_V_pc_buffer_Copy[j].to_uint64();
((hls::stream<char>*)__xlx_apatb_param_m_axis_video_V_user_V)->write(xlx_stream_elt_user);
char xlx_stream_elt_last;
((char*)&xlx_stream_elt_last)[0] = m_axis_video_V_last_V_pc_buffer_Copy[j].to_uint64();
((hls::stream<char>*)__xlx_apatb_param_m_axis_video_V_last_V)->write(xlx_stream_elt_last);
char xlx_stream_elt_id;
((char*)&xlx_stream_elt_id)[0] = m_axis_video_V_id_V_pc_buffer_Copy[j].to_uint64();
((hls::stream<char>*)__xlx_apatb_param_m_axis_video_V_id_V)->write(xlx_stream_elt_id);
char xlx_stream_elt_dest;
((char*)&xlx_stream_elt_dest)[0] = m_axis_video_V_dest_V_pc_buffer_Copy[j].to_uint64();
((hls::stream<char>*)__xlx_apatb_param_m_axis_video_V_dest_V)->write(xlx_stream_elt_dest);
}}

    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_video_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_video_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_video_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_video_V_user_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_user_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_video_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_video_V_id_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_id_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_video_V_dest_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_dest_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_user_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_user_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_id_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_id_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_dest_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_dest_V);
CodeState = DUMP_INPUTS;
// data
std::vector<int> __xlx_apatb_param_s_axis_video_V_data_V_stream_buf;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_s_axis_video_V_data_V)->empty())
    __xlx_apatb_param_s_axis_video_V_data_V_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_s_axis_video_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_video_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_s_axis_video_V_data_V)->write(__xlx_apatb_param_s_axis_video_V_data_V_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_video_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_s_axis_video_V_data_V)->size();
// keep
std::vector<char> __xlx_apatb_param_s_axis_video_V_keep_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_keep_V)->empty())
    __xlx_apatb_param_s_axis_video_V_keep_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_video_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_keep_V)->write(__xlx_apatb_param_s_axis_video_V_keep_V_stream_buf[i]);
  }
// strb
std::vector<char> __xlx_apatb_param_s_axis_video_V_strb_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_strb_V)->empty())
    __xlx_apatb_param_s_axis_video_V_strb_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_video_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_strb_V)->write(__xlx_apatb_param_s_axis_video_V_strb_V_stream_buf[i]);
  }
// user
std::vector<char> __xlx_apatb_param_s_axis_video_V_user_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_user_V)->empty())
    __xlx_apatb_param_s_axis_video_V_user_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_user_V)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_video_V_user_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_user_V)->write(__xlx_apatb_param_s_axis_video_V_user_V_stream_buf[i]);
  }
// last
std::vector<char> __xlx_apatb_param_s_axis_video_V_last_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_last_V)->empty())
    __xlx_apatb_param_s_axis_video_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_video_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_last_V)->write(__xlx_apatb_param_s_axis_video_V_last_V_stream_buf[i]);
  }
// id
std::vector<char> __xlx_apatb_param_s_axis_video_V_id_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_id_V)->empty())
    __xlx_apatb_param_s_axis_video_V_id_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_id_V)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_video_V_id_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_id_V)->write(__xlx_apatb_param_s_axis_video_V_id_V_stream_buf[i]);
  }
// dest
std::vector<char> __xlx_apatb_param_s_axis_video_V_dest_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_dest_V)->empty())
    __xlx_apatb_param_s_axis_video_V_dest_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_dest_V)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_video_V_dest_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_dest_V)->write(__xlx_apatb_param_s_axis_video_V_dest_V_stream_buf[i]);
  }
// data
std::vector<int> __xlx_apatb_param_m_axis_video_V_data_V_stream_buf;
long __xlx_apatb_param_m_axis_video_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_m_axis_video_V_data_V)->size();
// keep
std::vector<char> __xlx_apatb_param_m_axis_video_V_keep_V_stream_buf;
// strb
std::vector<char> __xlx_apatb_param_m_axis_video_V_strb_V_stream_buf;
// user
std::vector<char> __xlx_apatb_param_m_axis_video_V_user_V_stream_buf;
// last
std::vector<char> __xlx_apatb_param_m_axis_video_V_last_V_stream_buf;
// id
std::vector<char> __xlx_apatb_param_m_axis_video_V_id_V_stream_buf;
// dest
std::vector<char> __xlx_apatb_param_m_axis_video_V_dest_V_stream_buf;
// print InVideoFormat Transactions
{
aesl_fh.write(AUTOTB_TVIN_InVideoFormat, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_InVideoFormat;
aesl_fh.write(AUTOTB_TVIN_InVideoFormat, formatData(pos, 8));
}
  tcl_file.set_num(1, &tcl_file.InVideoFormat_depth);
aesl_fh.write(AUTOTB_TVIN_InVideoFormat, end_str());
}

// print OutVideoFormat Transactions
{
aesl_fh.write(AUTOTB_TVIN_OutVideoFormat, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_OutVideoFormat;
aesl_fh.write(AUTOTB_TVIN_OutVideoFormat, formatData(pos, 8));
}
  tcl_file.set_num(1, &tcl_file.OutVideoFormat_depth);
aesl_fh.write(AUTOTB_TVIN_OutVideoFormat, end_str());
}

// print width Transactions
{
aesl_fh.write(AUTOTB_TVIN_width, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_width;
aesl_fh.write(AUTOTB_TVIN_width, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.width_depth);
aesl_fh.write(AUTOTB_TVIN_width, end_str());
}

// print height Transactions
{
aesl_fh.write(AUTOTB_TVIN_height, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_height;
aesl_fh.write(AUTOTB_TVIN_height, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.height_depth);
aesl_fh.write(AUTOTB_TVIN_height, end_str());
}

// print ColStart Transactions
{
aesl_fh.write(AUTOTB_TVIN_ColStart, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_ColStart;
aesl_fh.write(AUTOTB_TVIN_ColStart, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.ColStart_depth);
aesl_fh.write(AUTOTB_TVIN_ColStart, end_str());
}

// print ColEnd Transactions
{
aesl_fh.write(AUTOTB_TVIN_ColEnd, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_ColEnd;
aesl_fh.write(AUTOTB_TVIN_ColEnd, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.ColEnd_depth);
aesl_fh.write(AUTOTB_TVIN_ColEnd, end_str());
}

// print RowStart Transactions
{
aesl_fh.write(AUTOTB_TVIN_RowStart, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_RowStart;
aesl_fh.write(AUTOTB_TVIN_RowStart, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.RowStart_depth);
aesl_fh.write(AUTOTB_TVIN_RowStart, end_str());
}

// print RowEnd Transactions
{
aesl_fh.write(AUTOTB_TVIN_RowEnd, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_RowEnd;
aesl_fh.write(AUTOTB_TVIN_RowEnd, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.RowEnd_depth);
aesl_fh.write(AUTOTB_TVIN_RowEnd, end_str());
}

// print K11 Transactions
{
aesl_fh.write(AUTOTB_TVIN_K11, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_K11;
aesl_fh.write(AUTOTB_TVIN_K11, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.K11_depth);
aesl_fh.write(AUTOTB_TVIN_K11, end_str());
}

// print K12 Transactions
{
aesl_fh.write(AUTOTB_TVIN_K12, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_K12;
aesl_fh.write(AUTOTB_TVIN_K12, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.K12_depth);
aesl_fh.write(AUTOTB_TVIN_K12, end_str());
}

// print K13 Transactions
{
aesl_fh.write(AUTOTB_TVIN_K13, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_K13;
aesl_fh.write(AUTOTB_TVIN_K13, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.K13_depth);
aesl_fh.write(AUTOTB_TVIN_K13, end_str());
}

// print K21 Transactions
{
aesl_fh.write(AUTOTB_TVIN_K21, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_K21;
aesl_fh.write(AUTOTB_TVIN_K21, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.K21_depth);
aesl_fh.write(AUTOTB_TVIN_K21, end_str());
}

// print K22 Transactions
{
aesl_fh.write(AUTOTB_TVIN_K22, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_K22;
aesl_fh.write(AUTOTB_TVIN_K22, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.K22_depth);
aesl_fh.write(AUTOTB_TVIN_K22, end_str());
}

// print K23 Transactions
{
aesl_fh.write(AUTOTB_TVIN_K23, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_K23;
aesl_fh.write(AUTOTB_TVIN_K23, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.K23_depth);
aesl_fh.write(AUTOTB_TVIN_K23, end_str());
}

// print K31 Transactions
{
aesl_fh.write(AUTOTB_TVIN_K31, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_K31;
aesl_fh.write(AUTOTB_TVIN_K31, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.K31_depth);
aesl_fh.write(AUTOTB_TVIN_K31, end_str());
}

// print K32 Transactions
{
aesl_fh.write(AUTOTB_TVIN_K32, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_K32;
aesl_fh.write(AUTOTB_TVIN_K32, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.K32_depth);
aesl_fh.write(AUTOTB_TVIN_K32, end_str());
}

// print K33 Transactions
{
aesl_fh.write(AUTOTB_TVIN_K33, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_K33;
aesl_fh.write(AUTOTB_TVIN_K33, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.K33_depth);
aesl_fh.write(AUTOTB_TVIN_K33, end_str());
}

// print ROffset Transactions
{
aesl_fh.write(AUTOTB_TVIN_ROffset, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_ROffset;
aesl_fh.write(AUTOTB_TVIN_ROffset, formatData(pos, 10));
}
  tcl_file.set_num(1, &tcl_file.ROffset_depth);
aesl_fh.write(AUTOTB_TVIN_ROffset, end_str());
}

// print GOffset Transactions
{
aesl_fh.write(AUTOTB_TVIN_GOffset, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_GOffset;
aesl_fh.write(AUTOTB_TVIN_GOffset, formatData(pos, 10));
}
  tcl_file.set_num(1, &tcl_file.GOffset_depth);
aesl_fh.write(AUTOTB_TVIN_GOffset, end_str());
}

// print BOffset Transactions
{
aesl_fh.write(AUTOTB_TVIN_BOffset, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_BOffset;
aesl_fh.write(AUTOTB_TVIN_BOffset, formatData(pos, 10));
}
  tcl_file.set_num(1, &tcl_file.BOffset_depth);
aesl_fh.write(AUTOTB_TVIN_BOffset, end_str());
}

// print ClampMin Transactions
{
aesl_fh.write(AUTOTB_TVIN_ClampMin, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_ClampMin;
aesl_fh.write(AUTOTB_TVIN_ClampMin, formatData(pos, 8));
}
  tcl_file.set_num(1, &tcl_file.ClampMin_depth);
aesl_fh.write(AUTOTB_TVIN_ClampMin, end_str());
}

// print ClipMax Transactions
{
aesl_fh.write(AUTOTB_TVIN_ClipMax, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_ClipMax;
aesl_fh.write(AUTOTB_TVIN_ClipMax, formatData(pos, 8));
}
  tcl_file.set_num(1, &tcl_file.ClipMax_depth);
aesl_fh.write(AUTOTB_TVIN_ClipMax, end_str());
}

// print K11_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_K11_2, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_K11_2;
aesl_fh.write(AUTOTB_TVIN_K11_2, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.K11_2_depth);
aesl_fh.write(AUTOTB_TVIN_K11_2, end_str());
}

// print K12_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_K12_2, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_K12_2;
aesl_fh.write(AUTOTB_TVIN_K12_2, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.K12_2_depth);
aesl_fh.write(AUTOTB_TVIN_K12_2, end_str());
}

// print K13_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_K13_2, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_K13_2;
aesl_fh.write(AUTOTB_TVIN_K13_2, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.K13_2_depth);
aesl_fh.write(AUTOTB_TVIN_K13_2, end_str());
}

// print K21_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_K21_2, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_K21_2;
aesl_fh.write(AUTOTB_TVIN_K21_2, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.K21_2_depth);
aesl_fh.write(AUTOTB_TVIN_K21_2, end_str());
}

// print K22_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_K22_2, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_K22_2;
aesl_fh.write(AUTOTB_TVIN_K22_2, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.K22_2_depth);
aesl_fh.write(AUTOTB_TVIN_K22_2, end_str());
}

// print K23_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_K23_2, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_K23_2;
aesl_fh.write(AUTOTB_TVIN_K23_2, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.K23_2_depth);
aesl_fh.write(AUTOTB_TVIN_K23_2, end_str());
}

// print K31_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_K31_2, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_K31_2;
aesl_fh.write(AUTOTB_TVIN_K31_2, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.K31_2_depth);
aesl_fh.write(AUTOTB_TVIN_K31_2, end_str());
}

// print K32_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_K32_2, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_K32_2;
aesl_fh.write(AUTOTB_TVIN_K32_2, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.K32_2_depth);
aesl_fh.write(AUTOTB_TVIN_K32_2, end_str());
}

// print K33_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_K33_2, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_K33_2;
aesl_fh.write(AUTOTB_TVIN_K33_2, formatData(pos, 16));
}
  tcl_file.set_num(1, &tcl_file.K33_2_depth);
aesl_fh.write(AUTOTB_TVIN_K33_2, end_str());
}

// print ROffset_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_ROffset_2, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_ROffset_2;
aesl_fh.write(AUTOTB_TVIN_ROffset_2, formatData(pos, 10));
}
  tcl_file.set_num(1, &tcl_file.ROffset_2_depth);
aesl_fh.write(AUTOTB_TVIN_ROffset_2, end_str());
}

// print GOffset_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_GOffset_2, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_GOffset_2;
aesl_fh.write(AUTOTB_TVIN_GOffset_2, formatData(pos, 10));
}
  tcl_file.set_num(1, &tcl_file.GOffset_2_depth);
aesl_fh.write(AUTOTB_TVIN_GOffset_2, end_str());
}

// print BOffset_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_BOffset_2, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_BOffset_2;
aesl_fh.write(AUTOTB_TVIN_BOffset_2, formatData(pos, 10));
}
  tcl_file.set_num(1, &tcl_file.BOffset_2_depth);
aesl_fh.write(AUTOTB_TVIN_BOffset_2, end_str());
}

// print ClampMin_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_ClampMin_2, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_ClampMin_2;
aesl_fh.write(AUTOTB_TVIN_ClampMin_2, formatData(pos, 8));
}
  tcl_file.set_num(1, &tcl_file.ClampMin_2_depth);
aesl_fh.write(AUTOTB_TVIN_ClampMin_2, end_str());
}

// print ClipMax_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_ClipMax_2, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_ClipMax_2;
aesl_fh.write(AUTOTB_TVIN_ClipMax_2, formatData(pos, 8));
}
  tcl_file.set_num(1, &tcl_file.ClipMax_2_depth);
aesl_fh.write(AUTOTB_TVIN_ClipMax_2, end_str());
}

CodeState = CALL_C_DUT;
v_csc_hw_stub_wrapper(__xlx_apatb_param_s_axis_video_V_data_V, __xlx_apatb_param_s_axis_video_V_keep_V, __xlx_apatb_param_s_axis_video_V_strb_V, __xlx_apatb_param_s_axis_video_V_user_V, __xlx_apatb_param_s_axis_video_V_last_V, __xlx_apatb_param_s_axis_video_V_id_V, __xlx_apatb_param_s_axis_video_V_dest_V, __xlx_apatb_param_InVideoFormat, __xlx_apatb_param_OutVideoFormat, __xlx_apatb_param_width, __xlx_apatb_param_height, __xlx_apatb_param_ColStart, __xlx_apatb_param_ColEnd, __xlx_apatb_param_RowStart, __xlx_apatb_param_RowEnd, __xlx_apatb_param_K11, __xlx_apatb_param_K12, __xlx_apatb_param_K13, __xlx_apatb_param_K21, __xlx_apatb_param_K22, __xlx_apatb_param_K23, __xlx_apatb_param_K31, __xlx_apatb_param_K32, __xlx_apatb_param_K33, __xlx_apatb_param_ROffset, __xlx_apatb_param_GOffset, __xlx_apatb_param_BOffset, __xlx_apatb_param_ClampMin, __xlx_apatb_param_ClipMax, __xlx_apatb_param_K11_2, __xlx_apatb_param_K12_2, __xlx_apatb_param_K13_2, __xlx_apatb_param_K21_2, __xlx_apatb_param_K22_2, __xlx_apatb_param_K23_2, __xlx_apatb_param_K31_2, __xlx_apatb_param_K32_2, __xlx_apatb_param_K33_2, __xlx_apatb_param_ROffset_2, __xlx_apatb_param_GOffset_2, __xlx_apatb_param_BOffset_2, __xlx_apatb_param_ClampMin_2, __xlx_apatb_param_ClipMax_2, __xlx_apatb_param_m_axis_video_V_data_V, __xlx_apatb_param_m_axis_video_V_keep_V, __xlx_apatb_param_m_axis_video_V_strb_V, __xlx_apatb_param_m_axis_video_V_user_V, __xlx_apatb_param_m_axis_video_V_last_V, __xlx_apatb_param_m_axis_video_V_id_V, __xlx_apatb_param_m_axis_video_V_dest_V);
CodeState = DUMP_OUTPUTS;
long __xlx_apatb_param_s_axis_video_stream_buf_final_size = __xlx_apatb_param_s_axis_video_stream_buf_size - ((hls::stream<int>*)__xlx_apatb_param_s_axis_video_V_data_V)->size();
aesl_fh.write(AUTOTB_TVIN_s_axis_video_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_s_axis_video_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_s_axis_video_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_s_axis_video_V_user_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_s_axis_video_V_last_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_s_axis_video_V_id_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_s_axis_video_V_dest_V, begin_str(AESL_transaction));
for (int i = 0; i < __xlx_apatb_param_s_axis_video_stream_buf_final_size; ++i) {
  std::string s;
s = formatData((unsigned char*)(__xlx_apatb_param_s_axis_video_V_data_V_stream_buf.data()+i), 24);
aesl_fh.write(AUTOTB_TVIN_s_axis_video_V_data_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_s_axis_video_V_keep_V_stream_buf.data()+i), 3);
aesl_fh.write(AUTOTB_TVIN_s_axis_video_V_keep_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_s_axis_video_V_strb_V_stream_buf.data()+i), 3);
aesl_fh.write(AUTOTB_TVIN_s_axis_video_V_strb_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_s_axis_video_V_user_V_stream_buf.data()+i), 1);
aesl_fh.write(AUTOTB_TVIN_s_axis_video_V_user_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_s_axis_video_V_last_V_stream_buf.data()+i), 1);
aesl_fh.write(AUTOTB_TVIN_s_axis_video_V_last_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_s_axis_video_V_id_V_stream_buf.data()+i), 1);
aesl_fh.write(AUTOTB_TVIN_s_axis_video_V_id_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_s_axis_video_V_dest_V_stream_buf.data()+i), 1);
aesl_fh.write(AUTOTB_TVIN_s_axis_video_V_dest_V, s);
}
tcl_file.set_num(__xlx_apatb_param_s_axis_video_stream_buf_final_size, &tcl_file.s_axis_video_V_data_V_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_video_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_s_axis_video_stream_buf_final_size, &tcl_file.s_axis_video_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_video_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_s_axis_video_stream_buf_final_size, &tcl_file.s_axis_video_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_video_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_s_axis_video_stream_buf_final_size, &tcl_file.s_axis_video_V_user_V_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_video_V_user_V, end_str());
tcl_file.set_num(__xlx_apatb_param_s_axis_video_stream_buf_final_size, &tcl_file.s_axis_video_V_last_V_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_video_V_last_V, end_str());
tcl_file.set_num(__xlx_apatb_param_s_axis_video_stream_buf_final_size, &tcl_file.s_axis_video_V_id_V_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_video_V_id_V, end_str());
tcl_file.set_num(__xlx_apatb_param_s_axis_video_stream_buf_final_size, &tcl_file.s_axis_video_V_dest_V_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_video_V_dest_V, end_str());

// dump stream ingress status to file

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_data_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_video_stream_buf_final_size > 0) {
  long s_axis_video_V_data_V_stream_ingress_size = __xlx_apatb_param_s_axis_video_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_video_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_video_stream_buf_final_size; j != e; j++) {
    s_axis_video_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_video_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_video_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_video_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_data_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_data_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_keep_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_video_stream_buf_final_size > 0) {
  long s_axis_video_V_keep_V_stream_ingress_size = __xlx_apatb_param_s_axis_video_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_video_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_video_stream_buf_final_size; j != e; j++) {
    s_axis_video_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_video_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_video_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_video_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_keep_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_keep_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_strb_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_video_stream_buf_final_size > 0) {
  long s_axis_video_V_strb_V_stream_ingress_size = __xlx_apatb_param_s_axis_video_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_video_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_video_stream_buf_final_size; j != e; j++) {
    s_axis_video_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_video_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_video_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_video_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_strb_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_strb_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_user_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_video_stream_buf_final_size > 0) {
  long s_axis_video_V_user_V_stream_ingress_size = __xlx_apatb_param_s_axis_video_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_video_V_user_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_user_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_video_stream_buf_final_size; j != e; j++) {
    s_axis_video_V_user_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_video_V_user_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_user_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_video_V_user_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_video_V_user_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_user_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_user_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_last_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_video_stream_buf_final_size > 0) {
  long s_axis_video_V_last_V_stream_ingress_size = __xlx_apatb_param_s_axis_video_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_video_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_video_stream_buf_final_size; j != e; j++) {
    s_axis_video_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_video_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_video_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_video_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_last_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_last_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_id_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_video_stream_buf_final_size > 0) {
  long s_axis_video_V_id_V_stream_ingress_size = __xlx_apatb_param_s_axis_video_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_video_V_id_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_id_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_video_stream_buf_final_size; j != e; j++) {
    s_axis_video_V_id_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_video_V_id_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_id_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_video_V_id_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_video_V_id_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_id_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_id_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_dest_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_video_stream_buf_final_size > 0) {
  long s_axis_video_V_dest_V_stream_ingress_size = __xlx_apatb_param_s_axis_video_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_video_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_dest_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_video_stream_buf_final_size; j != e; j++) {
    s_axis_video_V_dest_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_video_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_dest_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_video_V_dest_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_video_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_dest_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_dest_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_video_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_video_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_video_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_video_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_video_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_video_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_video_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_video_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_video_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_video_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_video_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_video_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_video_V_user_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_video_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_video_V_user_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_video_V_user_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_video_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_video_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_video_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_video_V_last_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_video_V_id_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_video_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_video_V_id_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_video_V_id_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_video_V_dest_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_video_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_video_V_dest_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_video_V_dest_V, end_str());
}

//********************** dump C output stream *******************
long __xlx_apatb_param_m_axis_video_stream_buf_final_size = ((hls::stream<int>*)__xlx_apatb_param_m_axis_video_V_data_V)->size() - __xlx_apatb_param_m_axis_video_stream_buf_size;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_m_axis_video_V_data_V)->empty())
    __xlx_apatb_param_m_axis_video_V_data_V_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_m_axis_video_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_video_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_m_axis_video_V_data_V)->write(__xlx_apatb_param_m_axis_video_V_data_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_m_axis_video_V_keep_V)->empty())
    __xlx_apatb_param_m_axis_video_V_keep_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_m_axis_video_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_video_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_m_axis_video_V_keep_V)->write(__xlx_apatb_param_m_axis_video_V_keep_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_m_axis_video_V_strb_V)->empty())
    __xlx_apatb_param_m_axis_video_V_strb_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_m_axis_video_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_video_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_m_axis_video_V_strb_V)->write(__xlx_apatb_param_m_axis_video_V_strb_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_m_axis_video_V_user_V)->empty())
    __xlx_apatb_param_m_axis_video_V_user_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_m_axis_video_V_user_V)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_video_V_user_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_m_axis_video_V_user_V)->write(__xlx_apatb_param_m_axis_video_V_user_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_m_axis_video_V_last_V)->empty())
    __xlx_apatb_param_m_axis_video_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_m_axis_video_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_video_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_m_axis_video_V_last_V)->write(__xlx_apatb_param_m_axis_video_V_last_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_m_axis_video_V_id_V)->empty())
    __xlx_apatb_param_m_axis_video_V_id_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_m_axis_video_V_id_V)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_video_V_id_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_m_axis_video_V_id_V)->write(__xlx_apatb_param_m_axis_video_V_id_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_m_axis_video_V_dest_V)->empty())
    __xlx_apatb_param_m_axis_video_V_dest_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_m_axis_video_V_dest_V)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_video_V_dest_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_m_axis_video_V_dest_V)->write(__xlx_apatb_param_m_axis_video_V_dest_V_stream_buf[i]);
  }
aesl_fh.write(AUTOTB_TVOUT_m_axis_video_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_m_axis_video_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_m_axis_video_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_m_axis_video_V_user_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_m_axis_video_V_last_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_m_axis_video_V_id_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_m_axis_video_V_dest_V, begin_str(AESL_transaction));
for (int i = 0; i < __xlx_apatb_param_m_axis_video_stream_buf_final_size; ++i) {
  std::string s;
s = formatData((unsigned char*)(__xlx_apatb_param_m_axis_video_V_data_V_stream_buf.data()+__xlx_apatb_param_m_axis_video_stream_buf_size+i), 24);
aesl_fh.write(AUTOTB_TVOUT_m_axis_video_V_data_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_m_axis_video_V_keep_V_stream_buf.data()+__xlx_apatb_param_m_axis_video_stream_buf_size+i), 3);
aesl_fh.write(AUTOTB_TVOUT_m_axis_video_V_keep_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_m_axis_video_V_strb_V_stream_buf.data()+__xlx_apatb_param_m_axis_video_stream_buf_size+i), 3);
aesl_fh.write(AUTOTB_TVOUT_m_axis_video_V_strb_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_m_axis_video_V_user_V_stream_buf.data()+__xlx_apatb_param_m_axis_video_stream_buf_size+i), 1);
aesl_fh.write(AUTOTB_TVOUT_m_axis_video_V_user_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_m_axis_video_V_last_V_stream_buf.data()+__xlx_apatb_param_m_axis_video_stream_buf_size+i), 1);
aesl_fh.write(AUTOTB_TVOUT_m_axis_video_V_last_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_m_axis_video_V_id_V_stream_buf.data()+__xlx_apatb_param_m_axis_video_stream_buf_size+i), 1);
aesl_fh.write(AUTOTB_TVOUT_m_axis_video_V_id_V, s);
s = formatData((unsigned char*)(__xlx_apatb_param_m_axis_video_V_dest_V_stream_buf.data()+__xlx_apatb_param_m_axis_video_stream_buf_size+i), 1);
aesl_fh.write(AUTOTB_TVOUT_m_axis_video_V_dest_V, s);
}
tcl_file.set_num(__xlx_apatb_param_m_axis_video_stream_buf_final_size, &tcl_file.m_axis_video_V_data_V_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_video_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_m_axis_video_stream_buf_final_size, &tcl_file.m_axis_video_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_video_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_m_axis_video_stream_buf_final_size, &tcl_file.m_axis_video_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_video_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_m_axis_video_stream_buf_final_size, &tcl_file.m_axis_video_V_user_V_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_video_V_user_V, end_str());
tcl_file.set_num(__xlx_apatb_param_m_axis_video_stream_buf_final_size, &tcl_file.m_axis_video_V_last_V_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_video_V_last_V, end_str());
tcl_file.set_num(__xlx_apatb_param_m_axis_video_stream_buf_final_size, &tcl_file.m_axis_video_V_id_V_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_video_V_id_V, end_str());
tcl_file.set_num(__xlx_apatb_param_m_axis_video_stream_buf_final_size, &tcl_file.m_axis_video_V_dest_V_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_video_V_dest_V, end_str());
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_video_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_video_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_video_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_user_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_video_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_user_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_user_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_video_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_last_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_id_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_video_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_id_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_id_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_dest_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_video_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_dest_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_dest_V, end_str());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
