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
#include "fc_layer_CTRL_BUS_s_axi.h"
#include "fc_layer_mem_m_axi.h"

namespace ap_rtl {

template<unsigned int C_M_AXI_MEM_ADDR_WIDTH = 32,
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
    sc_signal< sc_lv<5> > ap_var_for_const9;


    // Module declarations
    fc_layer(sc_module_name name);
    SC_HAS_PROCESS(fc_layer);

    ~fc_layer();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    fc_layer_CTRL_BUS_s_axi<C_S_AXI_CTRL_BUS_ADDR_WIDTH,C_S_AXI_CTRL_BUS_DATA_WIDTH>* fc_layer_CTRL_BUS_s_axi_U;
    fc_layer_mem_m_axi<32,32,5,16,16,16,16,C_M_AXI_MEM_ID_WIDTH,C_M_AXI_MEM_ADDR_WIDTH,C_M_AXI_MEM_DATA_WIDTH,C_M_AXI_MEM_AWUSER_WIDTH,C_M_AXI_MEM_ARUSER_WIDTH,C_M_AXI_MEM_WUSER_WIDTH,C_M_AXI_MEM_RUSER_WIDTH,C_M_AXI_MEM_BUSER_WIDTH,C_M_AXI_MEM_TARGET_ADDR,C_M_AXI_MEM_USER_VALUE,C_M_AXI_MEM_PROT_VALUE,C_M_AXI_MEM_CACHE_VALUE>* fc_layer_mem_m_axi_U;
    fc_layer_fadd_32nbkb<1,13,32,32,32>* fc_layer_fadd_32nbkb_U0;
    fc_layer_fmul_32ncud<1,8,32,32,32>* fc_layer_fmul_32ncud_U1;
    fc_layer_fcmp_32ndEe<1,4,32,32,1>* fc_layer_fcmp_32ndEe_U2;
    fc_layer_mul_32s_eOg<1,7,32,32,32>* fc_layer_mul_32s_eOg_U3;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_logic > ap_start;
    sc_signal< sc_logic > ap_done;
    sc_signal< sc_logic > ap_idle;
    sc_signal< sc_lv<69> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > ap_ready;
    sc_signal< sc_lv<32> > input_offset;
    sc_signal< sc_lv<32> > output_offset;
    sc_signal< sc_lv<32> > batch_size;
    sc_signal< sc_lv<32> > num_inputs;
    sc_signal< sc_lv<32> > num_outputs;
    sc_signal< sc_lv<32> > enable_relu;
    sc_signal< sc_logic > mem_blk_n_AR;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > mem_blk_n_R;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_logic > ap_CS_fsm_state23;
    sc_signal< sc_logic > ap_CS_fsm_state30;
    sc_signal< sc_logic > ap_CS_fsm_state24;
    sc_signal< sc_logic > ap_CS_fsm_state31;
    sc_signal< sc_logic > mem_blk_n_AW;
    sc_signal< sc_logic > ap_CS_fsm_state56;
    sc_signal< sc_logic > mem_blk_n_W;
    sc_signal< sc_logic > ap_CS_fsm_state57;
    sc_signal< sc_logic > mem_blk_n_B;
    sc_signal< sc_logic > ap_CS_fsm_state62;
    sc_signal< sc_lv<1> > tmp_1_reg_477;
    sc_signal< sc_logic > ap_CS_fsm_state63;
    sc_signal< sc_logic > ap_CS_fsm_state64;
    sc_signal< sc_logic > ap_CS_fsm_state69;
    sc_signal< sc_logic > mem_AWVALID;
    sc_signal< sc_logic > mem_AWREADY;
    sc_signal< sc_logic > mem_WVALID;
    sc_signal< sc_logic > mem_WREADY;
    sc_signal< sc_lv<32> > mem_WDATA;
    sc_signal< sc_logic > mem_ARVALID;
    sc_signal< sc_logic > mem_ARREADY;
    sc_signal< sc_lv<32> > mem_ARADDR;
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
    sc_signal< sc_lv<32> > grp_fu_221_p2;
    sc_signal< sc_lv<32> > reg_225;
    sc_signal< sc_logic > ap_CS_fsm_state20;
    sc_signal< sc_lv<1> > tmp_5_fu_347_p2;
    sc_signal< sc_lv<32> > enable_relu_read_reg_441;
    sc_signal< sc_lv<32> > num_outputs_read_reg_446;
    sc_signal< sc_lv<32> > num_inputs_read_reg_454;
    sc_signal< sc_lv<32> > batch_size_read_reg_462;
    sc_signal< sc_lv<30> > tmp_reg_467;
    sc_signal< sc_lv<30> > tmp_2_reg_472;
    sc_signal< sc_lv<1> > tmp_1_fu_262_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<32> > grp_fu_236_p2;
    sc_signal< sc_lv<32> > num_weights_reg_481;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<32> > tmp_s_fu_267_p1;
    sc_signal< sc_lv<32> > tmp_s_reg_487;
    sc_signal< sc_lv<32> > tmp_4_fu_270_p1;
    sc_signal< sc_lv<32> > tmp_4_reg_493;
    sc_signal< sc_lv<32> > tmp2_fu_273_p2;
    sc_signal< sc_lv<32> > tmp2_reg_498;
    sc_signal< sc_lv<32> > next_mul4_fu_278_p2;
    sc_signal< sc_lv<32> > next_mul4_reg_503;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<32> > next_mul2_fu_283_p2;
    sc_signal< sc_lv<32> > next_mul2_reg_508;
    sc_signal< sc_lv<31> > b_1_fu_297_p2;
    sc_signal< sc_lv<31> > b_1_reg_516;
    sc_signal< sc_lv<32> > tmp_6_fu_303_p2;
    sc_signal< sc_lv<32> > tmp_6_reg_521;
    sc_signal< sc_lv<1> > tmp_3_fu_292_p2;
    sc_signal< sc_lv<32> > next_mul_fu_308_p2;
    sc_signal< sc_lv<32> > next_mul_reg_526;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<32> > o_cast_fu_313_p1;
    sc_signal< sc_lv<32> > o_cast_reg_531;
    sc_signal< sc_lv<31> > o_1_fu_322_p2;
    sc_signal< sc_lv<31> > o_1_reg_539;
    sc_signal< sc_lv<32> > tmp1_fu_328_p2;
    sc_signal< sc_lv<32> > tmp1_reg_544;
    sc_signal< sc_lv<1> > tmp_7_fu_317_p2;
    sc_signal< sc_lv<32> > tmp_9_fu_333_p2;
    sc_signal< sc_lv<32> > tmp_9_reg_549;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_logic > ap_sig_ioackin_mem_ARREADY;
    sc_signal< sc_lv<32> > output_element_reg_560;
    sc_signal< sc_lv<31> > i_1_fu_352_p2;
    sc_signal< sc_lv<31> > i_1_reg_568;
    sc_signal< sc_lv<32> > tmp4_fu_358_p2;
    sc_signal< sc_lv<32> > tmp4_reg_573;
    sc_signal< sc_lv<32> > tmp5_fu_364_p2;
    sc_signal< sc_lv<32> > tmp5_reg_578;
    sc_signal< sc_lv<32> > tmp3_fu_369_p2;
    sc_signal< sc_lv<32> > tmp3_reg_583;
    sc_signal< sc_logic > ap_CS_fsm_state21;
    sc_signal< sc_lv<32> > tmp_11_fu_373_p2;
    sc_signal< sc_lv<32> > tmp_11_reg_588;
    sc_signal< sc_lv<32> > tmp_10_fu_378_p2;
    sc_signal< sc_lv<32> > tmp_10_reg_593;
    sc_signal< sc_logic > ap_CS_fsm_state22;
    sc_signal< sc_lv<32> > input_element_reg_610;
    sc_signal< sc_lv<32> > weight_element_reg_615;
    sc_signal< sc_lv<32> > grp_fu_211_p2;
    sc_signal< sc_lv<32> > tmp_12_reg_620;
    sc_signal< sc_logic > ap_CS_fsm_state39;
    sc_signal< sc_lv<32> > grp_fu_206_p2;
    sc_signal< sc_logic > ap_CS_fsm_state52;
    sc_signal< sc_lv<1> > notlhs_fu_412_p2;
    sc_signal< sc_lv<1> > notlhs_reg_630;
    sc_signal< sc_logic > ap_CS_fsm_state55;
    sc_signal< sc_lv<1> > notrhs_fu_418_p2;
    sc_signal< sc_lv<1> > notrhs_reg_635;
    sc_signal< sc_lv<1> > grp_fu_215_p2;
    sc_signal< sc_lv<1> > tmp_17_reg_640;
    sc_signal< sc_lv<32> > tmp_19_fu_433_p3;
    sc_signal< sc_lv<32> > tmp_19_reg_645;
    sc_signal< sc_logic > ap_sig_ioackin_mem_AWREADY;
    sc_signal< sc_lv<31> > b_reg_127;
    sc_signal< sc_lv<32> > phi_mul1_reg_138;
    sc_signal< sc_lv<32> > phi_mul3_reg_150;
    sc_signal< sc_lv<31> > o_reg_161;
    sc_signal< bool > ap_block_state62;
    sc_signal< sc_lv<32> > phi_mul_reg_172;
    sc_signal< sc_lv<32> > tmp_8_reg_184;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_lv<31> > i_reg_195;
    sc_signal< sc_logic > ap_reg_ioackin_mem_ARREADY;
    sc_signal< sc_logic > ap_reg_ioackin_mem_AWREADY;
    sc_signal< sc_logic > ap_reg_ioackin_mem_WREADY;
    sc_signal< sc_logic > ap_sig_ioackin_mem_WREADY;
    sc_signal< sc_logic > ap_CS_fsm_state40;
    sc_signal< sc_logic > ap_CS_fsm_state32;
    sc_signal< sc_lv<32> > b_cast_fu_288_p1;
    sc_signal< sc_lv<32> > i_cast_fu_343_p1;
    sc_signal< sc_lv<32> > tmp_10_to_int_fu_394_p1;
    sc_signal< sc_lv<8> > tmp_14_fu_398_p4;
    sc_signal< sc_lv<23> > tmp_15_fu_408_p1;
    sc_signal< sc_lv<1> > tmp_16_fu_424_p2;
    sc_signal< sc_lv<1> > tmp_18_fu_428_p2;
    sc_signal< sc_lv<69> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<69> ap_ST_fsm_state1;
    static const sc_lv<69> ap_ST_fsm_state2;
    static const sc_lv<69> ap_ST_fsm_state3;
    static const sc_lv<69> ap_ST_fsm_state4;
    static const sc_lv<69> ap_ST_fsm_state5;
    static const sc_lv<69> ap_ST_fsm_state6;
    static const sc_lv<69> ap_ST_fsm_state7;
    static const sc_lv<69> ap_ST_fsm_state8;
    static const sc_lv<69> ap_ST_fsm_state9;
    static const sc_lv<69> ap_ST_fsm_state10;
    static const sc_lv<69> ap_ST_fsm_state11;
    static const sc_lv<69> ap_ST_fsm_state12;
    static const sc_lv<69> ap_ST_fsm_state13;
    static const sc_lv<69> ap_ST_fsm_state14;
    static const sc_lv<69> ap_ST_fsm_state15;
    static const sc_lv<69> ap_ST_fsm_state16;
    static const sc_lv<69> ap_ST_fsm_state17;
    static const sc_lv<69> ap_ST_fsm_state18;
    static const sc_lv<69> ap_ST_fsm_state19;
    static const sc_lv<69> ap_ST_fsm_state20;
    static const sc_lv<69> ap_ST_fsm_state21;
    static const sc_lv<69> ap_ST_fsm_state22;
    static const sc_lv<69> ap_ST_fsm_state23;
    static const sc_lv<69> ap_ST_fsm_state24;
    static const sc_lv<69> ap_ST_fsm_state25;
    static const sc_lv<69> ap_ST_fsm_state26;
    static const sc_lv<69> ap_ST_fsm_state27;
    static const sc_lv<69> ap_ST_fsm_state28;
    static const sc_lv<69> ap_ST_fsm_state29;
    static const sc_lv<69> ap_ST_fsm_state30;
    static const sc_lv<69> ap_ST_fsm_state31;
    static const sc_lv<69> ap_ST_fsm_state32;
    static const sc_lv<69> ap_ST_fsm_state33;
    static const sc_lv<69> ap_ST_fsm_state34;
    static const sc_lv<69> ap_ST_fsm_state35;
    static const sc_lv<69> ap_ST_fsm_state36;
    static const sc_lv<69> ap_ST_fsm_state37;
    static const sc_lv<69> ap_ST_fsm_state38;
    static const sc_lv<69> ap_ST_fsm_state39;
    static const sc_lv<69> ap_ST_fsm_state40;
    static const sc_lv<69> ap_ST_fsm_state41;
    static const sc_lv<69> ap_ST_fsm_state42;
    static const sc_lv<69> ap_ST_fsm_state43;
    static const sc_lv<69> ap_ST_fsm_state44;
    static const sc_lv<69> ap_ST_fsm_state45;
    static const sc_lv<69> ap_ST_fsm_state46;
    static const sc_lv<69> ap_ST_fsm_state47;
    static const sc_lv<69> ap_ST_fsm_state48;
    static const sc_lv<69> ap_ST_fsm_state49;
    static const sc_lv<69> ap_ST_fsm_state50;
    static const sc_lv<69> ap_ST_fsm_state51;
    static const sc_lv<69> ap_ST_fsm_state52;
    static const sc_lv<69> ap_ST_fsm_state53;
    static const sc_lv<69> ap_ST_fsm_state54;
    static const sc_lv<69> ap_ST_fsm_state55;
    static const sc_lv<69> ap_ST_fsm_state56;
    static const sc_lv<69> ap_ST_fsm_state57;
    static const sc_lv<69> ap_ST_fsm_state58;
    static const sc_lv<69> ap_ST_fsm_state59;
    static const sc_lv<69> ap_ST_fsm_state60;
    static const sc_lv<69> ap_ST_fsm_state61;
    static const sc_lv<69> ap_ST_fsm_state62;
    static const sc_lv<69> ap_ST_fsm_state63;
    static const sc_lv<69> ap_ST_fsm_state64;
    static const sc_lv<69> ap_ST_fsm_state65;
    static const sc_lv<69> ap_ST_fsm_state66;
    static const sc_lv<69> ap_ST_fsm_state67;
    static const sc_lv<69> ap_ST_fsm_state68;
    static const sc_lv<69> ap_ST_fsm_state69;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_1D;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<32> ap_const_lv32_37;
    static const sc_lv<32> ap_const_lv32_38;
    static const sc_lv<32> ap_const_lv32_3D;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3E;
    static const sc_lv<32> ap_const_lv32_3F;
    static const sc_lv<32> ap_const_lv32_44;
    static const int C_S_AXI_DATA_WIDTH;
    static const int C_M_AXI_MEM_TARGET_ADDR;
    static const int C_M_AXI_MEM_USER_VALUE;
    static const int C_M_AXI_MEM_PROT_VALUE;
    static const int C_M_AXI_MEM_CACHE_VALUE;
    static const int C_M_AXI_DATA_WIDTH;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_26;
    static const sc_lv<32> ap_const_lv32_33;
    static const sc_lv<32> ap_const_lv32_36;
    static const sc_lv<31> ap_const_lv31_0;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<4> ap_const_lv4_F;
    static const sc_lv<32> ap_const_lv32_27;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<31> ap_const_lv31_1;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<23> ap_const_lv23_0;
    static const sc_lv<5> ap_const_lv5_2;
    static const bool ap_const_boolean_1;
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
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state18();
    void thread_ap_CS_fsm_state19();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state20();
    void thread_ap_CS_fsm_state21();
    void thread_ap_CS_fsm_state22();
    void thread_ap_CS_fsm_state23();
    void thread_ap_CS_fsm_state24();
    void thread_ap_CS_fsm_state30();
    void thread_ap_CS_fsm_state31();
    void thread_ap_CS_fsm_state32();
    void thread_ap_CS_fsm_state39();
    void thread_ap_CS_fsm_state40();
    void thread_ap_CS_fsm_state52();
    void thread_ap_CS_fsm_state55();
    void thread_ap_CS_fsm_state56();
    void thread_ap_CS_fsm_state57();
    void thread_ap_CS_fsm_state62();
    void thread_ap_CS_fsm_state63();
    void thread_ap_CS_fsm_state64();
    void thread_ap_CS_fsm_state69();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_state62();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_ap_sig_ioackin_mem_ARREADY();
    void thread_ap_sig_ioackin_mem_AWREADY();
    void thread_ap_sig_ioackin_mem_WREADY();
    void thread_b_1_fu_297_p2();
    void thread_b_cast_fu_288_p1();
    void thread_grp_fu_221_p2();
    void thread_i_1_fu_352_p2();
    void thread_i_cast_fu_343_p1();
    void thread_mem_ARADDR();
    void thread_mem_ARVALID();
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
    void thread_next_mul2_fu_283_p2();
    void thread_next_mul4_fu_278_p2();
    void thread_next_mul_fu_308_p2();
    void thread_notlhs_fu_412_p2();
    void thread_notrhs_fu_418_p2();
    void thread_o_1_fu_322_p2();
    void thread_o_cast_fu_313_p1();
    void thread_tmp1_fu_328_p2();
    void thread_tmp2_fu_273_p2();
    void thread_tmp3_fu_369_p2();
    void thread_tmp4_fu_358_p2();
    void thread_tmp5_fu_364_p2();
    void thread_tmp_10_fu_378_p2();
    void thread_tmp_10_to_int_fu_394_p1();
    void thread_tmp_11_fu_373_p2();
    void thread_tmp_14_fu_398_p4();
    void thread_tmp_15_fu_408_p1();
    void thread_tmp_16_fu_424_p2();
    void thread_tmp_18_fu_428_p2();
    void thread_tmp_19_fu_433_p3();
    void thread_tmp_1_fu_262_p2();
    void thread_tmp_3_fu_292_p2();
    void thread_tmp_4_fu_270_p1();
    void thread_tmp_5_fu_347_p2();
    void thread_tmp_6_fu_303_p2();
    void thread_tmp_7_fu_317_p2();
    void thread_tmp_9_fu_333_p2();
    void thread_tmp_s_fu_267_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
