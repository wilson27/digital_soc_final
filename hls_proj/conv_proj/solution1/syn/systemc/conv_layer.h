// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _conv_layer_HH_
#define _conv_layer_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "conv_layer_fadd_3bkb.h"
#include "conv_layer_fmul_3cud.h"
#include "conv_layer_fcmp_3dEe.h"
#include "conv_layer_mul_32eOg.h"
#include "conv_layer_CTRL_BUS_s_axi.h"
#include "conv_layer_mem_m_axi.h"

namespace ap_rtl {

template<unsigned int C_M_AXI_MEM_ADDR_WIDTH = 32,
         unsigned int C_M_AXI_MEM_ID_WIDTH = 1,
         unsigned int C_M_AXI_MEM_AWUSER_WIDTH = 1,
         unsigned int C_M_AXI_MEM_DATA_WIDTH = 32,
         unsigned int C_M_AXI_MEM_WUSER_WIDTH = 1,
         unsigned int C_M_AXI_MEM_ARUSER_WIDTH = 1,
         unsigned int C_M_AXI_MEM_RUSER_WIDTH = 1,
         unsigned int C_M_AXI_MEM_BUSER_WIDTH = 1,
         unsigned int C_S_AXI_CTRL_BUS_ADDR_WIDTH = 7,
         unsigned int C_S_AXI_CTRL_BUS_DATA_WIDTH = 32>
struct conv_layer : public sc_module {
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
    conv_layer(sc_module_name name);
    SC_HAS_PROCESS(conv_layer);

    ~conv_layer();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    conv_layer_CTRL_BUS_s_axi<C_S_AXI_CTRL_BUS_ADDR_WIDTH,C_S_AXI_CTRL_BUS_DATA_WIDTH>* conv_layer_CTRL_BUS_s_axi_U;
    conv_layer_mem_m_axi<32,32,5,16,16,16,16,C_M_AXI_MEM_ID_WIDTH,C_M_AXI_MEM_ADDR_WIDTH,C_M_AXI_MEM_DATA_WIDTH,C_M_AXI_MEM_AWUSER_WIDTH,C_M_AXI_MEM_ARUSER_WIDTH,C_M_AXI_MEM_WUSER_WIDTH,C_M_AXI_MEM_RUSER_WIDTH,C_M_AXI_MEM_BUSER_WIDTH,C_M_AXI_MEM_TARGET_ADDR,C_M_AXI_MEM_USER_VALUE,C_M_AXI_MEM_PROT_VALUE,C_M_AXI_MEM_CACHE_VALUE>* conv_layer_mem_m_axi_U;
    conv_layer_fadd_3bkb<1,13,32,32,32>* conv_layer_fadd_3bkb_U0;
    conv_layer_fmul_3cud<1,8,32,32,32>* conv_layer_fmul_3cud_U1;
    conv_layer_fcmp_3dEe<1,4,32,32,1>* conv_layer_fcmp_3dEe_U2;
    conv_layer_mul_32eOg<1,7,32,32,32>* conv_layer_mul_32eOg_U3;
    conv_layer_mul_32eOg<1,7,32,32,32>* conv_layer_mul_32eOg_U4;
    conv_layer_mul_32eOg<1,7,32,32,32>* conv_layer_mul_32eOg_U5;
    conv_layer_mul_32eOg<1,7,32,32,32>* conv_layer_mul_32eOg_U6;
    conv_layer_mul_32eOg<1,7,32,32,32>* conv_layer_mul_32eOg_U7;
    conv_layer_mul_32eOg<1,7,32,32,32>* conv_layer_mul_32eOg_U8;
    conv_layer_mul_32eOg<1,7,32,32,32>* conv_layer_mul_32eOg_U9;
    conv_layer_mul_32eOg<1,7,32,32,32>* conv_layer_mul_32eOg_U10;
    conv_layer_mul_32eOg<1,7,32,32,32>* conv_layer_mul_32eOg_U11;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_logic > ap_start;
    sc_signal< sc_logic > ap_done;
    sc_signal< sc_logic > ap_idle;
    sc_signal< sc_lv<117> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > ap_ready;
    sc_signal< sc_lv<32> > input_offset;
    sc_signal< sc_lv<32> > output_offset;
    sc_signal< sc_lv<32> > b;
    sc_signal< sc_lv<32> > od;
    sc_signal< sc_lv<32> > ox;
    sc_signal< sc_lv<32> > oy;
    sc_signal< sc_lv<32> > id;
    sc_signal< sc_lv<32> > ix;
    sc_signal< sc_lv<32> > iy;
    sc_signal< sc_lv<32> > s;
    sc_signal< sc_lv<32> > k;
    sc_signal< sc_logic > mem_blk_n_AR;
    sc_signal< sc_logic > ap_CS_fsm_state32;
    sc_signal< sc_lv<1> > tmp_6_fu_550_p2;
    sc_signal< sc_logic > mem_blk_n_R;
    sc_signal< sc_logic > ap_CS_fsm_state39;
    sc_signal< sc_logic > ap_CS_fsm_state60;
    sc_signal< sc_logic > ap_CS_fsm_state67;
    sc_signal< sc_logic > ap_CS_fsm_state75;
    sc_signal< sc_logic > ap_CS_fsm_state82;
    sc_signal< sc_logic > mem_blk_n_AW;
    sc_signal< sc_logic > ap_CS_fsm_state111;
    sc_signal< sc_logic > mem_blk_n_W;
    sc_signal< sc_logic > ap_CS_fsm_state112;
    sc_signal< sc_logic > mem_blk_n_B;
    sc_signal< sc_logic > ap_CS_fsm_state117;
    sc_signal< sc_logic > mem_AWVALID;
    sc_signal< sc_logic > mem_AWREADY;
    sc_signal< sc_logic > mem_WVALID;
    sc_signal< sc_logic > mem_WREADY;
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
    sc_signal< sc_lv<32> > k_read_reg_777;
    sc_signal< sc_lv<32> > s_read_reg_787;
    sc_signal< sc_lv<32> > iy_read_reg_793;
    sc_signal< sc_lv<32> > ix_read_reg_798;
    sc_signal< sc_lv<32> > id_read_reg_803;
    sc_signal< sc_lv<32> > oy_read_reg_811;
    sc_signal< sc_lv<32> > ox_read_reg_817;
    sc_signal< sc_lv<32> > od_read_reg_823;
    sc_signal< sc_lv<32> > b_read_reg_831;
    sc_signal< sc_lv<30> > tmp_2_reg_836;
    sc_signal< sc_lv<30> > tmp_3_reg_841;
    sc_signal< sc_lv<32> > grp_fu_391_p2;
    sc_signal< sc_lv<32> > tmp_reg_846;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<32> > grp_fu_397_p2;
    sc_signal< sc_lv<32> > tmp13_reg_851;
    sc_signal< sc_lv<32> > grp_fu_423_p2;
    sc_signal< sc_lv<32> > num_weights_reg_856;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<32> > tmp_s_fu_427_p1;
    sc_signal< sc_lv<32> > tmp_s_reg_862;
    sc_signal< sc_lv<32> > tmp_5_fu_430_p1;
    sc_signal< sc_lv<32> > tmp_5_reg_868;
    sc_signal< sc_lv<32> > tmp16_fu_433_p2;
    sc_signal< sc_lv<32> > tmp16_reg_873;
    sc_signal< sc_lv<32> > next_mul8_fu_438_p2;
    sc_signal< sc_lv<32> > next_mul8_reg_878;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<32> > next_mul6_fu_443_p2;
    sc_signal< sc_lv<32> > next_mul6_reg_883;
    sc_signal< sc_lv<31> > b_1_fu_457_p2;
    sc_signal< sc_lv<31> > b_1_reg_891;
    sc_signal< sc_lv<32> > next_mul4_fu_463_p2;
    sc_signal< sc_lv<32> > next_mul4_reg_896;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_lv<32> > o_d_cast_fu_468_p1;
    sc_signal< sc_lv<32> > o_d_cast_reg_901;
    sc_signal< sc_lv<31> > o_d_1_fu_477_p2;
    sc_signal< sc_lv<31> > o_d_1_reg_909;
    sc_signal< sc_lv<32> > tmp1_fu_483_p2;
    sc_signal< sc_lv<32> > tmp1_reg_914;
    sc_signal< sc_lv<1> > tmp_7_fu_472_p2;
    sc_signal< sc_lv<32> > tmp14_fu_493_p2;
    sc_signal< sc_lv<32> > tmp14_reg_919;
    sc_signal< sc_logic > ap_CS_fsm_state22;
    sc_signal< sc_lv<32> > mem_addr_reg_924;
    sc_signal< sc_logic > ap_CS_fsm_state23;
    sc_signal< sc_lv<32> > grp_fu_489_p2;
    sc_signal< sc_lv<32> > tmp2_reg_930;
    sc_signal< sc_lv<32> > next_mul2_fu_507_p2;
    sc_signal< sc_lv<32> > next_mul2_reg_935;
    sc_signal< sc_logic > ap_CS_fsm_state24;
    sc_signal< sc_lv<31> > o_y_1_fu_521_p2;
    sc_signal< sc_lv<31> > o_y_1_reg_943;
    sc_signal< sc_lv<32> > tmp7_fu_527_p2;
    sc_signal< sc_lv<32> > tmp7_reg_948;
    sc_signal< sc_lv<1> > tmp_1_fu_516_p2;
    sc_signal< sc_lv<32> > tmp_8_fu_536_p2;
    sc_signal< sc_lv<32> > tmp_8_reg_953;
    sc_signal< sc_logic > ap_CS_fsm_state31;
    sc_signal< sc_lv<32> > grp_fu_532_p2;
    sc_signal< sc_lv<32> > tmp12_reg_958;
    sc_signal< sc_lv<32> > next_mul_fu_541_p2;
    sc_signal< sc_lv<32> > next_mul_reg_963;
    sc_signal< sc_logic > ap_sig_ioackin_mem_ARREADY;
    sc_signal< bool > ap_block_state32_io;
    sc_signal< sc_lv<32> > o_x_cast_fu_546_p1;
    sc_signal< sc_lv<32> > o_x_cast_reg_968;
    sc_signal< sc_lv<31> > o_x_1_fu_555_p2;
    sc_signal< sc_lv<31> > o_x_1_reg_976;
    sc_signal< sc_lv<32> > output_element_reg_981;
    sc_signal< sc_lv<32> > tmp_10_fu_561_p2;
    sc_signal< sc_lv<32> > tmp_10_reg_986;
    sc_signal< sc_logic > ap_CS_fsm_state40;
    sc_signal< sc_lv<31> > i_d_1_fu_575_p2;
    sc_signal< sc_lv<31> > i_d_1_reg_994;
    sc_signal< sc_logic > ap_CS_fsm_state41;
    sc_signal< sc_lv<32> > tmp4_fu_581_p2;
    sc_signal< sc_lv<32> > tmp4_reg_999;
    sc_signal< sc_lv<1> > tmp_11_fu_570_p2;
    sc_signal< sc_lv<32> > tmp9_fu_587_p2;
    sc_signal< sc_lv<32> > tmp9_reg_1004;
    sc_signal< sc_lv<32> > tmp15_fu_593_p2;
    sc_signal< sc_lv<32> > tmp15_reg_1009;
    sc_signal< sc_lv<32> > grp_fu_597_p2;
    sc_signal< sc_lv<32> > tmp5_reg_1014;
    sc_signal< sc_logic > ap_CS_fsm_state48;
    sc_signal< sc_lv<32> > grp_fu_601_p2;
    sc_signal< sc_lv<32> > tmp10_reg_1019;
    sc_signal< sc_lv<32> > iiy_1_fu_610_p2;
    sc_signal< sc_lv<32> > iiy_1_reg_1027;
    sc_signal< sc_logic > ap_CS_fsm_state49;
    sc_signal< sc_lv<32> > tmp3_fu_616_p2;
    sc_signal< sc_lv<32> > tmp3_reg_1032;
    sc_signal< sc_lv<1> > tmp_13_fu_605_p2;
    sc_signal< sc_lv<32> > tmp8_fu_621_p2;
    sc_signal< sc_lv<32> > tmp8_reg_1037;
    sc_signal< sc_lv<32> > grp_fu_626_p2;
    sc_signal< sc_lv<32> > tmp6_reg_1042;
    sc_signal< sc_logic > ap_CS_fsm_state56;
    sc_signal< sc_lv<32> > grp_fu_630_p2;
    sc_signal< sc_lv<32> > tmp11_reg_1047;
    sc_signal< sc_lv<32> > iix_1_fu_639_p2;
    sc_signal< sc_lv<32> > iix_1_reg_1055;
    sc_signal< sc_logic > ap_CS_fsm_state57;
    sc_signal< sc_lv<32> > tmp17_fu_645_p2;
    sc_signal< sc_lv<32> > tmp17_reg_1060;
    sc_signal< sc_lv<1> > tmp_14_fu_634_p2;
    sc_signal< sc_lv<32> > i_y_1_fu_650_p2;
    sc_signal< sc_lv<32> > tmp18_fu_656_p2;
    sc_signal< sc_lv<32> > tmp18_reg_1070;
    sc_signal< sc_logic > ap_CS_fsm_state58;
    sc_signal< sc_lv<32> > tmp_15_fu_660_p2;
    sc_signal< sc_lv<32> > tmp_15_reg_1075;
    sc_signal< sc_logic > ap_CS_fsm_state59;
    sc_signal< sc_lv<32> > input_element_reg_1086;
    sc_signal< sc_lv<1> > notlhs_fu_687_p2;
    sc_signal< sc_lv<1> > notlhs_reg_1093;
    sc_signal< sc_logic > ap_CS_fsm_state71;
    sc_signal< sc_lv<1> > notrhs_fu_693_p2;
    sc_signal< sc_lv<1> > notrhs_reg_1098;
    sc_signal< sc_lv<1> > grp_fu_386_p2;
    sc_signal< sc_lv<1> > tmp_21_reg_1103;
    sc_signal< sc_lv<1> > tmp_22_fu_703_p2;
    sc_signal< sc_lv<1> > tmp_22_reg_1108;
    sc_signal< sc_logic > ap_CS_fsm_state72;
    sc_signal< sc_lv<32> > tmp20_fu_708_p2;
    sc_signal< sc_lv<32> > tmp20_reg_1112;
    sc_signal< sc_logic > ap_CS_fsm_state73;
    sc_signal< sc_lv<32> > tmp_17_fu_713_p2;
    sc_signal< sc_lv<32> > tmp_17_reg_1117;
    sc_signal< sc_logic > ap_CS_fsm_state74;
    sc_signal< sc_lv<32> > weight_element_reg_1128;
    sc_signal< sc_lv<1> > notlhs1_fu_740_p2;
    sc_signal< sc_lv<1> > notlhs1_reg_1135;
    sc_signal< sc_logic > ap_CS_fsm_state86;
    sc_signal< sc_lv<1> > notrhs1_fu_746_p2;
    sc_signal< sc_lv<1> > notrhs1_reg_1140;
    sc_signal< sc_lv<1> > tmp_26_reg_1145;
    sc_signal< sc_lv<1> > tmp_27_fu_756_p2;
    sc_signal< sc_lv<1> > tmp_27_reg_1150;
    sc_signal< sc_logic > ap_CS_fsm_state87;
    sc_signal< sc_lv<32> > grp_fu_382_p2;
    sc_signal< sc_lv<32> > tmp_18_reg_1154;
    sc_signal< sc_logic > ap_CS_fsm_state95;
    sc_signal< sc_lv<32> > grp_fu_377_p2;
    sc_signal< sc_lv<32> > output_element_3_reg_1159;
    sc_signal< sc_logic > ap_CS_fsm_state108;
    sc_signal< sc_lv<32> > i_x_1_fu_761_p2;
    sc_signal< sc_logic > ap_CS_fsm_state109;
    sc_signal< sc_lv<32> > tmp_12_fu_767_p2;
    sc_signal< sc_lv<32> > tmp_12_reg_1169;
    sc_signal< sc_logic > ap_CS_fsm_state110;
    sc_signal< sc_logic > ap_sig_ioackin_mem_AWREADY;
    sc_signal< sc_lv<31> > b_s_reg_167;
    sc_signal< sc_lv<32> > phi_mul5_reg_178;
    sc_signal< sc_lv<32> > phi_mul7_reg_190;
    sc_signal< sc_lv<31> > o_d_reg_202;
    sc_signal< sc_lv<1> > tmp_4_fu_452_p2;
    sc_signal< sc_lv<32> > phi_mul3_reg_213;
    sc_signal< sc_lv<31> > o_y_reg_225;
    sc_signal< sc_lv<32> > i_y_reg_236;
    sc_signal< sc_lv<31> > o_x_reg_248;
    sc_signal< sc_lv<32> > i_x_reg_259;
    sc_signal< sc_lv<32> > output_element1_reg_271;
    sc_signal< sc_lv<31> > i_d_reg_282;
    sc_signal< sc_lv<32> > output_element_1_reg_293;
    sc_signal< sc_lv<32> > i_y1_reg_305;
    sc_signal< sc_lv<32> > iiy_reg_316;
    sc_signal< sc_lv<32> > output_element_2_reg_327;
    sc_signal< sc_lv<32> > output_element_4_phi_fu_366_p6;
    sc_signal< sc_lv<32> > i_x1_reg_339;
    sc_signal< sc_lv<32> > iix_reg_350;
    sc_signal< sc_lv<32> > output_element_4_reg_362;
    sc_signal< sc_logic > ap_CS_fsm_state88;
    sc_signal< sc_lv<32> > tmp_9_fu_497_p2;
    sc_signal< sc_logic > ap_reg_ioackin_mem_ARREADY;
    sc_signal< sc_logic > ap_reg_ioackin_mem_AWREADY;
    sc_signal< sc_logic > ap_reg_ioackin_mem_WREADY;
    sc_signal< sc_logic > ap_sig_ioackin_mem_WREADY;
    sc_signal< sc_logic > ap_CS_fsm_state96;
    sc_signal< sc_lv<32> > grp_fu_386_p0;
    sc_signal< sc_logic > ap_CS_fsm_state68;
    sc_signal< sc_logic > ap_CS_fsm_state83;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<32> > b_cast_fu_448_p1;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_lv<32> > o_y_cast_fu_512_p1;
    sc_signal< sc_logic > ap_CS_fsm_state25;
    sc_signal< sc_lv<32> > i_d_cast_fu_566_p1;
    sc_signal< sc_logic > ap_CS_fsm_state42;
    sc_signal< sc_logic > ap_CS_fsm_state50;
    sc_signal< sc_lv<32> > input_element_to_int_fu_670_p1;
    sc_signal< sc_lv<8> > tmp_16_fu_673_p4;
    sc_signal< sc_lv<23> > tmp_19_fu_683_p1;
    sc_signal< sc_lv<1> > tmp_20_fu_699_p2;
    sc_signal< sc_lv<32> > weight_element_to_in_fu_723_p1;
    sc_signal< sc_lv<8> > tmp_23_fu_726_p4;
    sc_signal< sc_lv<23> > tmp_24_fu_736_p1;
    sc_signal< sc_lv<1> > tmp_25_fu_752_p2;
    sc_signal< sc_lv<117> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<117> ap_ST_fsm_state1;
    static const sc_lv<117> ap_ST_fsm_state2;
    static const sc_lv<117> ap_ST_fsm_state3;
    static const sc_lv<117> ap_ST_fsm_state4;
    static const sc_lv<117> ap_ST_fsm_state5;
    static const sc_lv<117> ap_ST_fsm_state6;
    static const sc_lv<117> ap_ST_fsm_state7;
    static const sc_lv<117> ap_ST_fsm_state8;
    static const sc_lv<117> ap_ST_fsm_state9;
    static const sc_lv<117> ap_ST_fsm_state10;
    static const sc_lv<117> ap_ST_fsm_state11;
    static const sc_lv<117> ap_ST_fsm_state12;
    static const sc_lv<117> ap_ST_fsm_state13;
    static const sc_lv<117> ap_ST_fsm_state14;
    static const sc_lv<117> ap_ST_fsm_state15;
    static const sc_lv<117> ap_ST_fsm_state16;
    static const sc_lv<117> ap_ST_fsm_state17;
    static const sc_lv<117> ap_ST_fsm_state18;
    static const sc_lv<117> ap_ST_fsm_state19;
    static const sc_lv<117> ap_ST_fsm_state20;
    static const sc_lv<117> ap_ST_fsm_state21;
    static const sc_lv<117> ap_ST_fsm_state22;
    static const sc_lv<117> ap_ST_fsm_state23;
    static const sc_lv<117> ap_ST_fsm_state24;
    static const sc_lv<117> ap_ST_fsm_state25;
    static const sc_lv<117> ap_ST_fsm_state26;
    static const sc_lv<117> ap_ST_fsm_state27;
    static const sc_lv<117> ap_ST_fsm_state28;
    static const sc_lv<117> ap_ST_fsm_state29;
    static const sc_lv<117> ap_ST_fsm_state30;
    static const sc_lv<117> ap_ST_fsm_state31;
    static const sc_lv<117> ap_ST_fsm_state32;
    static const sc_lv<117> ap_ST_fsm_state33;
    static const sc_lv<117> ap_ST_fsm_state34;
    static const sc_lv<117> ap_ST_fsm_state35;
    static const sc_lv<117> ap_ST_fsm_state36;
    static const sc_lv<117> ap_ST_fsm_state37;
    static const sc_lv<117> ap_ST_fsm_state38;
    static const sc_lv<117> ap_ST_fsm_state39;
    static const sc_lv<117> ap_ST_fsm_state40;
    static const sc_lv<117> ap_ST_fsm_state41;
    static const sc_lv<117> ap_ST_fsm_state42;
    static const sc_lv<117> ap_ST_fsm_state43;
    static const sc_lv<117> ap_ST_fsm_state44;
    static const sc_lv<117> ap_ST_fsm_state45;
    static const sc_lv<117> ap_ST_fsm_state46;
    static const sc_lv<117> ap_ST_fsm_state47;
    static const sc_lv<117> ap_ST_fsm_state48;
    static const sc_lv<117> ap_ST_fsm_state49;
    static const sc_lv<117> ap_ST_fsm_state50;
    static const sc_lv<117> ap_ST_fsm_state51;
    static const sc_lv<117> ap_ST_fsm_state52;
    static const sc_lv<117> ap_ST_fsm_state53;
    static const sc_lv<117> ap_ST_fsm_state54;
    static const sc_lv<117> ap_ST_fsm_state55;
    static const sc_lv<117> ap_ST_fsm_state56;
    static const sc_lv<117> ap_ST_fsm_state57;
    static const sc_lv<117> ap_ST_fsm_state58;
    static const sc_lv<117> ap_ST_fsm_state59;
    static const sc_lv<117> ap_ST_fsm_state60;
    static const sc_lv<117> ap_ST_fsm_state61;
    static const sc_lv<117> ap_ST_fsm_state62;
    static const sc_lv<117> ap_ST_fsm_state63;
    static const sc_lv<117> ap_ST_fsm_state64;
    static const sc_lv<117> ap_ST_fsm_state65;
    static const sc_lv<117> ap_ST_fsm_state66;
    static const sc_lv<117> ap_ST_fsm_state67;
    static const sc_lv<117> ap_ST_fsm_state68;
    static const sc_lv<117> ap_ST_fsm_state69;
    static const sc_lv<117> ap_ST_fsm_state70;
    static const sc_lv<117> ap_ST_fsm_state71;
    static const sc_lv<117> ap_ST_fsm_state72;
    static const sc_lv<117> ap_ST_fsm_state73;
    static const sc_lv<117> ap_ST_fsm_state74;
    static const sc_lv<117> ap_ST_fsm_state75;
    static const sc_lv<117> ap_ST_fsm_state76;
    static const sc_lv<117> ap_ST_fsm_state77;
    static const sc_lv<117> ap_ST_fsm_state78;
    static const sc_lv<117> ap_ST_fsm_state79;
    static const sc_lv<117> ap_ST_fsm_state80;
    static const sc_lv<117> ap_ST_fsm_state81;
    static const sc_lv<117> ap_ST_fsm_state82;
    static const sc_lv<117> ap_ST_fsm_state83;
    static const sc_lv<117> ap_ST_fsm_state84;
    static const sc_lv<117> ap_ST_fsm_state85;
    static const sc_lv<117> ap_ST_fsm_state86;
    static const sc_lv<117> ap_ST_fsm_state87;
    static const sc_lv<117> ap_ST_fsm_state88;
    static const sc_lv<117> ap_ST_fsm_state89;
    static const sc_lv<117> ap_ST_fsm_state90;
    static const sc_lv<117> ap_ST_fsm_state91;
    static const sc_lv<117> ap_ST_fsm_state92;
    static const sc_lv<117> ap_ST_fsm_state93;
    static const sc_lv<117> ap_ST_fsm_state94;
    static const sc_lv<117> ap_ST_fsm_state95;
    static const sc_lv<117> ap_ST_fsm_state96;
    static const sc_lv<117> ap_ST_fsm_state97;
    static const sc_lv<117> ap_ST_fsm_state98;
    static const sc_lv<117> ap_ST_fsm_state99;
    static const sc_lv<117> ap_ST_fsm_state100;
    static const sc_lv<117> ap_ST_fsm_state101;
    static const sc_lv<117> ap_ST_fsm_state102;
    static const sc_lv<117> ap_ST_fsm_state103;
    static const sc_lv<117> ap_ST_fsm_state104;
    static const sc_lv<117> ap_ST_fsm_state105;
    static const sc_lv<117> ap_ST_fsm_state106;
    static const sc_lv<117> ap_ST_fsm_state107;
    static const sc_lv<117> ap_ST_fsm_state108;
    static const sc_lv<117> ap_ST_fsm_state109;
    static const sc_lv<117> ap_ST_fsm_state110;
    static const sc_lv<117> ap_ST_fsm_state111;
    static const sc_lv<117> ap_ST_fsm_state112;
    static const sc_lv<117> ap_ST_fsm_state113;
    static const sc_lv<117> ap_ST_fsm_state114;
    static const sc_lv<117> ap_ST_fsm_state115;
    static const sc_lv<117> ap_ST_fsm_state116;
    static const sc_lv<117> ap_ST_fsm_state117;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_26;
    static const sc_lv<32> ap_const_lv32_3B;
    static const sc_lv<32> ap_const_lv32_42;
    static const sc_lv<32> ap_const_lv32_4A;
    static const sc_lv<32> ap_const_lv32_51;
    static const sc_lv<32> ap_const_lv32_6E;
    static const sc_lv<32> ap_const_lv32_6F;
    static const sc_lv<32> ap_const_lv32_74;
    static const int C_S_AXI_DATA_WIDTH;
    static const int C_M_AXI_MEM_TARGET_ADDR;
    static const int C_M_AXI_MEM_USER_VALUE;
    static const int C_M_AXI_MEM_PROT_VALUE;
    static const int C_M_AXI_MEM_CACHE_VALUE;
    static const int C_M_AXI_DATA_WIDTH;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_1E;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_27;
    static const sc_lv<32> ap_const_lv32_28;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2F;
    static const sc_lv<32> ap_const_lv32_30;
    static const sc_lv<32> ap_const_lv32_37;
    static const sc_lv<32> ap_const_lv32_38;
    static const sc_lv<32> ap_const_lv32_39;
    static const sc_lv<32> ap_const_lv32_3A;
    static const sc_lv<32> ap_const_lv32_46;
    static const sc_lv<32> ap_const_lv32_47;
    static const sc_lv<32> ap_const_lv32_48;
    static const sc_lv<32> ap_const_lv32_49;
    static const sc_lv<32> ap_const_lv32_55;
    static const sc_lv<32> ap_const_lv32_56;
    static const sc_lv<32> ap_const_lv32_5E;
    static const sc_lv<32> ap_const_lv32_6B;
    static const sc_lv<32> ap_const_lv32_6C;
    static const sc_lv<32> ap_const_lv32_6D;
    static const sc_lv<31> ap_const_lv31_0;
    static const sc_lv<32> ap_const_lv32_57;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<4> ap_const_lv4_F;
    static const sc_lv<32> ap_const_lv32_5F;
    static const sc_lv<32> ap_const_lv32_43;
    static const sc_lv<32> ap_const_lv32_52;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<31> ap_const_lv31_1;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_29;
    static const sc_lv<32> ap_const_lv32_31;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<23> ap_const_lv23_0;
    static const sc_lv<5> ap_const_lv5_1;
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
    void thread_ap_CS_fsm_state108();
    void thread_ap_CS_fsm_state109();
    void thread_ap_CS_fsm_state110();
    void thread_ap_CS_fsm_state111();
    void thread_ap_CS_fsm_state112();
    void thread_ap_CS_fsm_state117();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state22();
    void thread_ap_CS_fsm_state23();
    void thread_ap_CS_fsm_state24();
    void thread_ap_CS_fsm_state25();
    void thread_ap_CS_fsm_state31();
    void thread_ap_CS_fsm_state32();
    void thread_ap_CS_fsm_state39();
    void thread_ap_CS_fsm_state40();
    void thread_ap_CS_fsm_state41();
    void thread_ap_CS_fsm_state42();
    void thread_ap_CS_fsm_state48();
    void thread_ap_CS_fsm_state49();
    void thread_ap_CS_fsm_state50();
    void thread_ap_CS_fsm_state56();
    void thread_ap_CS_fsm_state57();
    void thread_ap_CS_fsm_state58();
    void thread_ap_CS_fsm_state59();
    void thread_ap_CS_fsm_state60();
    void thread_ap_CS_fsm_state67();
    void thread_ap_CS_fsm_state68();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state71();
    void thread_ap_CS_fsm_state72();
    void thread_ap_CS_fsm_state73();
    void thread_ap_CS_fsm_state74();
    void thread_ap_CS_fsm_state75();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state82();
    void thread_ap_CS_fsm_state83();
    void thread_ap_CS_fsm_state86();
    void thread_ap_CS_fsm_state87();
    void thread_ap_CS_fsm_state88();
    void thread_ap_CS_fsm_state95();
    void thread_ap_CS_fsm_state96();
    void thread_ap_block_state32_io();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_ap_sig_ioackin_mem_ARREADY();
    void thread_ap_sig_ioackin_mem_AWREADY();
    void thread_ap_sig_ioackin_mem_WREADY();
    void thread_b_1_fu_457_p2();
    void thread_b_cast_fu_448_p1();
    void thread_grp_fu_386_p0();
    void thread_i_d_1_fu_575_p2();
    void thread_i_d_cast_fu_566_p1();
    void thread_i_x_1_fu_761_p2();
    void thread_i_y_1_fu_650_p2();
    void thread_iix_1_fu_639_p2();
    void thread_iiy_1_fu_610_p2();
    void thread_input_element_to_int_fu_670_p1();
    void thread_mem_ARADDR();
    void thread_mem_ARVALID();
    void thread_mem_AWVALID();
    void thread_mem_BREADY();
    void thread_mem_RREADY();
    void thread_mem_WVALID();
    void thread_mem_blk_n_AR();
    void thread_mem_blk_n_AW();
    void thread_mem_blk_n_B();
    void thread_mem_blk_n_R();
    void thread_mem_blk_n_W();
    void thread_next_mul2_fu_507_p2();
    void thread_next_mul4_fu_463_p2();
    void thread_next_mul6_fu_443_p2();
    void thread_next_mul8_fu_438_p2();
    void thread_next_mul_fu_541_p2();
    void thread_notlhs1_fu_740_p2();
    void thread_notlhs_fu_687_p2();
    void thread_notrhs1_fu_746_p2();
    void thread_notrhs_fu_693_p2();
    void thread_o_d_1_fu_477_p2();
    void thread_o_d_cast_fu_468_p1();
    void thread_o_x_1_fu_555_p2();
    void thread_o_x_cast_fu_546_p1();
    void thread_o_y_1_fu_521_p2();
    void thread_o_y_cast_fu_512_p1();
    void thread_output_element_4_phi_fu_366_p6();
    void thread_tmp14_fu_493_p2();
    void thread_tmp15_fu_593_p2();
    void thread_tmp16_fu_433_p2();
    void thread_tmp17_fu_645_p2();
    void thread_tmp18_fu_656_p2();
    void thread_tmp1_fu_483_p2();
    void thread_tmp20_fu_708_p2();
    void thread_tmp3_fu_616_p2();
    void thread_tmp4_fu_581_p2();
    void thread_tmp7_fu_527_p2();
    void thread_tmp8_fu_621_p2();
    void thread_tmp9_fu_587_p2();
    void thread_tmp_10_fu_561_p2();
    void thread_tmp_11_fu_570_p2();
    void thread_tmp_12_fu_767_p2();
    void thread_tmp_13_fu_605_p2();
    void thread_tmp_14_fu_634_p2();
    void thread_tmp_15_fu_660_p2();
    void thread_tmp_16_fu_673_p4();
    void thread_tmp_17_fu_713_p2();
    void thread_tmp_19_fu_683_p1();
    void thread_tmp_1_fu_516_p2();
    void thread_tmp_20_fu_699_p2();
    void thread_tmp_22_fu_703_p2();
    void thread_tmp_23_fu_726_p4();
    void thread_tmp_24_fu_736_p1();
    void thread_tmp_25_fu_752_p2();
    void thread_tmp_27_fu_756_p2();
    void thread_tmp_4_fu_452_p2();
    void thread_tmp_5_fu_430_p1();
    void thread_tmp_6_fu_550_p2();
    void thread_tmp_7_fu_472_p2();
    void thread_tmp_8_fu_536_p2();
    void thread_tmp_9_fu_497_p2();
    void thread_tmp_s_fu_427_p1();
    void thread_weight_element_to_in_fu_723_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
