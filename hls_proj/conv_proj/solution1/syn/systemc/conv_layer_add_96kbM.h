// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __conv_layer_add_96kbM__HH__
#define __conv_layer_add_96kbM__HH__
#include "ACMP_add.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(conv_layer_add_96kbM) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_add<ID, 2, din0_WIDTH, din1_WIDTH, dout_WIDTH> ACMP_add_U;

    SC_CTOR(conv_layer_add_96kbM):  ACMP_add_U ("ACMP_add_U") {
        ACMP_add_U.clk(clk);
        ACMP_add_U.reset(reset);
        ACMP_add_U.ce(ce);
        ACMP_add_U.din0(din0);
        ACMP_add_U.din1(din1);
        ACMP_add_U.dout(dout);

    }

};

#endif //
