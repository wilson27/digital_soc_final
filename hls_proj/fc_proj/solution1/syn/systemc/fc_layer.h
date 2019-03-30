// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _fc_layer_HH_
#define _fc_layer_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "fc_layer_fadd_32nbkb.h"
#include "fc_layer_fmul_32ncud.h"
#include "fc_layer_fcmp_32ndEe.h"
#include "fc_layer_mul_32s_eOg.h"
#include "fc_layer_mul_32nsfYi.h"
#include "fc_layer_add_64nsg8j.h"
#include "fc_layer_mul_31nshbi.h"
#include "fc_layer_CTRL_BUS_s_axi.h"
#include "fc_layer_mem_m_axi.h"

namespace ap_rtl {

template<unsigned int C_M_AXI_MEM_ADDR_WIDTH = 64,
         unsigned int C_M_AXI_MEM_ID_WIDTH = 1,
         unsigned int C_M_AXI_MEM_AWUSER_WIDTH = 1,
         unsigned int C_M_AXI_MEM_DATA_WIDTH = 32,
         unsigned int C_M_AXI_MEM_WUSER_WIDTH = 1,
         unsigned int C_M_AXI_MEM_ARUSER_WIDTH = 1,
         unsigned int C_M_AXI_MEM_RUSER_WIDTH = 1,
         unsigned int C_M_AXI_MEM_BUSER_WIDTH = 1,
         unsigned int C_S_AXI_CTRL_BUS_ADDR_WIDTH = 6,
         unsigned int C_S_AXI_CTRL_BUS_DATA_WIDTH = 32>
struct fc_layer : public sc_module {
    // Port declarations 65
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_out< sc_logic > m_axi_mem_AWVALID;
    sc_in< sc_logic > m_axi_mem_AWREADY;
    sc_out< sc_uint<C_M_AXI_MEM_ADDR_WIDTH> > m_axi_mem_AWADDR;
    sc_out< sc_uint<C_M_AXI_MEM_ID_WIDTH> > m_axi_mem_AWID;
    sc_out< sc_lv<8> > m_axi_mem_AWLEN;
    sc_out< sc_lv<3> > m_axi_mem_AWSIZE;
    sc_out< sc_lv<2> > m_axi_mem_AWBURST;
    sc_out< sc_lv<2> > m_axi_mem_AWLOCK;
    sc_out< sc_lv<4> > m_axi_mem_AWCACHE;
    sc_out< sc_lv<3> > m_axi_mem_AWPROT;
    sc_out< sc_lv<4> > m_axi_mem_AWQOS;
    sc_out< sc_lv<4> > m_axi_mem_AWREGION;
    sc_out< sc_uint<C_M_AXI_MEM_AWUSER_WIDTH> > m_axi_mem_AWUSER;
    sc_out< sc_logic > m_axi_mem_WVALID;
    sc_in< sc_logic > m_axi_mem_WREADY;
    sc_out< sc_uint<C_M_AXI_MEM_DATA_WIDTH> > m_axi_mem_WDATA;
    sc_out< sc_uint<C_M_AXI_MEM_DATA_WIDTH/8> > m_axi_mem_WSTRB;
    sc_out< sc_logic > m_axi_mem_WLAST;
    sc_out< sc_uint<C_M_AXI_MEM_ID_WIDTH> > m_axi_mem_WID;
    sc_out< sc_uint<C_M_AXI_MEM_WUSER_WIDTH> > m_axi_mem_WUSER;
    sc_out< sc_logic > m_axi_mem_ARVALID;
    sc_in< sc_logic > m_axi_mem_ARREADY;
    sc_out< sc_uint<C_M_AXI_MEM_ADDR_WIDTH> > m_axi_mem_ARADDR;
    sc_out< sc_uint<C_M_AXI_MEM_ID_WIDTH> > m_axi_mem_ARID;
    sc_out< sc_lv<8> > m_axi_mem_ARLEN;
    sc_out< sc_lv<3> > m_axi_mem_ARSIZE;
    sc_out< sc_lv<2> > m_axi_mem_ARBURST;
    sc_out< sc_lv<2> > m_axi_mem_ARLOCK;
    sc_out< sc_lv<4> > m_axi_mem_ARCACHE;
    sc_out< sc_lv<3> > m_axi_mem_ARPROT;
    sc_out< sc_lv<4> > m_axi_mem_ARQOS;
    sc_out< sc_lv<4> > m_axi_mem_ARREGION;
    sc_out< sc_uint<C_M_AXI_MEM_ARUSER_WIDTH> > m_axi_mem_ARUSER;
    sc_in< sc_logic > m_axi_mem_RVALID;
    sc_out< sc_logic > m_axi_mem_RREADY;
    sc_in< sc_uint<C_M_AXI_MEM_DATA_WIDTH> > m_axi_mem_RDATA;
    sc_in< sc_logic > m_axi_mem_RLAST;
    sc_in< sc_uint<C_M_AXI_MEM_ID_WIDTH> > m_axi_mem_RID;
    sc_in< sc_uint<C_M_AXI_MEM_RUSER_WIDTH> > m_axi_mem_RUSER;
    sc_in< sc_lv<2> > m_axi_mem_RRESP;
    sc_in< sc_logic > m_axi_mem_BVALID;
    sc_out< sc_logic > m_axi_mem_BREADY;
    sc_in< sc_lv<2> > m_axi_mem_BRESP;
    sc_in< sc_uint<C_M_AXI_MEM_ID_WIDTH> > m_axi_mem_BID;
    sc_in< sc_uint<C_M_AXI_MEM_BUSER_WIDTH> > m_axi_mem_BUSER;
    sc_in< sc_logic > s_axi_CTRL_BUS_AWVALID;
    sc_out< sc_logic > s_axi_CTRL_BUS_AWREADY;
    sc_in< sc_uint<C_S_AXI_CTRL_BUS_ADDR_WIDTH> > s_axi_CTRL_BUS_AWADDR;
    sc_in< sc_logic > s_axi_CTRL_BUS_WVALID;
    sc_out< sc_logic > s_axi_CTRL_BUS_WREADY;
    sc_in< sc_uint<C_S_AXI_CTRL_BUS_DATA_WIDTH> > s_axi_CTRL_BUS_WDATA;
    sc_in< sc_uint<C_S_AXI_CTRL_BUS_DATA_WIDTH/8> > s_axi_CTRL_BUS_WSTRB;
    sc_in< sc_logic > s_axi_CTRL_BUS_ARVALID;
    sc_out< sc_logic > s_axi_CTRL_BUS_ARREADY;
    sc_in< sc_uint<C_S_AXI_CTRL_BUS_ADDR_WIDTH> > s_axi_CTRL_BUS_ARADDR;
    sc_out< sc_logic > s_axi_CTRL_BUS_RVALID;
    sc_in< sc_logic > s_axi_CTRL_BUS_RREADY;
    sc_out< sc_uint<C_S_AXI_CTRL_BUS_DATA_WIDTH> > s_axi_CTRL_BUS_RDATA;
    sc_out< sc_lv<2> > s_axi_CTRL_BUS_RRESP;
    sc_out< sc_logic > s_axi_CTRL_BUS_BVALID;
    sc_in< sc_logic > s_axi_CTRL_BUS_BREADY;
    sc_out< sc_lv<2> > s_axi_CTRL_BUS_BRESP;
    sc_out< sc_logic > interrupt;
    sc_signal< sc_logic > ap_var_for_const0;
    sc_signal< sc_logic > ap_var_for_const6;
    sc_signal< sc_lv<32> > ap_var_for_const8;
    sc_signal< sc_lv<1> > ap_var_for_const1;
    sc_signal< sc_lv<32> > ap_var_for_const2;
    sc_signal< sc_lv<3> > ap_var_for_const3;
    sc_signal< sc_lv<2> > ap_var_for_const4;
    sc_signal< sc_lv<4> > ap_var_for_const5;
    sc_signal< sc_lv<4> > ap_var_for_const7;
    sc_signal< sc_lv<64> > ap_var_for_const9;


    // Module declarations
    fc_layer(sc_module_name name);
    SC_HAS_PROCESS(fc_layer);

    ~fc_layer();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    fc_layer_CTRL_BUS_s_axi<C_S_AXI_CTRL_BUS_ADDR_WIDTH,C_S_AXI_CTRL_BUS_DATA_WIDTH>* fc_layer_CTRL_BUS_s_axi_U;
    fc_layer_mem_m_axi<32,64,5,16,16,16,16,C_M_AXI_MEM_ID_WIDTH,C_M_AXI_MEM_ADDR_WIDTH,C_M_AXI_MEM_DATA_WIDTH,C_M_AXI_MEM_AWUSER_WIDTH,C_M_AXI_MEM_ARUSER_WIDTH,C_M_AXI_MEM_WUSER_WIDTH,C_M_AXI_MEM_RUSER_WIDTH,C_M_AXI_MEM_BUSER_WIDTH,C_M_AXI_MEM_TARGET_ADDR,C_M_AXI_MEM_USER_VALUE,C_M_AXI_MEM_PROT_VALUE,C_M_AXI_MEM_CACHE_VALUE>* fc_layer_mem_m_axi_U;
    fc_layer_fadd_32nbkb<1,13,32,32,32>* fc_layer_fadd_32nbkb_U0;
    fc_layer_fmul_32ncud<1,8,32,32,32>* fc_layer_fmul_32ncud_U1;
    fc_layer_fcmp_32ndEe<1,4,32,32,1>* fc_layer_fcmp_32ndEe_U2;
    fc_layer_mul_32s_eOg<1,7,32,32,32>* fc_layer_mul_32s_eOg_U3;
    fc_layer_mul_32nsfYi<1,7,32,32,64>* fc_layer_mul_32nsfYi_U4;
    fc_layer_add_64nsg8j<1,2,64,64,64>* fc_layer_add_64nsg8j_U5;
    fc_layer_mul_31nshbi<1,7,31,32,32>* fc_layer_mul_31nshbi_U6;
    fc_layer_mul_31nshbi<1,7,31,32,32>* fc_layer_mul_31nshbi_U7;
    fc_layer_mul_31nshbi<1,7,31,32,32>* fc_layer_mul_31nshbi_U8;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_logic > ap_start;
    sc_signal< sc_logic > ap_done;
    sc_signal< sc_logic > ap_idle;
    sc_signal< sc_lv<51> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > ap_ready;
    sc_signal< sc_lv<32> > input_offset;
    sc_signal< sc_lv<32> > output_offset;
    sc_signal< sc_lv<32> > batch_size;
    sc_signal< sc_lv<32> > num_inputs;
    sc_signal< sc_lv<32> > num_outputs;
    sc_signal< sc_lv<32> > enable_relu;
    sc_signal< sc_logic > mem_blk_n_AR;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< bool > ap_block_pp0_stage3_flag00000000;
    sc_signal< sc_lv<1> > tmp_5_reg_726;
    sc_signal< sc_logic > mem_blk_n_R;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage10;
    sc_signal< bool > ap_block_pp0_stage10_flag00000000;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage2_flag00000000;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter1_tmp_5_reg_726;
    sc_signal< sc_lv<1> > tmp_15_fu_445_p2;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage9;
    sc_signal< bool > ap_block_pp0_stage9_flag00000000;
    sc_signal< sc_lv<1> > tmp_15_reg_773;
    sc_signal< sc_logic > mem_blk_n_AW;
    sc_signal< sc_logic > ap_CS_fsm_state72;
    sc_signal< sc_logic > mem_blk_n_W;
    sc_signal< sc_logic > ap_CS_fsm_state73;
    sc_signal< sc_logic > mem_blk_n_B;
    sc_signal< sc_logic > ap_CS_fsm_state78;
    sc_signal< sc_lv<1> > tmp_1_reg_605;
    sc_signal< sc_logic > ap_CS_fsm_state79;
    sc_signal< sc_logic > ap_CS_fsm_state80;
    sc_signal< sc_logic > ap_CS_fsm_state85;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_logic > mem_AWVALID;
    sc_signal< sc_logic > mem_AWREADY;
    sc_signal< sc_lv<64> > mem_AWADDR;
    sc_signal< sc_logic > mem_WVALID;
    sc_signal< sc_logic > mem_WREADY;
    sc_signal< sc_lv<32> > mem_WDATA;
    sc_signal< sc_logic > mem_ARVALID;
    sc_signal< sc_logic > mem_ARREADY;
    sc_signal< sc_lv<64> > mem_ARADDR;
    sc_signal< sc_logic > mem_RVALID;
    sc_signal< sc_logic > mem_RREADY;
    sc_signal< sc_lv<32> > mem_RDATA;
    sc_signal< sc_logic > mem_RLAST;
    sc_signal< sc_lv<1> > mem_RID;
    sc_signal< sc_lv<1> > mem_RUSER;
    sc_signal< sc_lv<2> > mem_RRESP;
    sc_signal< sc_logic > mem_BVALID;
    sc_signal< sc_logic > mem_BREADY;
    sc_signal< sc_lv<2> > mem_BRESP;
    sc_signal< sc_lv<1> > mem_BID;
    sc_signal< sc_lv<1> > mem_BUSER;
    sc_signal< sc_lv<31> > i_reg_177;
    sc_signal< sc_lv<32> > tmp_8_reg_188;
    sc_signal< sc_lv<32> > grp_fu_230_p2;
    sc_signal< sc_lv<32> > reg_234;
    sc_signal< sc_logic > ap_CS_fsm_state68;
    sc_signal< sc_lv<32> > enable_relu_read_reg_564;
    sc_signal< sc_lv<32> > num_outputs_read_reg_569;
    sc_signal< sc_lv<32> > num_inputs_read_reg_577;
    sc_signal< sc_lv<30> > tmp_reg_585;
    sc_signal< sc_lv<30> > tmp_2_reg_590;
    sc_signal< sc_lv<1> > tmp_1_fu_285_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<32> > grp_fu_245_p2;
    sc_signal< sc_lv<32> > num_weights_reg_609;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<32> > tmp_3_fu_290_p1;
    sc_signal< sc_lv<32> > tmp_3_reg_615;
    sc_signal< sc_lv<32> > tmp_4_fu_293_p1;
    sc_signal< sc_lv<32> > tmp_4_reg_621;
    sc_signal< sc_lv<32> > tmp2_fu_296_p2;
    sc_signal< sc_lv<32> > tmp2_reg_626;
    sc_signal< sc_lv<64> > grp_fu_279_p2;
    sc_signal< sc_lv<64> > bound_reg_631;
    sc_signal< sc_lv<1> > tmp_7_fu_305_p2;
    sc_signal< sc_lv<1> > tmp_7_reg_636;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_310_p2;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_643;
    sc_signal< sc_lv<64> > grp_fu_315_p2;
    sc_signal< sc_lv<64> > indvar_flatten_next_reg_647;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<31> > b_s_fu_321_p2;
    sc_signal< sc_lv<31> > b_s_reg_652;
    sc_signal< sc_lv<31> > o_cast_mid2_fu_327_p3;
    sc_signal< sc_lv<31> > o_cast_mid2_reg_657;
    sc_signal< sc_lv<31> > tmp_4_mid2_v_v_fu_334_p3;
    sc_signal< sc_lv<31> > tmp_4_mid2_v_v_reg_662;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<32> > o_cast_mid2_cast_fu_340_p1;
    sc_signal< sc_lv<32> > o_cast_mid2_cast_reg_668;
    sc_signal< sc_lv<32> > tmp1_fu_343_p2;
    sc_signal< sc_lv<32> > tmp1_reg_674;
    sc_signal< sc_lv<32> > tmp_4_mid2_v_fu_348_p1;
    sc_signal< sc_lv<32> > tmp_4_mid2_v_reg_679;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<32> > tmp_9_fu_356_p2;
    sc_signal< sc_lv<32> > tmp_9_reg_685;
    sc_signal< sc_logic > ap_sig_ioackin_mem_ARREADY;
    sc_signal< sc_lv<32> > grp_fu_351_p2;
    sc_signal< sc_lv<32> > tmp_6_mid2_v_reg_696;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_lv<32> > tmp_6_mid2_fu_374_p2;
    sc_signal< sc_lv<32> > tmp_6_mid2_reg_701;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_lv<32> > output_element_reg_706;
    sc_signal< sc_lv<32> > grp_fu_366_p2;
    sc_signal< sc_lv<32> > tmp_4_mid2_reg_711;
    sc_signal< sc_logic > ap_CS_fsm_state20;
    sc_signal< sc_lv<32> > grp_fu_370_p2;
    sc_signal< sc_lv<32> > tmp_s_reg_716;
    sc_signal< sc_lv<32> > i_cast_fu_378_p1;
    sc_signal< sc_lv<32> > i_cast_reg_721;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state21_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state33_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state45_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state57_pp0_stage0_iter3;
    sc_signal< bool > ap_block_pp0_stage0_flag00011001;
    sc_signal< sc_lv<32> > ap_reg_pp0_iter1_i_cast_reg_721;
    sc_signal< sc_lv<1> > tmp_5_fu_382_p2;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter2_tmp_5_reg_726;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter3_tmp_5_reg_726;
    sc_signal< sc_lv<31> > i_1_fu_387_p2;
    sc_signal< sc_lv<31> > i_1_reg_730;
    sc_signal< sc_lv<32> > tmp4_fu_393_p2;
    sc_signal< sc_lv<32> > tmp4_reg_735;
    sc_signal< sc_lv<32> > tmp3_fu_398_p2;
    sc_signal< sc_lv<32> > tmp3_reg_740;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage1;
    sc_signal< bool > ap_block_state22_pp0_stage1_iter0;
    sc_signal< bool > ap_block_state34_pp0_stage1_iter1;
    sc_signal< bool > ap_block_state46_pp0_stage1_iter2;
    sc_signal< bool > ap_block_state58_pp0_stage1_iter3;
    sc_signal< bool > ap_block_pp0_stage1_flag00011001;
    sc_signal< sc_lv<32> > tmp_10_fu_402_p2;
    sc_signal< sc_lv<32> > tmp_10_reg_745;
    sc_signal< bool > ap_block_state23_pp0_stage2_iter0;
    sc_signal< bool > ap_block_state35_pp0_stage2_iter1;
    sc_signal< bool > ap_predicate_op211_readreq_state35;
    sc_signal< bool > ap_block_state35_io;
    sc_signal< bool > ap_block_state47_pp0_stage2_iter2;
    sc_signal< bool > ap_block_state59_pp0_stage2_iter3;
    sc_signal< bool > ap_block_pp0_stage2_flag00011001;
    sc_signal< bool > ap_block_state24_pp0_stage3_iter0;
    sc_signal< bool > ap_block_state24_io;
    sc_signal< bool > ap_block_state36_pp0_stage3_iter1;
    sc_signal< bool > ap_block_state48_pp0_stage3_iter2;
    sc_signal< bool > ap_block_state60_pp0_stage3_iter3;
    sc_signal< bool > ap_block_pp0_stage3_flag00011001;
    sc_signal< sc_lv<32> > input_element_reg_756;
    sc_signal< bool > ap_block_state31_pp0_stage10_iter0;
    sc_signal< bool > ap_block_state43_pp0_stage10_iter1;
    sc_signal< bool > ap_block_state55_pp0_stage10_iter2;
    sc_signal< bool > ap_block_state67_pp0_stage10_iter3;
    sc_signal< bool > ap_block_pp0_stage10_flag00011001;
    sc_signal< sc_lv<32> > ap_reg_pp0_iter1_input_element_reg_756;
    sc_signal< sc_lv<1> > notlhs8_fu_429_p2;
    sc_signal< sc_lv<1> > notlhs8_reg_763;
    sc_signal< sc_lv<1> > notrhs9_fu_435_p2;
    sc_signal< sc_lv<1> > notrhs9_reg_768;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter2_tmp_15_reg_773;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter3_tmp_15_reg_773;
    sc_signal< sc_lv<32> > weight_element_reg_783;
    sc_signal< bool > ap_block_state30_pp0_stage9_iter0;
    sc_signal< bool > ap_predicate_op218_read_state42;
    sc_signal< bool > ap_block_state42_pp0_stage9_iter1;
    sc_signal< bool > ap_block_state54_pp0_stage9_iter2;
    sc_signal< bool > ap_block_state66_pp0_stage9_iter3;
    sc_signal< bool > ap_block_pp0_stage9_flag00011001;
    sc_signal< sc_lv<1> > notlhs1_fu_484_p2;
    sc_signal< sc_lv<1> > notlhs1_reg_790;
    sc_signal< sc_lv<1> > notrhs1_fu_490_p2;
    sc_signal< sc_lv<1> > notrhs1_reg_795;
    sc_signal< sc_lv<1> > grp_fu_224_p2;
    sc_signal< sc_lv<1> > tmp_21_reg_800;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<1> > tmp_26_fu_500_p2;
    sc_signal< sc_lv<1> > tmp_26_reg_805;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter3_tmp_26_reg_805;
    sc_signal< sc_lv<32> > grp_fu_220_p2;
    sc_signal< sc_lv<32> > tmp_24_reg_809;
    sc_signal< sc_lv<1> > notlhs_fu_523_p2;
    sc_signal< sc_lv<1> > notlhs_reg_814;
    sc_signal< sc_logic > ap_CS_fsm_state71;
    sc_signal< sc_lv<1> > notrhs_fu_529_p2;
    sc_signal< sc_lv<1> > notrhs_reg_819;
    sc_signal< sc_lv<1> > tmp_30_reg_824;
    sc_signal< sc_lv<32> > tmp_22_fu_544_p3;
    sc_signal< sc_lv<32> > tmp_22_reg_829;
    sc_signal< sc_logic > ap_sig_ioackin_mem_AWREADY;
    sc_signal< sc_lv<31> > o_op_fu_552_p2;
    sc_signal< sc_lv<31> > o_op_reg_839;
    sc_signal< bool > ap_block_state78;
    sc_signal< sc_lv<31> > o_1_fu_558_p3;
    sc_signal< sc_logic > ap_CS_fsm_state86;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage11;
    sc_signal< bool > ap_block_state32_pp0_stage11_iter0;
    sc_signal< bool > ap_block_state44_pp0_stage11_iter1;
    sc_signal< bool > ap_block_state56_pp0_stage11_iter2;
    sc_signal< bool > ap_block_pp0_stage11_flag00011011;
    sc_signal< bool > ap_block_pp0_stage10_flag00011011;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter2_state55;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_lv<64> > indvar_flatten_reg_141;
    sc_signal< sc_lv<31> > o_reg_153;
    sc_signal< sc_lv<31> > b_reg_165;
    sc_signal< sc_lv<31> > i_phi_fu_181_p4;
    sc_signal< bool > ap_block_pp0_stage0_flag00000000;
    sc_signal< sc_lv<32> > tmp_8_phi_fu_192_p4;
    sc_signal< sc_lv<32> > tmp_25_phi_fu_203_p6;
    sc_signal< sc_lv<32> > ap_phi_precharge_reg_pp0_iter2_tmp_25_reg_199;
    sc_signal< sc_lv<32> > ap_phi_precharge_reg_pp0_iter3_tmp_25_reg_199;
    sc_signal< bool > ap_block_pp0_stage11_flag00011001;
    sc_signal< sc_lv<32> > grp_fu_214_p2;
    sc_signal< sc_lv<32> > tmp_16_fu_455_p2;
    sc_signal< sc_logic > ap_reg_ioackin_mem_ARREADY;
    sc_signal< bool > ap_block_pp0_stage3_flag00001001;
    sc_signal< bool > ap_block_pp0_stage2_flag00001001;
    sc_signal< sc_logic > ap_reg_ioackin_mem_AWREADY;
    sc_signal< sc_logic > ap_reg_ioackin_mem_WREADY;
    sc_signal< sc_logic > ap_sig_ioackin_mem_WREADY;
    sc_signal< sc_lv<32> > grp_fu_224_p0;
    sc_signal< bool > ap_block_pp0_stage11_flag00000000;
    sc_signal< sc_lv<32> > cast1_fu_275_p0;
    sc_signal< sc_lv<32> > grp_fu_279_p0;
    sc_signal< sc_lv<32> > grp_fu_279_p1;
    sc_signal< sc_lv<32> > o_cast_fu_301_p1;
    sc_signal< sc_lv<31> > grp_fu_351_p0;
    sc_signal< sc_lv<31> > grp_fu_366_p0;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<31> > grp_fu_370_p0;
    sc_signal< bool > ap_block_pp0_stage1_flag00000000;
    sc_signal< sc_lv<32> > input_element_to_int_fu_412_p1;
    sc_signal< sc_lv<8> > tmp_11_fu_415_p4;
    sc_signal< sc_lv<23> > tmp_12_fu_425_p1;
    sc_signal< sc_lv<1> > tmp_13_fu_441_p2;
    sc_signal< sc_lv<32> > tmp5_fu_451_p2;
    sc_signal< sc_lv<32> > weight_element_to_in_fu_467_p1;
    sc_signal< sc_lv<8> > tmp_17_fu_470_p4;
    sc_signal< sc_lv<23> > tmp_18_fu_480_p1;
    sc_signal< sc_lv<1> > tmp_19_fu_496_p2;
    sc_signal< sc_lv<32> > tmp_10_to_int_fu_505_p1;
    sc_signal< sc_lv<8> > tmp_27_fu_509_p4;
    sc_signal< sc_lv<23> > tmp_28_fu_519_p1;
    sc_signal< sc_lv<1> > tmp_29_fu_535_p2;
    sc_signal< sc_lv<1> > tmp_31_fu_539_p2;
    sc_signal< sc_logic > grp_fu_214_ce;
    sc_signal< bool > ap_block_state25_pp0_stage4_iter0;
    sc_signal< bool > ap_block_state37_pp0_stage4_iter1;
    sc_signal< bool > ap_block_state49_pp0_stage4_iter2;
    sc_signal< bool > ap_block_state61_pp0_stage4_iter3;
    sc_signal< bool > ap_block_pp0_stage4_flag00011001;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage4;
    sc_signal< bool > ap_block_state26_pp0_stage5_iter0;
    sc_signal< bool > ap_block_state38_pp0_stage5_iter1;
    sc_signal< bool > ap_block_state50_pp0_stage5_iter2;
    sc_signal< bool > ap_block_state62_pp0_stage5_iter3;
    sc_signal< bool > ap_block_pp0_stage5_flag00011001;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage5;
    sc_signal< bool > ap_block_state27_pp0_stage6_iter0;
    sc_signal< bool > ap_block_state39_pp0_stage6_iter1;
    sc_signal< bool > ap_block_state51_pp0_stage6_iter2;
    sc_signal< bool > ap_block_state63_pp0_stage6_iter3;
    sc_signal< bool > ap_block_pp0_stage6_flag00011001;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage6;
    sc_signal< bool > ap_block_state28_pp0_stage7_iter0;
    sc_signal< bool > ap_block_state40_pp0_stage7_iter1;
    sc_signal< bool > ap_block_state52_pp0_stage7_iter2;
    sc_signal< bool > ap_block_state64_pp0_stage7_iter3;
    sc_signal< bool > ap_block_pp0_stage7_flag00011001;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage7;
    sc_signal< bool > ap_block_state29_pp0_stage8_iter0;
    sc_signal< bool > ap_block_state41_pp0_stage8_iter1;
    sc_signal< bool > ap_block_state53_pp0_stage8_iter2;
    sc_signal< bool > ap_block_state65_pp0_stage8_iter3;
    sc_signal< bool > ap_block_pp0_stage8_flag00011001;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage8;
    sc_signal< sc_logic > grp_fu_220_ce;
    sc_signal< sc_logic > grp_fu_224_ce;
    sc_signal< bool > ap_predicate_op219_fcmp_state43;
    sc_signal< bool > ap_predicate_op227_fcmp_state46;
    sc_signal< sc_logic > ap_CS_fsm_state69;
    sc_signal< sc_logic > ap_CS_fsm_state70;
    sc_signal< sc_lv<5> > grp_fu_224_opcode;
    sc_signal< bool > ap_block_pp0_stage11_flag00000001;
    sc_signal< bool > ap_block_pp0_stage10_flag00000001;
    sc_signal< sc_logic > grp_fu_351_ce;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_logic > grp_fu_366_ce;
    sc_signal< sc_logic > grp_fu_370_ce;
    sc_signal< sc_lv<51> > ap_NS_fsm;
    sc_signal< bool > ap_block_pp0_stage0_flag00011011;
    sc_signal< bool > ap_block_pp0_stage1_flag00011011;
    sc_signal< bool > ap_block_pp0_stage2_flag00011011;
    sc_signal< bool > ap_block_pp0_stage3_flag00011011;
    sc_signal< bool > ap_block_pp0_stage4_flag00011011;
    sc_signal< bool > ap_block_pp0_stage5_flag00011011;
    sc_signal< bool > ap_block_pp0_stage6_flag00011011;
    sc_signal< bool > ap_block_pp0_stage7_flag00011011;
    sc_signal< bool > ap_block_pp0_stage8_flag00011011;
    sc_signal< bool > ap_block_pp0_stage9_flag00011011;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_lv<64> > grp_fu_279_p00;
    sc_signal< sc_lv<64> > grp_fu_279_p10;
    sc_signal< sc_lv<32> > grp_fu_351_p00;
    sc_signal< bool > ap_condition_767;
    sc_signal< bool > ap_condition_779;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<51> ap_ST_fsm_state1;
    static const sc_lv<51> ap_ST_fsm_state2;
    static const sc_lv<51> ap_ST_fsm_state3;
    static const sc_lv<51> ap_ST_fsm_state4;
    static const sc_lv<51> ap_ST_fsm_state5;
    static const sc_lv<51> ap_ST_fsm_state6;
    static const sc_lv<51> ap_ST_fsm_state7;
    static const sc_lv<51> ap_ST_fsm_state8;
    static const sc_lv<51> ap_ST_fsm_state9;
    static const sc_lv<51> ap_ST_fsm_state10;
    static const sc_lv<51> ap_ST_fsm_state11;
    static const sc_lv<51> ap_ST_fsm_state12;
    static const sc_lv<51> ap_ST_fsm_state13;
    static const sc_lv<51> ap_ST_fsm_state14;
    static const sc_lv<51> ap_ST_fsm_state15;
    static const sc_lv<51> ap_ST_fsm_state16;
    static const sc_lv<51> ap_ST_fsm_state17;
    static const sc_lv<51> ap_ST_fsm_state18;
    static const sc_lv<51> ap_ST_fsm_state19;
    static const sc_lv<51> ap_ST_fsm_state20;
    static const sc_lv<51> ap_ST_fsm_pp0_stage0;
    static const sc_lv<51> ap_ST_fsm_pp0_stage1;
    static const sc_lv<51> ap_ST_fsm_pp0_stage2;
    static const sc_lv<51> ap_ST_fsm_pp0_stage3;
    static const sc_lv<51> ap_ST_fsm_pp0_stage4;
    static const sc_lv<51> ap_ST_fsm_pp0_stage5;
    static const sc_lv<51> ap_ST_fsm_pp0_stage6;
    static const sc_lv<51> ap_ST_fsm_pp0_stage7;
    static const sc_lv<51> ap_ST_fsm_pp0_stage8;
    static const sc_lv<51> ap_ST_fsm_pp0_stage9;
    static const sc_lv<51> ap_ST_fsm_pp0_stage10;
    static const sc_lv<51> ap_ST_fsm_pp0_stage11;
    static const sc_lv<51> ap_ST_fsm_state68;
    static const sc_lv<51> ap_ST_fsm_state69;
    static const sc_lv<51> ap_ST_fsm_state70;
    static const sc_lv<51> ap_ST_fsm_state71;
    static const sc_lv<51> ap_ST_fsm_state72;
    static const sc_lv<51> ap_ST_fsm_state73;
    static const sc_lv<51> ap_ST_fsm_state74;
    static const sc_lv<51> ap_ST_fsm_state75;
    static const sc_lv<51> ap_ST_fsm_state76;
    static const sc_lv<51> ap_ST_fsm_state77;
    static const sc_lv<51> ap_ST_fsm_state78;
    static const sc_lv<51> ap_ST_fsm_state79;
    static const sc_lv<51> ap_ST_fsm_state80;
    static const sc_lv<51> ap_ST_fsm_state81;
    static const sc_lv<51> ap_ST_fsm_state82;
    static const sc_lv<51> ap_ST_fsm_state83;
    static const sc_lv<51> ap_ST_fsm_state84;
    static const sc_lv<51> ap_ST_fsm_state85;
    static const sc_lv<51> ap_ST_fsm_state86;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_17;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1D;
    static const sc_lv<32> ap_const_lv32_24;
    static const sc_lv<32> ap_const_lv32_25;
    static const sc_lv<32> ap_const_lv32_2A;
    static const sc_lv<32> ap_const_lv32_2B;
    static const sc_lv<32> ap_const_lv32_2C;
    static const sc_lv<32> ap_const_lv32_31;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_12;
    static const int C_S_AXI_DATA_WIDTH;
    static const int C_M_AXI_MEM_TARGET_ADDR;
    static const int C_M_AXI_MEM_USER_VALUE;
    static const int C_M_AXI_MEM_PROT_VALUE;
    static const int C_M_AXI_MEM_CACHE_VALUE;
    static const int C_M_AXI_DATA_WIDTH;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_23;
    static const sc_lv<32> ap_const_lv32_32;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<31> ap_const_lv31_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<4> ap_const_lv4_F;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<64> ap_const_lv64_1;
    static const sc_lv<31> ap_const_lv31_1;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<23> ap_const_lv23_0;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<32> ap_const_lv32_21;
    static const sc_lv<32> ap_const_lv32_22;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<5> ap_const_lv5_2;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_F;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const6();
    void thread_ap_var_for_const8();
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const2();
    void thread_ap_var_for_const3();
    void thread_ap_var_for_const4();
    void thread_ap_var_for_const5();
    void thread_ap_var_for_const7();
    void thread_ap_var_for_const9();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp0_stage1();
    void thread_ap_CS_fsm_pp0_stage10();
    void thread_ap_CS_fsm_pp0_stage11();
    void thread_ap_CS_fsm_pp0_stage2();
    void thread_ap_CS_fsm_pp0_stage3();
    void thread_ap_CS_fsm_pp0_stage4();
    void thread_ap_CS_fsm_pp0_stage5();
    void thread_ap_CS_fsm_pp0_stage6();
    void thread_ap_CS_fsm_pp0_stage7();
    void thread_ap_CS_fsm_pp0_stage8();
    void thread_ap_CS_fsm_pp0_stage9();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state18();
    void thread_ap_CS_fsm_state19();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state20();
    void thread_ap_CS_fsm_state68();
    void thread_ap_CS_fsm_state69();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state70();
    void thread_ap_CS_fsm_state71();
    void thread_ap_CS_fsm_state72();
    void thread_ap_CS_fsm_state73();
    void thread_ap_CS_fsm_state78();
    void thread_ap_CS_fsm_state79();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state80();
    void thread_ap_CS_fsm_state85();
    void thread_ap_CS_fsm_state86();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_pp0_stage0_flag00000000();
    void thread_ap_block_pp0_stage0_flag00011001();
    void thread_ap_block_pp0_stage0_flag00011011();
    void thread_ap_block_pp0_stage10_flag00000000();
    void thread_ap_block_pp0_stage10_flag00000001();
    void thread_ap_block_pp0_stage10_flag00011001();
    void thread_ap_block_pp0_stage10_flag00011011();
    void thread_ap_block_pp0_stage11_flag00000000();
    void thread_ap_block_pp0_stage11_flag00000001();
    void thread_ap_block_pp0_stage11_flag00011001();
    void thread_ap_block_pp0_stage11_flag00011011();
    void thread_ap_block_pp0_stage1_flag00000000();
    void thread_ap_block_pp0_stage1_flag00011001();
    void thread_ap_block_pp0_stage1_flag00011011();
    void thread_ap_block_pp0_stage2_flag00000000();
    void thread_ap_block_pp0_stage2_flag00001001();
    void thread_ap_block_pp0_stage2_flag00011001();
    void thread_ap_block_pp0_stage2_flag00011011();
    void thread_ap_block_pp0_stage3_flag00000000();
    void thread_ap_block_pp0_stage3_flag00001001();
    void thread_ap_block_pp0_stage3_flag00011001();
    void thread_ap_block_pp0_stage3_flag00011011();
    void thread_ap_block_pp0_stage4_flag00011001();
    void thread_ap_block_pp0_stage4_flag00011011();
    void thread_ap_block_pp0_stage5_flag00011001();
    void thread_ap_block_pp0_stage5_flag00011011();
    void thread_ap_block_pp0_stage6_flag00011001();
    void thread_ap_block_pp0_stage6_flag00011011();
    void thread_ap_block_pp0_stage7_flag00011001();
    void thread_ap_block_pp0_stage7_flag00011011();
    void thread_ap_block_pp0_stage8_flag00011001();
    void thread_ap_block_pp0_stage8_flag00011011();
    void thread_ap_block_pp0_stage9_flag00000000();
    void thread_ap_block_pp0_stage9_flag00011001();
    void thread_ap_block_pp0_stage9_flag00011011();
    void thread_ap_block_state21_pp0_stage0_iter0();
    void thread_ap_block_state22_pp0_stage1_iter0();
    void thread_ap_block_state23_pp0_stage2_iter0();
    void thread_ap_block_state24_io();
    void thread_ap_block_state24_pp0_stage3_iter0();
    void thread_ap_block_state25_pp0_stage4_iter0();
    void thread_ap_block_state26_pp0_stage5_iter0();
    void thread_ap_block_state27_pp0_stage6_iter0();
    void thread_ap_block_state28_pp0_stage7_iter0();
    void thread_ap_block_state29_pp0_stage8_iter0();
    void thread_ap_block_state30_pp0_stage9_iter0();
    void thread_ap_block_state31_pp0_stage10_iter0();
    void thread_ap_block_state32_pp0_stage11_iter0();
    void thread_ap_block_state33_pp0_stage0_iter1();
    void thread_ap_block_state34_pp0_stage1_iter1();
    void thread_ap_block_state35_io();
    void thread_ap_block_state35_pp0_stage2_iter1();
    void thread_ap_block_state36_pp0_stage3_iter1();
    void thread_ap_block_state37_pp0_stage4_iter1();
    void thread_ap_block_state38_pp0_stage5_iter1();
    void thread_ap_block_state39_pp0_stage6_iter1();
    void thread_ap_block_state40_pp0_stage7_iter1();
    void thread_ap_block_state41_pp0_stage8_iter1();
    void thread_ap_block_state42_pp0_stage9_iter1();
    void thread_ap_block_state43_pp0_stage10_iter1();
    void thread_ap_block_state44_pp0_stage11_iter1();
    void thread_ap_block_state45_pp0_stage0_iter2();
    void thread_ap_block_state46_pp0_stage1_iter2();
    void thread_ap_block_state47_pp0_stage2_iter2();
    void thread_ap_block_state48_pp0_stage3_iter2();
    void thread_ap_block_state49_pp0_stage4_iter2();
    void thread_ap_block_state50_pp0_stage5_iter2();
    void thread_ap_block_state51_pp0_stage6_iter2();
    void thread_ap_block_state52_pp0_stage7_iter2();
    void thread_ap_block_state53_pp0_stage8_iter2();
    void thread_ap_block_state54_pp0_stage9_iter2();
    void thread_ap_block_state55_pp0_stage10_iter2();
    void thread_ap_block_state56_pp0_stage11_iter2();
    void thread_ap_block_state57_pp0_stage0_iter3();
    void thread_ap_block_state58_pp0_stage1_iter3();
    void thread_ap_block_state59_pp0_stage2_iter3();
    void thread_ap_block_state60_pp0_stage3_iter3();
    void thread_ap_block_state61_pp0_stage4_iter3();
    void thread_ap_block_state62_pp0_stage5_iter3();
    void thread_ap_block_state63_pp0_stage6_iter3();
    void thread_ap_block_state64_pp0_stage7_iter3();
    void thread_ap_block_state65_pp0_stage8_iter3();
    void thread_ap_block_state66_pp0_stage9_iter3();
    void thread_ap_block_state67_pp0_stage10_iter3();
    void thread_ap_block_state78();
    void thread_ap_condition_767();
    void thread_ap_condition_779();
    void thread_ap_condition_pp0_exit_iter2_state55();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_precharge_reg_pp0_iter2_tmp_25_reg_199();
    void thread_ap_predicate_op211_readreq_state35();
    void thread_ap_predicate_op218_read_state42();
    void thread_ap_predicate_op219_fcmp_state43();
    void thread_ap_predicate_op227_fcmp_state46();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_ap_sig_ioackin_mem_ARREADY();
    void thread_ap_sig_ioackin_mem_AWREADY();
    void thread_ap_sig_ioackin_mem_WREADY();
    void thread_b_s_fu_321_p2();
    void thread_cast1_fu_275_p0();
    void thread_exitcond_flatten_fu_310_p2();
    void thread_grp_fu_214_ce();
    void thread_grp_fu_220_ce();
    void thread_grp_fu_224_ce();
    void thread_grp_fu_224_opcode();
    void thread_grp_fu_224_p0();
    void thread_grp_fu_230_p2();
    void thread_grp_fu_279_p0();
    void thread_grp_fu_279_p00();
    void thread_grp_fu_279_p1();
    void thread_grp_fu_279_p10();
    void thread_grp_fu_351_ce();
    void thread_grp_fu_351_p0();
    void thread_grp_fu_351_p00();
    void thread_grp_fu_366_ce();
    void thread_grp_fu_366_p0();
    void thread_grp_fu_370_ce();
    void thread_grp_fu_370_p0();
    void thread_i_1_fu_387_p2();
    void thread_i_cast_fu_378_p1();
    void thread_i_phi_fu_181_p4();
    void thread_input_element_to_int_fu_412_p1();
    void thread_mem_ARADDR();
    void thread_mem_ARVALID();
    void thread_mem_AWADDR();
    void thread_mem_AWVALID();
    void thread_mem_BREADY();
    void thread_mem_RREADY();
    void thread_mem_WDATA();
    void thread_mem_WVALID();
    void thread_mem_blk_n_AR();
    void thread_mem_blk_n_AW();
    void thread_mem_blk_n_B();
    void thread_mem_blk_n_R();
    void thread_mem_blk_n_W();
    void thread_notlhs1_fu_484_p2();
    void thread_notlhs8_fu_429_p2();
    void thread_notlhs_fu_523_p2();
    void thread_notrhs1_fu_490_p2();
    void thread_notrhs9_fu_435_p2();
    void thread_notrhs_fu_529_p2();
    void thread_o_1_fu_558_p3();
    void thread_o_cast_fu_301_p1();
    void thread_o_cast_mid2_cast_fu_340_p1();
    void thread_o_cast_mid2_fu_327_p3();
    void thread_o_op_fu_552_p2();
    void thread_tmp1_fu_343_p2();
    void thread_tmp2_fu_296_p2();
    void thread_tmp3_fu_398_p2();
    void thread_tmp4_fu_393_p2();
    void thread_tmp5_fu_451_p2();
    void thread_tmp_10_fu_402_p2();
    void thread_tmp_10_to_int_fu_505_p1();
    void thread_tmp_11_fu_415_p4();
    void thread_tmp_12_fu_425_p1();
    void thread_tmp_13_fu_441_p2();
    void thread_tmp_15_fu_445_p2();
    void thread_tmp_16_fu_455_p2();
    void thread_tmp_17_fu_470_p4();
    void thread_tmp_18_fu_480_p1();
    void thread_tmp_19_fu_496_p2();
    void thread_tmp_1_fu_285_p2();
    void thread_tmp_22_fu_544_p3();
    void thread_tmp_25_phi_fu_203_p6();
    void thread_tmp_26_fu_500_p2();
    void thread_tmp_27_fu_509_p4();
    void thread_tmp_28_fu_519_p1();
    void thread_tmp_29_fu_535_p2();
    void thread_tmp_31_fu_539_p2();
    void thread_tmp_3_fu_290_p1();
    void thread_tmp_4_fu_293_p1();
    void thread_tmp_4_mid2_v_fu_348_p1();
    void thread_tmp_4_mid2_v_v_fu_334_p3();
    void thread_tmp_5_fu_382_p2();
    void thread_tmp_6_mid2_fu_374_p2();
    void thread_tmp_7_fu_305_p2();
    void thread_tmp_8_phi_fu_192_p4();
    void thread_tmp_9_fu_356_p2();
    void thread_weight_element_to_in_fu_467_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif