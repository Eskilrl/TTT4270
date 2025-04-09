// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed Apr  9 13:20:35 2025
// Host        : eskilrl-Yoga-Pro-9-14IRP8 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force ./out//netlist.v -mode timesim -sdf_anno true
// Design      : top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module CounterModule
   (l_valid_1,
    Q,
    \DataOut_reg[7]_0 ,
    pmod_OBUF_BUFG,
    reset_led_OBUF,
    D,
    \FSM_onehot_mainState_reg[0]_0 ,
    signalReg__0,
    triggReg__0,
    \FSM_onehot_mainState_reg[2]_0 ,
    done);
  output l_valid_1;
  output [1:0]Q;
  output [7:0]\DataOut_reg[7]_0 ;
  input pmod_OBUF_BUFG;
  input reset_led_OBUF;
  input [0:0]D;
  input \FSM_onehot_mainState_reg[0]_0 ;
  input [0:0]signalReg__0;
  input [0:0]triggReg__0;
  input \FSM_onehot_mainState_reg[2]_0 ;
  input done;

  wire [0:0]D;
  wire [7:0]\DataOut_reg[7]_0 ;
  wire \FSM_onehot_mainState_reg[0]_0 ;
  wire \FSM_onehot_mainState_reg[2]_0 ;
  wire \FSM_onehot_mainState_reg_n_0_[2] ;
  wire [1:0]Q;
  wire \count_1/ ;
  wire [7:1]data0;
  wire done;
  wire l_valid_1;
  wire [2:0]nextState;
  wire pmod_OBUF_BUFG;
  wire [7:0]r_Counter;
  wire r_Counter0_carry_n_0;
  wire \r_Counter[0]_i_1__2_n_0 ;
  wire \r_Counter[1]_i_1_n_0 ;
  wire \r_Counter[2]_i_1_n_0 ;
  wire \r_Counter[3]_i_1_n_0 ;
  wire \r_Counter[4]_i_1_n_0 ;
  wire \r_Counter[5]_i_1_n_0 ;
  wire \r_Counter[6]_i_1_n_0 ;
  wire \r_Counter[7]_i_2_n_0 ;
  wire reset_led_OBUF;
  wire [0:0]signalReg__0;
  wire [0:0]triggReg__0;
  wire valid_i_1_n_0;
  wire [2:0]NLW_r_Counter0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_r_Counter0_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_r_Counter0_carry__0_O_UNCONNECTED;

  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[0] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(r_Counter[0]),
        .Q(\DataOut_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[1] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(r_Counter[1]),
        .Q(\DataOut_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[2] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(r_Counter[2]),
        .Q(\DataOut_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[3] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(r_Counter[3]),
        .Q(\DataOut_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[4] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(r_Counter[4]),
        .Q(\DataOut_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[5] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(r_Counter[5]),
        .Q(\DataOut_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[6] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(r_Counter[6]),
        .Q(\DataOut_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[7] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(r_Counter[7]),
        .Q(\DataOut_reg[7]_0 [7]));
  LUT5 #(
    .INIT(32'h10101F10)) 
    \FSM_onehot_mainState[0]_i_1 
       (.I0(\FSM_onehot_mainState_reg[0]_0 ),
        .I1(signalReg__0),
        .I2(Q[0]),
        .I3(\FSM_onehot_mainState_reg_n_0_[2] ),
        .I4(Q[1]),
        .O(nextState[0]));
  LUT4 #(
    .INIT(16'h5400)) 
    \FSM_onehot_mainState[2]_i_1 
       (.I0(Q[0]),
        .I1(triggReg__0),
        .I2(\FSM_onehot_mainState_reg[2]_0 ),
        .I3(Q[1]),
        .O(nextState[2]));
  (* FSM_ENCODED_STATES = "C_IDLE:001,C_COUNTING:010,C_SENDING:100" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_mainState_reg[0] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .D(nextState[0]),
        .PRE(reset_led_OBUF),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "C_IDLE:001,C_COUNTING:010,C_SENDING:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_mainState_reg[1] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D),
        .Q(Q[1]));
  (* FSM_ENCODED_STATES = "C_IDLE:001,C_COUNTING:010,C_SENDING:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_mainState_reg[2] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(nextState[2]),
        .Q(\FSM_onehot_mainState_reg_n_0_[2] ));
  CARRY4 r_Counter0_carry
       (.CI(1'b0),
        .CO({r_Counter0_carry_n_0,NLW_r_Counter0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(r_Counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(r_Counter[4:1]));
  CARRY4 r_Counter0_carry__0
       (.CI(r_Counter0_carry_n_0),
        .CO(NLW_r_Counter0_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_r_Counter0_carry__0_O_UNCONNECTED[3],data0[7:5]}),
        .S({1'b0,r_Counter[7:5]}));
  (* \PinAttr:I1:HOLD_DETOUR  = "185" *) 
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_Counter[0]_i_1__2 
       (.I0(Q[1]),
        .I1(r_Counter[0]),
        .O(\r_Counter[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[1]_i_1 
       (.I0(Q[1]),
        .I1(data0[1]),
        .O(\r_Counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[2]_i_1 
       (.I0(Q[1]),
        .I1(data0[2]),
        .O(\r_Counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[3]_i_1 
       (.I0(Q[1]),
        .I1(data0[3]),
        .O(\r_Counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[4]_i_1 
       (.I0(Q[1]),
        .I1(data0[4]),
        .O(\r_Counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[5]_i_1 
       (.I0(Q[1]),
        .I1(data0[5]),
        .O(\r_Counter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[6]_i_1 
       (.I0(Q[1]),
        .I1(data0[6]),
        .O(\r_Counter[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \r_Counter[7]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_1/ ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[7]_i_2 
       (.I0(Q[1]),
        .I1(data0[7]),
        .O(\r_Counter[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[0] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_1/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[0]_i_1__2_n_0 ),
        .Q(r_Counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[1] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_1/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[1]_i_1_n_0 ),
        .Q(r_Counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[2] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_1/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[2]_i_1_n_0 ),
        .Q(r_Counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[3] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_1/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[3]_i_1_n_0 ),
        .Q(r_Counter[3]));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[4] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_1/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[4]_i_1_n_0 ),
        .Q(r_Counter[4]));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[5] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_1/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[5]_i_1_n_0 ),
        .Q(r_Counter[5]));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[6] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_1/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[6]_i_1_n_0 ),
        .Q(r_Counter[6]));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[7] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_1/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[7]_i_2_n_0 ),
        .Q(r_Counter[7]));
  LUT5 #(
    .INIT(32'hAABFAAAA)) 
    valid_i_1
       (.I0(\FSM_onehot_mainState_reg_n_0_[2] ),
        .I1(Q[0]),
        .I2(done),
        .I3(Q[1]),
        .I4(l_valid_1),
        .O(valid_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    valid_reg
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(valid_i_1_n_0),
        .Q(l_valid_1));
endmodule

(* ORIG_REF_NAME = "CounterModule" *) 
module CounterModule_0
   (\triggReg_reg[1]_0 ,
    \signalReg_reg[1]_0 ,
    \triggReg_reg[2]_0 ,
    \signalReg_reg[2]_0 ,
    l_valid_2,
    D,
    \signalReg_reg[1]_1 ,
    \signalReg_reg[1]_2 ,
    \DataOut_reg[31]_0 ,
    trigg_IBUF,
    pmod_OBUF_BUFG,
    reset_led_OBUF,
    signalSendt_IBUF,
    Q,
    \FSM_onehot_mainState_reg[1]_0 ,
    \FSM_onehot_mainState_reg[1]_1 ,
    done);
  output [0:0]\triggReg_reg[1]_0 ;
  output [0:0]\signalReg_reg[1]_0 ;
  output \triggReg_reg[2]_0 ;
  output \signalReg_reg[2]_0 ;
  output l_valid_2;
  output [0:0]D;
  output [0:0]\signalReg_reg[1]_1 ;
  output [0:0]\signalReg_reg[1]_2 ;
  output [31:0]\DataOut_reg[31]_0 ;
  input trigg_IBUF;
  input pmod_OBUF_BUFG;
  input reset_led_OBUF;
  input signalSendt_IBUF;
  input [1:0]Q;
  input [1:0]\FSM_onehot_mainState_reg[1]_0 ;
  input [1:0]\FSM_onehot_mainState_reg[1]_1 ;
  input done;

  wire [0:0]D;
  wire [31:0]\DataOut_reg[31]_0 ;
  wire [1:0]\FSM_onehot_mainState_reg[1]_0 ;
  wire [1:0]\FSM_onehot_mainState_reg[1]_1 ;
  wire \FSM_onehot_mainState_reg_n_0_[2] ;
  wire [1:0]Q;
  wire \count_2/ ;
  wire done;
  wire l_valid_2;
  wire [1:0]mainState;
  wire [2:0]nextState;
  wire pmod_OBUF_BUFG;
  wire r_Counter0_carry__0_n_0;
  wire r_Counter0_carry__0_n_4;
  wire r_Counter0_carry__0_n_5;
  wire r_Counter0_carry__0_n_6;
  wire r_Counter0_carry__0_n_7;
  wire r_Counter0_carry__1_n_0;
  wire r_Counter0_carry__1_n_4;
  wire r_Counter0_carry__1_n_5;
  wire r_Counter0_carry__1_n_6;
  wire r_Counter0_carry__1_n_7;
  wire r_Counter0_carry__2_n_0;
  wire r_Counter0_carry__2_n_4;
  wire r_Counter0_carry__2_n_5;
  wire r_Counter0_carry__2_n_6;
  wire r_Counter0_carry__2_n_7;
  wire r_Counter0_carry__3_n_0;
  wire r_Counter0_carry__3_n_4;
  wire r_Counter0_carry__3_n_5;
  wire r_Counter0_carry__3_n_6;
  wire r_Counter0_carry__3_n_7;
  wire r_Counter0_carry__4_n_0;
  wire r_Counter0_carry__4_n_4;
  wire r_Counter0_carry__4_n_5;
  wire r_Counter0_carry__4_n_6;
  wire r_Counter0_carry__4_n_7;
  wire r_Counter0_carry__5_n_0;
  wire r_Counter0_carry__5_n_4;
  wire r_Counter0_carry__5_n_5;
  wire r_Counter0_carry__5_n_6;
  wire r_Counter0_carry__5_n_7;
  wire r_Counter0_carry__6_n_5;
  wire r_Counter0_carry__6_n_6;
  wire r_Counter0_carry__6_n_7;
  wire r_Counter0_carry_n_0;
  wire r_Counter0_carry_n_4;
  wire r_Counter0_carry_n_5;
  wire r_Counter0_carry_n_6;
  wire r_Counter0_carry_n_7;
  wire \r_Counter[0]_i_1__1_n_0 ;
  wire \r_Counter[10]_i_1_n_0 ;
  wire \r_Counter[11]_i_1_n_0 ;
  wire \r_Counter[12]_i_1_n_0 ;
  wire \r_Counter[13]_i_1_n_0 ;
  wire \r_Counter[14]_i_1_n_0 ;
  wire \r_Counter[15]_i_1_n_0 ;
  wire \r_Counter[16]_i_1_n_0 ;
  wire \r_Counter[17]_i_1_n_0 ;
  wire \r_Counter[18]_i_1_n_0 ;
  wire \r_Counter[19]_i_1_n_0 ;
  wire \r_Counter[1]_i_1_n_0 ;
  wire \r_Counter[20]_i_1_n_0 ;
  wire \r_Counter[21]_i_1_n_0 ;
  wire \r_Counter[22]_i_1_n_0 ;
  wire \r_Counter[23]_i_1_n_0 ;
  wire \r_Counter[24]_i_1_n_0 ;
  wire \r_Counter[25]_i_1_n_0 ;
  wire \r_Counter[26]_i_1_n_0 ;
  wire \r_Counter[27]_i_1_n_0 ;
  wire \r_Counter[28]_i_1_n_0 ;
  wire \r_Counter[29]_i_1_n_0 ;
  wire \r_Counter[2]_i_1_n_0 ;
  wire \r_Counter[30]_i_1_n_0 ;
  wire \r_Counter[31]_i_2_n_0 ;
  wire \r_Counter[3]_i_1_n_0 ;
  wire \r_Counter[4]_i_1_n_0 ;
  wire \r_Counter[5]_i_1_n_0 ;
  wire \r_Counter[6]_i_1_n_0 ;
  wire \r_Counter[7]_i_1_n_0 ;
  wire \r_Counter[8]_i_1_n_0 ;
  wire \r_Counter[9]_i_1_n_0 ;
  wire \r_Counter_reg_n_0_[0] ;
  wire \r_Counter_reg_n_0_[10] ;
  wire \r_Counter_reg_n_0_[11] ;
  wire \r_Counter_reg_n_0_[12] ;
  wire \r_Counter_reg_n_0_[13] ;
  wire \r_Counter_reg_n_0_[14] ;
  wire \r_Counter_reg_n_0_[15] ;
  wire \r_Counter_reg_n_0_[16] ;
  wire \r_Counter_reg_n_0_[17] ;
  wire \r_Counter_reg_n_0_[18] ;
  wire \r_Counter_reg_n_0_[19] ;
  wire \r_Counter_reg_n_0_[1] ;
  wire \r_Counter_reg_n_0_[20] ;
  wire \r_Counter_reg_n_0_[21] ;
  wire \r_Counter_reg_n_0_[22] ;
  wire \r_Counter_reg_n_0_[23] ;
  wire \r_Counter_reg_n_0_[24] ;
  wire \r_Counter_reg_n_0_[25] ;
  wire \r_Counter_reg_n_0_[26] ;
  wire \r_Counter_reg_n_0_[27] ;
  wire \r_Counter_reg_n_0_[28] ;
  wire \r_Counter_reg_n_0_[29] ;
  wire \r_Counter_reg_n_0_[2] ;
  wire \r_Counter_reg_n_0_[30] ;
  wire \r_Counter_reg_n_0_[31] ;
  wire \r_Counter_reg_n_0_[3] ;
  wire \r_Counter_reg_n_0_[4] ;
  wire \r_Counter_reg_n_0_[5] ;
  wire \r_Counter_reg_n_0_[6] ;
  wire \r_Counter_reg_n_0_[7] ;
  wire \r_Counter_reg_n_0_[8] ;
  wire \r_Counter_reg_n_0_[9] ;
  wire reset_led_OBUF;
  wire [1:1]signalReg__0;
  wire [0:0]\signalReg_reg[1]_0 ;
  wire [0:0]\signalReg_reg[1]_1 ;
  wire [0:0]\signalReg_reg[1]_2 ;
  wire \signalReg_reg[2]_0 ;
  wire signalSendt_IBUF;
  wire [1:1]triggReg__0;
  wire [0:0]\triggReg_reg[1]_0 ;
  wire \triggReg_reg[2]_0 ;
  wire trigg_IBUF;
  wire valid_i_1__0_n_0;
  wire [2:0]NLW_r_Counter0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_r_Counter0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_r_Counter0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_r_Counter0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_r_Counter0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_r_Counter0_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_r_Counter0_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_r_Counter0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_r_Counter0_carry__6_O_UNCONNECTED;

  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[0] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[0] ),
        .Q(\DataOut_reg[31]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[10] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[10] ),
        .Q(\DataOut_reg[31]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[11] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[11] ),
        .Q(\DataOut_reg[31]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[12] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[12] ),
        .Q(\DataOut_reg[31]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[13] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[13] ),
        .Q(\DataOut_reg[31]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[14] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[14] ),
        .Q(\DataOut_reg[31]_0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[15] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[15] ),
        .Q(\DataOut_reg[31]_0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[16] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[16] ),
        .Q(\DataOut_reg[31]_0 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[17] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[17] ),
        .Q(\DataOut_reg[31]_0 [17]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[18] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[18] ),
        .Q(\DataOut_reg[31]_0 [18]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[19] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[19] ),
        .Q(\DataOut_reg[31]_0 [19]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[1] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[1] ),
        .Q(\DataOut_reg[31]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[20] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[20] ),
        .Q(\DataOut_reg[31]_0 [20]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[21] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[21] ),
        .Q(\DataOut_reg[31]_0 [21]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[22] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[22] ),
        .Q(\DataOut_reg[31]_0 [22]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[23] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[23] ),
        .Q(\DataOut_reg[31]_0 [23]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[24] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[24] ),
        .Q(\DataOut_reg[31]_0 [24]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[25] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[25] ),
        .Q(\DataOut_reg[31]_0 [25]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[26] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[26] ),
        .Q(\DataOut_reg[31]_0 [26]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[27] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[27] ),
        .Q(\DataOut_reg[31]_0 [27]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[28] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[28] ),
        .Q(\DataOut_reg[31]_0 [28]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[29] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[29] ),
        .Q(\DataOut_reg[31]_0 [29]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[2] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[2] ),
        .Q(\DataOut_reg[31]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[30] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[30] ),
        .Q(\DataOut_reg[31]_0 [30]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[31] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[31] ),
        .Q(\DataOut_reg[31]_0 [31]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[3] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[3] ),
        .Q(\DataOut_reg[31]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[4] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[4] ),
        .Q(\DataOut_reg[31]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[5] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[5] ),
        .Q(\DataOut_reg[31]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[6] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[6] ),
        .Q(\DataOut_reg[31]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[7] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[7] ),
        .Q(\DataOut_reg[31]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[8] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[8] ),
        .Q(\DataOut_reg[31]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[9] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[9] ),
        .Q(\DataOut_reg[31]_0 [9]));
  LUT5 #(
    .INIT(32'h10101F10)) 
    \FSM_onehot_mainState[0]_i_1__0 
       (.I0(\signalReg_reg[2]_0 ),
        .I1(\signalReg_reg[1]_0 ),
        .I2(mainState[0]),
        .I3(\FSM_onehot_mainState_reg_n_0_[2] ),
        .I4(mainState[1]),
        .O(nextState[0]));
  LUT6 #(
    .INIT(64'hE0E0E0E0E0E0EFE0)) 
    \FSM_onehot_mainState[1]_i_1 
       (.I0(\signalReg_reg[1]_0 ),
        .I1(\signalReg_reg[2]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\triggReg_reg[2]_0 ),
        .I5(\triggReg_reg[1]_0 ),
        .O(D));
  LUT6 #(
    .INIT(64'hE0E0E0E0E0E0EFE0)) 
    \FSM_onehot_mainState[1]_i_1__0 
       (.I0(\signalReg_reg[1]_0 ),
        .I1(\signalReg_reg[2]_0 ),
        .I2(mainState[0]),
        .I3(mainState[1]),
        .I4(\triggReg_reg[2]_0 ),
        .I5(\triggReg_reg[1]_0 ),
        .O(nextState[1]));
  LUT6 #(
    .INIT(64'hE0E0E0E0E0E0EFE0)) 
    \FSM_onehot_mainState[1]_i_1__1 
       (.I0(\signalReg_reg[1]_0 ),
        .I1(\signalReg_reg[2]_0 ),
        .I2(\FSM_onehot_mainState_reg[1]_0 [0]),
        .I3(\FSM_onehot_mainState_reg[1]_0 [1]),
        .I4(\triggReg_reg[2]_0 ),
        .I5(\triggReg_reg[1]_0 ),
        .O(\signalReg_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hE0E0E0E0E0E0EFE0)) 
    \FSM_onehot_mainState[1]_i_1__2 
       (.I0(\signalReg_reg[1]_0 ),
        .I1(\signalReg_reg[2]_0 ),
        .I2(\FSM_onehot_mainState_reg[1]_1 [0]),
        .I3(\FSM_onehot_mainState_reg[1]_1 [1]),
        .I4(\triggReg_reg[2]_0 ),
        .I5(\triggReg_reg[1]_0 ),
        .O(\signalReg_reg[1]_2 ));
  LUT4 #(
    .INIT(16'h5400)) 
    \FSM_onehot_mainState[2]_i_1__0 
       (.I0(mainState[0]),
        .I1(\triggReg_reg[1]_0 ),
        .I2(\triggReg_reg[2]_0 ),
        .I3(mainState[1]),
        .O(nextState[2]));
  (* FSM_ENCODED_STATES = "C_IDLE:001,C_COUNTING:010,C_SENDING:100" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_mainState_reg[0] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .D(nextState[0]),
        .PRE(reset_led_OBUF),
        .Q(mainState[0]));
  (* FSM_ENCODED_STATES = "C_IDLE:001,C_COUNTING:010,C_SENDING:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_mainState_reg[1] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(nextState[1]),
        .Q(mainState[1]));
  (* FSM_ENCODED_STATES = "C_IDLE:001,C_COUNTING:010,C_SENDING:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_mainState_reg[2] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(nextState[2]),
        .Q(\FSM_onehot_mainState_reg_n_0_[2] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry
       (.CI(1'b0),
        .CO({r_Counter0_carry_n_0,NLW_r_Counter0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\r_Counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_Counter0_carry_n_4,r_Counter0_carry_n_5,r_Counter0_carry_n_6,r_Counter0_carry_n_7}),
        .S({\r_Counter_reg_n_0_[4] ,\r_Counter_reg_n_0_[3] ,\r_Counter_reg_n_0_[2] ,\r_Counter_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__0
       (.CI(r_Counter0_carry_n_0),
        .CO({r_Counter0_carry__0_n_0,NLW_r_Counter0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_Counter0_carry__0_n_4,r_Counter0_carry__0_n_5,r_Counter0_carry__0_n_6,r_Counter0_carry__0_n_7}),
        .S({\r_Counter_reg_n_0_[8] ,\r_Counter_reg_n_0_[7] ,\r_Counter_reg_n_0_[6] ,\r_Counter_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__1
       (.CI(r_Counter0_carry__0_n_0),
        .CO({r_Counter0_carry__1_n_0,NLW_r_Counter0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_Counter0_carry__1_n_4,r_Counter0_carry__1_n_5,r_Counter0_carry__1_n_6,r_Counter0_carry__1_n_7}),
        .S({\r_Counter_reg_n_0_[12] ,\r_Counter_reg_n_0_[11] ,\r_Counter_reg_n_0_[10] ,\r_Counter_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__2
       (.CI(r_Counter0_carry__1_n_0),
        .CO({r_Counter0_carry__2_n_0,NLW_r_Counter0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_Counter0_carry__2_n_4,r_Counter0_carry__2_n_5,r_Counter0_carry__2_n_6,r_Counter0_carry__2_n_7}),
        .S({\r_Counter_reg_n_0_[16] ,\r_Counter_reg_n_0_[15] ,\r_Counter_reg_n_0_[14] ,\r_Counter_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__3
       (.CI(r_Counter0_carry__2_n_0),
        .CO({r_Counter0_carry__3_n_0,NLW_r_Counter0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_Counter0_carry__3_n_4,r_Counter0_carry__3_n_5,r_Counter0_carry__3_n_6,r_Counter0_carry__3_n_7}),
        .S({\r_Counter_reg_n_0_[20] ,\r_Counter_reg_n_0_[19] ,\r_Counter_reg_n_0_[18] ,\r_Counter_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__4
       (.CI(r_Counter0_carry__3_n_0),
        .CO({r_Counter0_carry__4_n_0,NLW_r_Counter0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_Counter0_carry__4_n_4,r_Counter0_carry__4_n_5,r_Counter0_carry__4_n_6,r_Counter0_carry__4_n_7}),
        .S({\r_Counter_reg_n_0_[24] ,\r_Counter_reg_n_0_[23] ,\r_Counter_reg_n_0_[22] ,\r_Counter_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__5
       (.CI(r_Counter0_carry__4_n_0),
        .CO({r_Counter0_carry__5_n_0,NLW_r_Counter0_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_Counter0_carry__5_n_4,r_Counter0_carry__5_n_5,r_Counter0_carry__5_n_6,r_Counter0_carry__5_n_7}),
        .S({\r_Counter_reg_n_0_[28] ,\r_Counter_reg_n_0_[27] ,\r_Counter_reg_n_0_[26] ,\r_Counter_reg_n_0_[25] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__6
       (.CI(r_Counter0_carry__5_n_0),
        .CO(NLW_r_Counter0_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_r_Counter0_carry__6_O_UNCONNECTED[3],r_Counter0_carry__6_n_5,r_Counter0_carry__6_n_6,r_Counter0_carry__6_n_7}),
        .S({1'b0,\r_Counter_reg_n_0_[31] ,\r_Counter_reg_n_0_[30] ,\r_Counter_reg_n_0_[29] }));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_Counter[0]_i_1__1 
       (.I0(mainState[1]),
        .I1(\r_Counter_reg_n_0_[0] ),
        .O(\r_Counter[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[10]_i_1 
       (.I0(mainState[1]),
        .I1(r_Counter0_carry__1_n_6),
        .O(\r_Counter[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[11]_i_1 
       (.I0(mainState[1]),
        .I1(r_Counter0_carry__1_n_5),
        .O(\r_Counter[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[12]_i_1 
       (.I0(mainState[1]),
        .I1(r_Counter0_carry__1_n_4),
        .O(\r_Counter[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[13]_i_1 
       (.I0(mainState[1]),
        .I1(r_Counter0_carry__2_n_7),
        .O(\r_Counter[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[14]_i_1 
       (.I0(mainState[1]),
        .I1(r_Counter0_carry__2_n_6),
        .O(\r_Counter[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[15]_i_1 
       (.I0(mainState[1]),
        .I1(r_Counter0_carry__2_n_5),
        .O(\r_Counter[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[16]_i_1 
       (.I0(mainState[1]),
        .I1(r_Counter0_carry__2_n_4),
        .O(\r_Counter[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[17]_i_1 
       (.I0(mainState[1]),
        .I1(r_Counter0_carry__3_n_7),
        .O(\r_Counter[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[18]_i_1 
       (.I0(mainState[1]),
        .I1(r_Counter0_carry__3_n_6),
        .O(\r_Counter[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[19]_i_1 
       (.I0(mainState[1]),
        .I1(r_Counter0_carry__3_n_5),
        .O(\r_Counter[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[1]_i_1 
       (.I0(mainState[1]),
        .I1(r_Counter0_carry_n_7),
        .O(\r_Counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[20]_i_1 
       (.I0(mainState[1]),
        .I1(r_Counter0_carry__3_n_4),
        .O(\r_Counter[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[21]_i_1 
       (.I0(mainState[1]),
        .I1(r_Counter0_carry__4_n_7),
        .O(\r_Counter[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[22]_i_1 
       (.I0(mainState[1]),
        .I1(r_Counter0_carry__4_n_6),
        .O(\r_Counter[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[23]_i_1 
       (.I0(mainState[1]),
        .I1(r_Counter0_carry__4_n_5),
        .O(\r_Counter[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[24]_i_1 
       (.I0(mainState[1]),
        .I1(r_Counter0_carry__4_n_4),
        .O(\r_Counter[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[25]_i_1 
       (.I0(mainState[1]),
        .I1(r_Counter0_carry__5_n_7),
        .O(\r_Counter[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[26]_i_1 
       (.I0(mainState[1]),
        .I1(r_Counter0_carry__5_n_6),
        .O(\r_Counter[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[27]_i_1 
       (.I0(mainState[1]),
        .I1(r_Counter0_carry__5_n_5),
        .O(\r_Counter[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[28]_i_1 
       (.I0(mainState[1]),
        .I1(r_Counter0_carry__5_n_4),
        .O(\r_Counter[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[29]_i_1 
       (.I0(mainState[1]),
        .I1(r_Counter0_carry__6_n_7),
        .O(\r_Counter[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[2]_i_1 
       (.I0(mainState[1]),
        .I1(r_Counter0_carry_n_6),
        .O(\r_Counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[30]_i_1 
       (.I0(mainState[1]),
        .I1(r_Counter0_carry__6_n_6),
        .O(\r_Counter[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \r_Counter[31]_i_1__1 
       (.I0(mainState[0]),
        .I1(mainState[1]),
        .O(\count_2/ ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[31]_i_2 
       (.I0(mainState[1]),
        .I1(r_Counter0_carry__6_n_5),
        .O(\r_Counter[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[3]_i_1 
       (.I0(mainState[1]),
        .I1(r_Counter0_carry_n_5),
        .O(\r_Counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[4]_i_1 
       (.I0(mainState[1]),
        .I1(r_Counter0_carry_n_4),
        .O(\r_Counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[5]_i_1 
       (.I0(mainState[1]),
        .I1(r_Counter0_carry__0_n_7),
        .O(\r_Counter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[6]_i_1 
       (.I0(mainState[1]),
        .I1(r_Counter0_carry__0_n_6),
        .O(\r_Counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[7]_i_1 
       (.I0(mainState[1]),
        .I1(r_Counter0_carry__0_n_5),
        .O(\r_Counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[8]_i_1 
       (.I0(mainState[1]),
        .I1(r_Counter0_carry__0_n_4),
        .O(\r_Counter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[9]_i_1 
       (.I0(mainState[1]),
        .I1(r_Counter0_carry__1_n_7),
        .O(\r_Counter[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[0] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_2/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[0]_i_1__1_n_0 ),
        .Q(\r_Counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[10] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_2/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[10]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[11] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_2/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[11]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[12] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_2/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[12]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[13] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_2/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[13]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[14] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_2/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[14]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[15] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_2/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[15]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[16] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_2/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[16]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[17] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_2/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[17]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[18] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_2/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[18]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[19] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_2/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[19]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[1] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_2/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[1]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[20] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_2/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[20]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[21] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_2/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[21]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[22] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_2/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[22]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[23] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_2/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[23]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[24] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_2/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[24]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[25] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_2/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[25]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[26] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_2/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[26]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[27] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_2/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[27]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[28] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_2/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[28]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[29] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_2/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[29]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[2] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_2/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[2]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[30] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_2/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[30]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[31] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_2/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[31]_i_2_n_0 ),
        .Q(\r_Counter_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[3] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_2/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[3]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[4] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_2/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[4]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[5] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_2/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[5]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[6] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_2/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[6]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[7] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_2/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[7]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[8] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_2/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[8]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[9] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_2/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[9]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    \signalReg_reg[0] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(signalSendt_IBUF),
        .Q(signalReg__0));
  FDCE #(
    .INIT(1'b0)) 
    \signalReg_reg[1] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(signalReg__0),
        .Q(\signalReg_reg[1]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \signalReg_reg[2] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\signalReg_reg[1]_0 ),
        .Q(\signalReg_reg[2]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \triggReg_reg[0] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(trigg_IBUF),
        .Q(triggReg__0));
  FDCE #(
    .INIT(1'b0)) 
    \triggReg_reg[1] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(triggReg__0),
        .Q(\triggReg_reg[1]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \triggReg_reg[2] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\triggReg_reg[1]_0 ),
        .Q(\triggReg_reg[2]_0 ));
  LUT5 #(
    .INIT(32'hAABFAAAA)) 
    valid_i_1__0
       (.I0(\FSM_onehot_mainState_reg_n_0_[2] ),
        .I1(mainState[0]),
        .I2(done),
        .I3(mainState[1]),
        .I4(l_valid_2),
        .O(valid_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    valid_reg
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(valid_i_1__0_n_0),
        .Q(l_valid_2));
endmodule

(* ORIG_REF_NAME = "CounterModule" *) 
module CounterModule_1
   (l_valid_3,
    Q,
    valid_reg_0,
    valid_reg_1,
    \DataOut_reg[31]_0 ,
    pmod_OBUF_BUFG,
    reset_led_OBUF,
    D,
    \FSM_onehot_mainState_reg[0]_0 ,
    \FSM_onehot_mainState_reg[0]_1 ,
    \FSM_onehot_mainState_reg[2]_0 ,
    \FSM_onehot_mainState_reg[2]_1 ,
    done,
    l_valid_2,
    l_valid_1,
    l_valid_4,
    hasPulsed);
  output l_valid_3;
  output [1:0]Q;
  output valid_reg_0;
  output valid_reg_1;
  output [31:0]\DataOut_reg[31]_0 ;
  input pmod_OBUF_BUFG;
  input reset_led_OBUF;
  input [0:0]D;
  input \FSM_onehot_mainState_reg[0]_0 ;
  input [0:0]\FSM_onehot_mainState_reg[0]_1 ;
  input [0:0]\FSM_onehot_mainState_reg[2]_0 ;
  input \FSM_onehot_mainState_reg[2]_1 ;
  input done;
  input l_valid_2;
  input l_valid_1;
  input l_valid_4;
  input hasPulsed;

  wire [0:0]D;
  wire [31:0]\DataOut_reg[31]_0 ;
  wire \FSM_onehot_mainState_reg[0]_0 ;
  wire [0:0]\FSM_onehot_mainState_reg[0]_1 ;
  wire [0:0]\FSM_onehot_mainState_reg[2]_0 ;
  wire \FSM_onehot_mainState_reg[2]_1 ;
  wire \FSM_onehot_mainState_reg_n_0_[2] ;
  wire [1:0]Q;
  wire \count_3/ ;
  wire done;
  wire hasPulsed;
  wire l_valid_1;
  wire l_valid_2;
  wire l_valid_3;
  wire l_valid_4;
  wire [2:0]nextState;
  wire pmod_OBUF_BUFG;
  wire r_Counter0_carry__0_n_0;
  wire r_Counter0_carry__0_n_4;
  wire r_Counter0_carry__0_n_5;
  wire r_Counter0_carry__0_n_6;
  wire r_Counter0_carry__0_n_7;
  wire r_Counter0_carry__1_n_0;
  wire r_Counter0_carry__1_n_4;
  wire r_Counter0_carry__1_n_5;
  wire r_Counter0_carry__1_n_6;
  wire r_Counter0_carry__1_n_7;
  wire r_Counter0_carry__2_n_0;
  wire r_Counter0_carry__2_n_4;
  wire r_Counter0_carry__2_n_5;
  wire r_Counter0_carry__2_n_6;
  wire r_Counter0_carry__2_n_7;
  wire r_Counter0_carry__3_n_0;
  wire r_Counter0_carry__3_n_4;
  wire r_Counter0_carry__3_n_5;
  wire r_Counter0_carry__3_n_6;
  wire r_Counter0_carry__3_n_7;
  wire r_Counter0_carry__4_n_0;
  wire r_Counter0_carry__4_n_4;
  wire r_Counter0_carry__4_n_5;
  wire r_Counter0_carry__4_n_6;
  wire r_Counter0_carry__4_n_7;
  wire r_Counter0_carry__5_n_0;
  wire r_Counter0_carry__5_n_4;
  wire r_Counter0_carry__5_n_5;
  wire r_Counter0_carry__5_n_6;
  wire r_Counter0_carry__5_n_7;
  wire r_Counter0_carry__6_n_5;
  wire r_Counter0_carry__6_n_6;
  wire r_Counter0_carry__6_n_7;
  wire r_Counter0_carry_n_0;
  wire r_Counter0_carry_n_4;
  wire r_Counter0_carry_n_5;
  wire r_Counter0_carry_n_6;
  wire r_Counter0_carry_n_7;
  wire \r_Counter[0]_i_1__0_n_0 ;
  wire \r_Counter[10]_i_1_n_0 ;
  wire \r_Counter[11]_i_1_n_0 ;
  wire \r_Counter[12]_i_1_n_0 ;
  wire \r_Counter[13]_i_1_n_0 ;
  wire \r_Counter[14]_i_1_n_0 ;
  wire \r_Counter[15]_i_1_n_0 ;
  wire \r_Counter[16]_i_1_n_0 ;
  wire \r_Counter[17]_i_1_n_0 ;
  wire \r_Counter[18]_i_1_n_0 ;
  wire \r_Counter[19]_i_1_n_0 ;
  wire \r_Counter[1]_i_1_n_0 ;
  wire \r_Counter[20]_i_1_n_0 ;
  wire \r_Counter[21]_i_1_n_0 ;
  wire \r_Counter[22]_i_1_n_0 ;
  wire \r_Counter[23]_i_1_n_0 ;
  wire \r_Counter[24]_i_1_n_0 ;
  wire \r_Counter[25]_i_1_n_0 ;
  wire \r_Counter[26]_i_1_n_0 ;
  wire \r_Counter[27]_i_1_n_0 ;
  wire \r_Counter[28]_i_1_n_0 ;
  wire \r_Counter[29]_i_1_n_0 ;
  wire \r_Counter[2]_i_1_n_0 ;
  wire \r_Counter[30]_i_1_n_0 ;
  wire \r_Counter[31]_i_2_n_0 ;
  wire \r_Counter[3]_i_1_n_0 ;
  wire \r_Counter[4]_i_1_n_0 ;
  wire \r_Counter[5]_i_1_n_0 ;
  wire \r_Counter[6]_i_1_n_0 ;
  wire \r_Counter[7]_i_1_n_0 ;
  wire \r_Counter[8]_i_1_n_0 ;
  wire \r_Counter[9]_i_1_n_0 ;
  wire \r_Counter_reg_n_0_[0] ;
  wire \r_Counter_reg_n_0_[10] ;
  wire \r_Counter_reg_n_0_[11] ;
  wire \r_Counter_reg_n_0_[12] ;
  wire \r_Counter_reg_n_0_[13] ;
  wire \r_Counter_reg_n_0_[14] ;
  wire \r_Counter_reg_n_0_[15] ;
  wire \r_Counter_reg_n_0_[16] ;
  wire \r_Counter_reg_n_0_[17] ;
  wire \r_Counter_reg_n_0_[18] ;
  wire \r_Counter_reg_n_0_[19] ;
  wire \r_Counter_reg_n_0_[1] ;
  wire \r_Counter_reg_n_0_[20] ;
  wire \r_Counter_reg_n_0_[21] ;
  wire \r_Counter_reg_n_0_[22] ;
  wire \r_Counter_reg_n_0_[23] ;
  wire \r_Counter_reg_n_0_[24] ;
  wire \r_Counter_reg_n_0_[25] ;
  wire \r_Counter_reg_n_0_[26] ;
  wire \r_Counter_reg_n_0_[27] ;
  wire \r_Counter_reg_n_0_[28] ;
  wire \r_Counter_reg_n_0_[29] ;
  wire \r_Counter_reg_n_0_[2] ;
  wire \r_Counter_reg_n_0_[30] ;
  wire \r_Counter_reg_n_0_[31] ;
  wire \r_Counter_reg_n_0_[3] ;
  wire \r_Counter_reg_n_0_[4] ;
  wire \r_Counter_reg_n_0_[5] ;
  wire \r_Counter_reg_n_0_[6] ;
  wire \r_Counter_reg_n_0_[7] ;
  wire \r_Counter_reg_n_0_[8] ;
  wire \r_Counter_reg_n_0_[9] ;
  wire reset_led_OBUF;
  wire valid_i_1__1_n_0;
  wire valid_reg_0;
  wire valid_reg_1;
  wire [2:0]NLW_r_Counter0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_r_Counter0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_r_Counter0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_r_Counter0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_r_Counter0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_r_Counter0_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_r_Counter0_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_r_Counter0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_r_Counter0_carry__6_O_UNCONNECTED;

  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[0] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[0] ),
        .Q(\DataOut_reg[31]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[10] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[10] ),
        .Q(\DataOut_reg[31]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[11] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[11] ),
        .Q(\DataOut_reg[31]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[12] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[12] ),
        .Q(\DataOut_reg[31]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[13] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[13] ),
        .Q(\DataOut_reg[31]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[14] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[14] ),
        .Q(\DataOut_reg[31]_0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[15] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[15] ),
        .Q(\DataOut_reg[31]_0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[16] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[16] ),
        .Q(\DataOut_reg[31]_0 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[17] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[17] ),
        .Q(\DataOut_reg[31]_0 [17]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[18] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[18] ),
        .Q(\DataOut_reg[31]_0 [18]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[19] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[19] ),
        .Q(\DataOut_reg[31]_0 [19]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[1] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[1] ),
        .Q(\DataOut_reg[31]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[20] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[20] ),
        .Q(\DataOut_reg[31]_0 [20]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[21] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[21] ),
        .Q(\DataOut_reg[31]_0 [21]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[22] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[22] ),
        .Q(\DataOut_reg[31]_0 [22]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[23] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[23] ),
        .Q(\DataOut_reg[31]_0 [23]));
  (* \PinAttr:D:HOLD_DETOUR  = "178" *) 
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[24] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[24] ),
        .Q(\DataOut_reg[31]_0 [24]));
  (* \PinAttr:D:HOLD_DETOUR  = "174" *) 
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[25] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[25] ),
        .Q(\DataOut_reg[31]_0 [25]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[26] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[26] ),
        .Q(\DataOut_reg[31]_0 [26]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[27] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[27] ),
        .Q(\DataOut_reg[31]_0 [27]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[28] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[28] ),
        .Q(\DataOut_reg[31]_0 [28]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[29] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[29] ),
        .Q(\DataOut_reg[31]_0 [29]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[2] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[2] ),
        .Q(\DataOut_reg[31]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[30] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[30] ),
        .Q(\DataOut_reg[31]_0 [30]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[31] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[31] ),
        .Q(\DataOut_reg[31]_0 [31]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[3] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[3] ),
        .Q(\DataOut_reg[31]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[4] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[4] ),
        .Q(\DataOut_reg[31]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[5] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[5] ),
        .Q(\DataOut_reg[31]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[6] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[6] ),
        .Q(\DataOut_reg[31]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[7] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[7] ),
        .Q(\DataOut_reg[31]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[8] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[8] ),
        .Q(\DataOut_reg[31]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[9] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[9] ),
        .Q(\DataOut_reg[31]_0 [9]));
  LUT5 #(
    .INIT(32'h10101F10)) 
    \FSM_onehot_mainState[0]_i_1__1 
       (.I0(\FSM_onehot_mainState_reg[0]_0 ),
        .I1(\FSM_onehot_mainState_reg[0]_1 ),
        .I2(Q[0]),
        .I3(\FSM_onehot_mainState_reg_n_0_[2] ),
        .I4(Q[1]),
        .O(nextState[0]));
  LUT4 #(
    .INIT(16'h5400)) 
    \FSM_onehot_mainState[2]_i_1__1 
       (.I0(Q[0]),
        .I1(\FSM_onehot_mainState_reg[2]_0 ),
        .I2(\FSM_onehot_mainState_reg[2]_1 ),
        .I3(Q[1]),
        .O(nextState[2]));
  (* FSM_ENCODED_STATES = "C_IDLE:001,C_COUNTING:010,C_SENDING:100" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_mainState_reg[0] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .D(nextState[0]),
        .PRE(reset_led_OBUF),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "C_IDLE:001,C_COUNTING:010,C_SENDING:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_mainState_reg[1] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D),
        .Q(Q[1]));
  (* FSM_ENCODED_STATES = "C_IDLE:001,C_COUNTING:010,C_SENDING:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_mainState_reg[2] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(nextState[2]),
        .Q(\FSM_onehot_mainState_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    hasPulsed_i_1
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .O(valid_reg_1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry
       (.CI(1'b0),
        .CO({r_Counter0_carry_n_0,NLW_r_Counter0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\r_Counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_Counter0_carry_n_4,r_Counter0_carry_n_5,r_Counter0_carry_n_6,r_Counter0_carry_n_7}),
        .S({\r_Counter_reg_n_0_[4] ,\r_Counter_reg_n_0_[3] ,\r_Counter_reg_n_0_[2] ,\r_Counter_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__0
       (.CI(r_Counter0_carry_n_0),
        .CO({r_Counter0_carry__0_n_0,NLW_r_Counter0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_Counter0_carry__0_n_4,r_Counter0_carry__0_n_5,r_Counter0_carry__0_n_6,r_Counter0_carry__0_n_7}),
        .S({\r_Counter_reg_n_0_[8] ,\r_Counter_reg_n_0_[7] ,\r_Counter_reg_n_0_[6] ,\r_Counter_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__1
       (.CI(r_Counter0_carry__0_n_0),
        .CO({r_Counter0_carry__1_n_0,NLW_r_Counter0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_Counter0_carry__1_n_4,r_Counter0_carry__1_n_5,r_Counter0_carry__1_n_6,r_Counter0_carry__1_n_7}),
        .S({\r_Counter_reg_n_0_[12] ,\r_Counter_reg_n_0_[11] ,\r_Counter_reg_n_0_[10] ,\r_Counter_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__2
       (.CI(r_Counter0_carry__1_n_0),
        .CO({r_Counter0_carry__2_n_0,NLW_r_Counter0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_Counter0_carry__2_n_4,r_Counter0_carry__2_n_5,r_Counter0_carry__2_n_6,r_Counter0_carry__2_n_7}),
        .S({\r_Counter_reg_n_0_[16] ,\r_Counter_reg_n_0_[15] ,\r_Counter_reg_n_0_[14] ,\r_Counter_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__3
       (.CI(r_Counter0_carry__2_n_0),
        .CO({r_Counter0_carry__3_n_0,NLW_r_Counter0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_Counter0_carry__3_n_4,r_Counter0_carry__3_n_5,r_Counter0_carry__3_n_6,r_Counter0_carry__3_n_7}),
        .S({\r_Counter_reg_n_0_[20] ,\r_Counter_reg_n_0_[19] ,\r_Counter_reg_n_0_[18] ,\r_Counter_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__4
       (.CI(r_Counter0_carry__3_n_0),
        .CO({r_Counter0_carry__4_n_0,NLW_r_Counter0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_Counter0_carry__4_n_4,r_Counter0_carry__4_n_5,r_Counter0_carry__4_n_6,r_Counter0_carry__4_n_7}),
        .S({\r_Counter_reg_n_0_[24] ,\r_Counter_reg_n_0_[23] ,\r_Counter_reg_n_0_[22] ,\r_Counter_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__5
       (.CI(r_Counter0_carry__4_n_0),
        .CO({r_Counter0_carry__5_n_0,NLW_r_Counter0_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_Counter0_carry__5_n_4,r_Counter0_carry__5_n_5,r_Counter0_carry__5_n_6,r_Counter0_carry__5_n_7}),
        .S({\r_Counter_reg_n_0_[28] ,\r_Counter_reg_n_0_[27] ,\r_Counter_reg_n_0_[26] ,\r_Counter_reg_n_0_[25] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__6
       (.CI(r_Counter0_carry__5_n_0),
        .CO(NLW_r_Counter0_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_r_Counter0_carry__6_O_UNCONNECTED[3],r_Counter0_carry__6_n_5,r_Counter0_carry__6_n_6,r_Counter0_carry__6_n_7}),
        .S({1'b0,\r_Counter_reg_n_0_[31] ,\r_Counter_reg_n_0_[30] ,\r_Counter_reg_n_0_[29] }));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_Counter[0]_i_1__0 
       (.I0(Q[1]),
        .I1(\r_Counter_reg_n_0_[0] ),
        .O(\r_Counter[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[10]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__1_n_6),
        .O(\r_Counter[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[11]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__1_n_5),
        .O(\r_Counter[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[12]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__1_n_4),
        .O(\r_Counter[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[13]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__2_n_7),
        .O(\r_Counter[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[14]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__2_n_6),
        .O(\r_Counter[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[15]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__2_n_5),
        .O(\r_Counter[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[16]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__2_n_4),
        .O(\r_Counter[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[17]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__3_n_7),
        .O(\r_Counter[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[18]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__3_n_6),
        .O(\r_Counter[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[19]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__3_n_5),
        .O(\r_Counter[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[1]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry_n_7),
        .O(\r_Counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[20]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__3_n_4),
        .O(\r_Counter[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[21]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__4_n_7),
        .O(\r_Counter[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[22]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__4_n_6),
        .O(\r_Counter[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[23]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__4_n_5),
        .O(\r_Counter[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[24]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__4_n_4),
        .O(\r_Counter[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[25]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__5_n_7),
        .O(\r_Counter[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[26]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__5_n_6),
        .O(\r_Counter[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[27]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__5_n_5),
        .O(\r_Counter[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[28]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__5_n_4),
        .O(\r_Counter[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[29]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__6_n_7),
        .O(\r_Counter[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[2]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry_n_6),
        .O(\r_Counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[30]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__6_n_6),
        .O(\r_Counter[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \r_Counter[31]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_3/ ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[31]_i_2 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__6_n_5),
        .O(\r_Counter[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[3]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry_n_5),
        .O(\r_Counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[4]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry_n_4),
        .O(\r_Counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[5]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__0_n_7),
        .O(\r_Counter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[6]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__0_n_6),
        .O(\r_Counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[7]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__0_n_5),
        .O(\r_Counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[8]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__0_n_4),
        .O(\r_Counter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[9]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__1_n_7),
        .O(\r_Counter[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[0] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_3/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[0]_i_1__0_n_0 ),
        .Q(\r_Counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[10] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_3/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[10]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[11] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_3/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[11]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[12] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_3/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[12]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[13] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_3/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[13]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[14] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_3/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[14]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[15] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_3/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[15]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[16] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_3/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[16]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[17] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_3/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[17]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[18] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_3/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[18]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[19] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_3/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[19]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[1] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_3/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[1]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[20] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_3/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[20]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[21] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_3/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[21]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[22] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_3/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[22]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[23] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_3/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[23]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[24] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_3/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[24]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[25] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_3/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[25]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[26] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_3/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[26]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[27] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_3/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[27]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[28] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_3/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[28]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[29] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_3/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[29]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[2] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_3/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[2]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[30] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_3/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[30]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[31] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_3/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[31]_i_2_n_0 ),
        .Q(\r_Counter_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[3] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_3/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[3]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[4] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_3/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[4]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[5] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_3/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[5]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[6] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_3/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[6]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[7] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_3/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[7]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[8] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_3/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[8]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[9] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_3/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[9]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[9] ));
  LUT5 #(
    .INIT(32'hAABFAAAA)) 
    valid_i_1__1
       (.I0(\FSM_onehot_mainState_reg_n_0_[2] ),
        .I1(Q[0]),
        .I2(done),
        .I3(Q[1]),
        .I4(l_valid_3),
        .O(valid_i_1__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    valid_i_1__3
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(hasPulsed),
        .O(valid_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    valid_reg
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(valid_i_1__1_n_0),
        .Q(l_valid_3));
endmodule

(* ORIG_REF_NAME = "CounterModule" *) 
module CounterModule_2
   (l_valid_4,
    Q,
    \DataOut_reg[31]_0 ,
    pmod_OBUF_BUFG,
    reset_led_OBUF,
    D,
    \FSM_onehot_mainState_reg[0]_0 ,
    \FSM_onehot_mainState_reg[0]_1 ,
    \FSM_onehot_mainState_reg[2]_0 ,
    \FSM_onehot_mainState_reg[2]_1 ,
    done);
  output l_valid_4;
  output [1:0]Q;
  output [31:0]\DataOut_reg[31]_0 ;
  input pmod_OBUF_BUFG;
  input reset_led_OBUF;
  input [0:0]D;
  input \FSM_onehot_mainState_reg[0]_0 ;
  input [0:0]\FSM_onehot_mainState_reg[0]_1 ;
  input [0:0]\FSM_onehot_mainState_reg[2]_0 ;
  input \FSM_onehot_mainState_reg[2]_1 ;
  input done;

  wire [0:0]D;
  wire [31:0]\DataOut_reg[31]_0 ;
  wire \FSM_onehot_mainState_reg[0]_0 ;
  wire [0:0]\FSM_onehot_mainState_reg[0]_1 ;
  wire [0:0]\FSM_onehot_mainState_reg[2]_0 ;
  wire \FSM_onehot_mainState_reg[2]_1 ;
  wire \FSM_onehot_mainState_reg_n_0_[2] ;
  wire [1:0]Q;
  wire \count_4/ ;
  wire done;
  wire l_valid_4;
  wire [2:0]nextState;
  wire pmod_OBUF_BUFG;
  wire r_Counter0_carry__0_n_0;
  wire r_Counter0_carry__0_n_4;
  wire r_Counter0_carry__0_n_5;
  wire r_Counter0_carry__0_n_6;
  wire r_Counter0_carry__0_n_7;
  wire r_Counter0_carry__1_n_0;
  wire r_Counter0_carry__1_n_4;
  wire r_Counter0_carry__1_n_5;
  wire r_Counter0_carry__1_n_6;
  wire r_Counter0_carry__1_n_7;
  wire r_Counter0_carry__2_n_0;
  wire r_Counter0_carry__2_n_4;
  wire r_Counter0_carry__2_n_5;
  wire r_Counter0_carry__2_n_6;
  wire r_Counter0_carry__2_n_7;
  wire r_Counter0_carry__3_n_0;
  wire r_Counter0_carry__3_n_4;
  wire r_Counter0_carry__3_n_5;
  wire r_Counter0_carry__3_n_6;
  wire r_Counter0_carry__3_n_7;
  wire r_Counter0_carry__4_n_0;
  wire r_Counter0_carry__4_n_4;
  wire r_Counter0_carry__4_n_5;
  wire r_Counter0_carry__4_n_6;
  wire r_Counter0_carry__4_n_7;
  wire r_Counter0_carry__5_n_0;
  wire r_Counter0_carry__5_n_4;
  wire r_Counter0_carry__5_n_5;
  wire r_Counter0_carry__5_n_6;
  wire r_Counter0_carry__5_n_7;
  wire r_Counter0_carry__6_n_5;
  wire r_Counter0_carry__6_n_6;
  wire r_Counter0_carry__6_n_7;
  wire r_Counter0_carry_n_0;
  wire r_Counter0_carry_n_4;
  wire r_Counter0_carry_n_5;
  wire r_Counter0_carry_n_6;
  wire r_Counter0_carry_n_7;
  wire \r_Counter[0]_i_1_n_0 ;
  wire \r_Counter[10]_i_1_n_0 ;
  wire \r_Counter[11]_i_1_n_0 ;
  wire \r_Counter[12]_i_1_n_0 ;
  wire \r_Counter[13]_i_1_n_0 ;
  wire \r_Counter[14]_i_1_n_0 ;
  wire \r_Counter[15]_i_1_n_0 ;
  wire \r_Counter[16]_i_1_n_0 ;
  wire \r_Counter[17]_i_1_n_0 ;
  wire \r_Counter[18]_i_1_n_0 ;
  wire \r_Counter[19]_i_1_n_0 ;
  wire \r_Counter[1]_i_1_n_0 ;
  wire \r_Counter[20]_i_1_n_0 ;
  wire \r_Counter[21]_i_1_n_0 ;
  wire \r_Counter[22]_i_1_n_0 ;
  wire \r_Counter[23]_i_1_n_0 ;
  wire \r_Counter[24]_i_1_n_0 ;
  wire \r_Counter[25]_i_1_n_0 ;
  wire \r_Counter[26]_i_1_n_0 ;
  wire \r_Counter[27]_i_1_n_0 ;
  wire \r_Counter[28]_i_1_n_0 ;
  wire \r_Counter[29]_i_1_n_0 ;
  wire \r_Counter[2]_i_1_n_0 ;
  wire \r_Counter[30]_i_1_n_0 ;
  wire \r_Counter[31]_i_2_n_0 ;
  wire \r_Counter[3]_i_1_n_0 ;
  wire \r_Counter[4]_i_1_n_0 ;
  wire \r_Counter[5]_i_1_n_0 ;
  wire \r_Counter[6]_i_1_n_0 ;
  wire \r_Counter[7]_i_1_n_0 ;
  wire \r_Counter[8]_i_1_n_0 ;
  wire \r_Counter[9]_i_1_n_0 ;
  wire \r_Counter_reg_n_0_[0] ;
  wire \r_Counter_reg_n_0_[10] ;
  wire \r_Counter_reg_n_0_[11] ;
  wire \r_Counter_reg_n_0_[12] ;
  wire \r_Counter_reg_n_0_[13] ;
  wire \r_Counter_reg_n_0_[14] ;
  wire \r_Counter_reg_n_0_[15] ;
  wire \r_Counter_reg_n_0_[16] ;
  wire \r_Counter_reg_n_0_[17] ;
  wire \r_Counter_reg_n_0_[18] ;
  wire \r_Counter_reg_n_0_[19] ;
  wire \r_Counter_reg_n_0_[1] ;
  wire \r_Counter_reg_n_0_[20] ;
  wire \r_Counter_reg_n_0_[21] ;
  wire \r_Counter_reg_n_0_[22] ;
  wire \r_Counter_reg_n_0_[23] ;
  wire \r_Counter_reg_n_0_[24] ;
  wire \r_Counter_reg_n_0_[25] ;
  wire \r_Counter_reg_n_0_[26] ;
  wire \r_Counter_reg_n_0_[27] ;
  wire \r_Counter_reg_n_0_[28] ;
  wire \r_Counter_reg_n_0_[29] ;
  wire \r_Counter_reg_n_0_[2] ;
  wire \r_Counter_reg_n_0_[30] ;
  wire \r_Counter_reg_n_0_[31] ;
  wire \r_Counter_reg_n_0_[3] ;
  wire \r_Counter_reg_n_0_[4] ;
  wire \r_Counter_reg_n_0_[5] ;
  wire \r_Counter_reg_n_0_[6] ;
  wire \r_Counter_reg_n_0_[7] ;
  wire \r_Counter_reg_n_0_[8] ;
  wire \r_Counter_reg_n_0_[9] ;
  wire reset_led_OBUF;
  wire valid_i_1__2_n_0;
  wire [2:0]NLW_r_Counter0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_r_Counter0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_r_Counter0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_r_Counter0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_r_Counter0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_r_Counter0_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_r_Counter0_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_r_Counter0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_r_Counter0_carry__6_O_UNCONNECTED;

  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[0] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[0] ),
        .Q(\DataOut_reg[31]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[10] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[10] ),
        .Q(\DataOut_reg[31]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[11] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[11] ),
        .Q(\DataOut_reg[31]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[12] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[12] ),
        .Q(\DataOut_reg[31]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[13] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[13] ),
        .Q(\DataOut_reg[31]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[14] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[14] ),
        .Q(\DataOut_reg[31]_0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[15] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[15] ),
        .Q(\DataOut_reg[31]_0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[16] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[16] ),
        .Q(\DataOut_reg[31]_0 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[17] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[17] ),
        .Q(\DataOut_reg[31]_0 [17]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[18] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[18] ),
        .Q(\DataOut_reg[31]_0 [18]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[19] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[19] ),
        .Q(\DataOut_reg[31]_0 [19]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[1] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[1] ),
        .Q(\DataOut_reg[31]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[20] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[20] ),
        .Q(\DataOut_reg[31]_0 [20]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[21] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[21] ),
        .Q(\DataOut_reg[31]_0 [21]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[22] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[22] ),
        .Q(\DataOut_reg[31]_0 [22]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[23] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[23] ),
        .Q(\DataOut_reg[31]_0 [23]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[24] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[24] ),
        .Q(\DataOut_reg[31]_0 [24]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[25] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[25] ),
        .Q(\DataOut_reg[31]_0 [25]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[26] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[26] ),
        .Q(\DataOut_reg[31]_0 [26]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[27] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[27] ),
        .Q(\DataOut_reg[31]_0 [27]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[28] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[28] ),
        .Q(\DataOut_reg[31]_0 [28]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[29] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[29] ),
        .Q(\DataOut_reg[31]_0 [29]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[2] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[2] ),
        .Q(\DataOut_reg[31]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[30] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[30] ),
        .Q(\DataOut_reg[31]_0 [30]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[31] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[31] ),
        .Q(\DataOut_reg[31]_0 [31]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[3] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[3] ),
        .Q(\DataOut_reg[31]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[4] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[4] ),
        .Q(\DataOut_reg[31]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[5] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[5] ),
        .Q(\DataOut_reg[31]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[6] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[6] ),
        .Q(\DataOut_reg[31]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[7] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[7] ),
        .Q(\DataOut_reg[31]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[8] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[8] ),
        .Q(\DataOut_reg[31]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[9] 
       (.C(pmod_OBUF_BUFG),
        .CE(\FSM_onehot_mainState_reg_n_0_[2] ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter_reg_n_0_[9] ),
        .Q(\DataOut_reg[31]_0 [9]));
  LUT5 #(
    .INIT(32'h10101F10)) 
    \FSM_onehot_mainState[0]_i_1__2 
       (.I0(\FSM_onehot_mainState_reg[0]_0 ),
        .I1(\FSM_onehot_mainState_reg[0]_1 ),
        .I2(Q[0]),
        .I3(\FSM_onehot_mainState_reg_n_0_[2] ),
        .I4(Q[1]),
        .O(nextState[0]));
  LUT4 #(
    .INIT(16'h5400)) 
    \FSM_onehot_mainState[2]_i_1__2 
       (.I0(Q[0]),
        .I1(\FSM_onehot_mainState_reg[2]_0 ),
        .I2(\FSM_onehot_mainState_reg[2]_1 ),
        .I3(Q[1]),
        .O(nextState[2]));
  (* FSM_ENCODED_STATES = "C_IDLE:001,C_COUNTING:010,C_SENDING:100" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_mainState_reg[0] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .D(nextState[0]),
        .PRE(reset_led_OBUF),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "C_IDLE:001,C_COUNTING:010,C_SENDING:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_mainState_reg[1] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D),
        .Q(Q[1]));
  (* FSM_ENCODED_STATES = "C_IDLE:001,C_COUNTING:010,C_SENDING:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_mainState_reg[2] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(nextState[2]),
        .Q(\FSM_onehot_mainState_reg_n_0_[2] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry
       (.CI(1'b0),
        .CO({r_Counter0_carry_n_0,NLW_r_Counter0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\r_Counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_Counter0_carry_n_4,r_Counter0_carry_n_5,r_Counter0_carry_n_6,r_Counter0_carry_n_7}),
        .S({\r_Counter_reg_n_0_[4] ,\r_Counter_reg_n_0_[3] ,\r_Counter_reg_n_0_[2] ,\r_Counter_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__0
       (.CI(r_Counter0_carry_n_0),
        .CO({r_Counter0_carry__0_n_0,NLW_r_Counter0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_Counter0_carry__0_n_4,r_Counter0_carry__0_n_5,r_Counter0_carry__0_n_6,r_Counter0_carry__0_n_7}),
        .S({\r_Counter_reg_n_0_[8] ,\r_Counter_reg_n_0_[7] ,\r_Counter_reg_n_0_[6] ,\r_Counter_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__1
       (.CI(r_Counter0_carry__0_n_0),
        .CO({r_Counter0_carry__1_n_0,NLW_r_Counter0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_Counter0_carry__1_n_4,r_Counter0_carry__1_n_5,r_Counter0_carry__1_n_6,r_Counter0_carry__1_n_7}),
        .S({\r_Counter_reg_n_0_[12] ,\r_Counter_reg_n_0_[11] ,\r_Counter_reg_n_0_[10] ,\r_Counter_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__2
       (.CI(r_Counter0_carry__1_n_0),
        .CO({r_Counter0_carry__2_n_0,NLW_r_Counter0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_Counter0_carry__2_n_4,r_Counter0_carry__2_n_5,r_Counter0_carry__2_n_6,r_Counter0_carry__2_n_7}),
        .S({\r_Counter_reg_n_0_[16] ,\r_Counter_reg_n_0_[15] ,\r_Counter_reg_n_0_[14] ,\r_Counter_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__3
       (.CI(r_Counter0_carry__2_n_0),
        .CO({r_Counter0_carry__3_n_0,NLW_r_Counter0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_Counter0_carry__3_n_4,r_Counter0_carry__3_n_5,r_Counter0_carry__3_n_6,r_Counter0_carry__3_n_7}),
        .S({\r_Counter_reg_n_0_[20] ,\r_Counter_reg_n_0_[19] ,\r_Counter_reg_n_0_[18] ,\r_Counter_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__4
       (.CI(r_Counter0_carry__3_n_0),
        .CO({r_Counter0_carry__4_n_0,NLW_r_Counter0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_Counter0_carry__4_n_4,r_Counter0_carry__4_n_5,r_Counter0_carry__4_n_6,r_Counter0_carry__4_n_7}),
        .S({\r_Counter_reg_n_0_[24] ,\r_Counter_reg_n_0_[23] ,\r_Counter_reg_n_0_[22] ,\r_Counter_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__5
       (.CI(r_Counter0_carry__4_n_0),
        .CO({r_Counter0_carry__5_n_0,NLW_r_Counter0_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_Counter0_carry__5_n_4,r_Counter0_carry__5_n_5,r_Counter0_carry__5_n_6,r_Counter0_carry__5_n_7}),
        .S({\r_Counter_reg_n_0_[28] ,\r_Counter_reg_n_0_[27] ,\r_Counter_reg_n_0_[26] ,\r_Counter_reg_n_0_[25] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__6
       (.CI(r_Counter0_carry__5_n_0),
        .CO(NLW_r_Counter0_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_r_Counter0_carry__6_O_UNCONNECTED[3],r_Counter0_carry__6_n_5,r_Counter0_carry__6_n_6,r_Counter0_carry__6_n_7}),
        .S({1'b0,\r_Counter_reg_n_0_[31] ,\r_Counter_reg_n_0_[30] ,\r_Counter_reg_n_0_[29] }));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_Counter[0]_i_1 
       (.I0(Q[1]),
        .I1(\r_Counter_reg_n_0_[0] ),
        .O(\r_Counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[10]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__1_n_6),
        .O(\r_Counter[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[11]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__1_n_5),
        .O(\r_Counter[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[12]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__1_n_4),
        .O(\r_Counter[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[13]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__2_n_7),
        .O(\r_Counter[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[14]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__2_n_6),
        .O(\r_Counter[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[15]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__2_n_5),
        .O(\r_Counter[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[16]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__2_n_4),
        .O(\r_Counter[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[17]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__3_n_7),
        .O(\r_Counter[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[18]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__3_n_6),
        .O(\r_Counter[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[19]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__3_n_5),
        .O(\r_Counter[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[1]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry_n_7),
        .O(\r_Counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[20]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__3_n_4),
        .O(\r_Counter[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[21]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__4_n_7),
        .O(\r_Counter[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[22]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__4_n_6),
        .O(\r_Counter[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[23]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__4_n_5),
        .O(\r_Counter[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[24]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__4_n_4),
        .O(\r_Counter[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[25]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__5_n_7),
        .O(\r_Counter[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[26]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__5_n_6),
        .O(\r_Counter[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[27]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__5_n_5),
        .O(\r_Counter[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[28]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__5_n_4),
        .O(\r_Counter[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[29]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__6_n_7),
        .O(\r_Counter[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[2]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry_n_6),
        .O(\r_Counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[30]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__6_n_6),
        .O(\r_Counter[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \r_Counter[31]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_4/ ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[31]_i_2 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__6_n_5),
        .O(\r_Counter[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[3]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry_n_5),
        .O(\r_Counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[4]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry_n_4),
        .O(\r_Counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[5]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__0_n_7),
        .O(\r_Counter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[6]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__0_n_6),
        .O(\r_Counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[7]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__0_n_5),
        .O(\r_Counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[8]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__0_n_4),
        .O(\r_Counter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Counter[9]_i_1 
       (.I0(Q[1]),
        .I1(r_Counter0_carry__1_n_7),
        .O(\r_Counter[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[0] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_4/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[0]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[10] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_4/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[10]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[11] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_4/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[11]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[12] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_4/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[12]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[13] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_4/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[13]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[14] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_4/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[14]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[15] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_4/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[15]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[16] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_4/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[16]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[17] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_4/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[17]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[18] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_4/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[18]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[19] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_4/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[19]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[1] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_4/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[1]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[20] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_4/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[20]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[21] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_4/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[21]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[22] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_4/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[22]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[23] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_4/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[23]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[24] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_4/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[24]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[25] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_4/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[25]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[26] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_4/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[26]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[27] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_4/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[27]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[28] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_4/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[28]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[29] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_4/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[29]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[2] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_4/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[2]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[30] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_4/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[30]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[31] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_4/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[31]_i_2_n_0 ),
        .Q(\r_Counter_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[3] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_4/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[3]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[4] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_4/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[4]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[5] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_4/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[5]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[6] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_4/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[6]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[7] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_4/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[7]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[8] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_4/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[8]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[9] 
       (.C(pmod_OBUF_BUFG),
        .CE(\count_4/ ),
        .CLR(reset_led_OBUF),
        .D(\r_Counter[9]_i_1_n_0 ),
        .Q(\r_Counter_reg_n_0_[9] ));
  LUT5 #(
    .INIT(32'hAABFAAAA)) 
    valid_i_1__2
       (.I0(\FSM_onehot_mainState_reg_n_0_[2] ),
        .I1(Q[0]),
        .I2(done),
        .I3(Q[1]),
        .I4(l_valid_4),
        .O(valid_i_1__2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    valid_reg
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(valid_i_1__2_n_0),
        .Q(l_valid_4));
endmodule

module DataCombiner
   (comb_valid,
    hasPulsed,
    Q,
    valid_reg_0,
    pmod_OBUF_BUFG,
    reset_led_OBUF,
    hasPulsed_reg_0,
    l_valid_4,
    l_valid_1,
    l_valid_2,
    l_valid_3,
    \dataOut_reg[135]_0 ,
    \dataOut_reg[119]_0 ,
    \dataOut_reg[79]_0 ,
    \dataOut_reg[39]_0 );
  output comb_valid;
  output hasPulsed;
  output [104:0]Q;
  input valid_reg_0;
  input pmod_OBUF_BUFG;
  input reset_led_OBUF;
  input hasPulsed_reg_0;
  input l_valid_4;
  input l_valid_1;
  input l_valid_2;
  input l_valid_3;
  input [7:0]\dataOut_reg[135]_0 ;
  input [31:0]\dataOut_reg[119]_0 ;
  input [31:0]\dataOut_reg[79]_0 ;
  input [31:0]\dataOut_reg[39]_0 ;

  wire [104:0]Q;
  wire comb_valid;
  wire dataOut1__0;
  wire \dataOut[100]_i_1_n_0 ;
  wire \dataOut[101]_i_1_n_0 ;
  wire \dataOut[102]_i_1_n_0 ;
  wire \dataOut[103]_i_1_n_0 ;
  wire \dataOut[104]_i_1_n_0 ;
  wire \dataOut[105]_i_1_n_0 ;
  wire \dataOut[106]_i_1_n_0 ;
  wire \dataOut[107]_i_1_n_0 ;
  wire \dataOut[108]_i_1_n_0 ;
  wire \dataOut[109]_i_1_n_0 ;
  wire \dataOut[10]_i_1_n_0 ;
  wire \dataOut[110]_i_1_n_0 ;
  wire \dataOut[111]_i_1_n_0 ;
  wire \dataOut[112]_i_1_n_0 ;
  wire \dataOut[113]_i_1_n_0 ;
  wire \dataOut[114]_i_1_n_0 ;
  wire \dataOut[115]_i_1_n_0 ;
  wire \dataOut[116]_i_1_n_0 ;
  wire \dataOut[117]_i_1_n_0 ;
  wire \dataOut[118]_i_1_n_0 ;
  wire \dataOut[119]_i_1_n_0 ;
  wire \dataOut[11]_i_1_n_0 ;
  wire \dataOut[128]_i_1_n_0 ;
  wire \dataOut[129]_i_1_n_0 ;
  wire \dataOut[12]_i_1_n_0 ;
  wire \dataOut[130]_i_1_n_0 ;
  wire \dataOut[131]_i_1_n_0 ;
  wire \dataOut[132]_i_1_n_0 ;
  wire \dataOut[133]_i_1_n_0 ;
  wire \dataOut[134]_i_1_n_0 ;
  wire \dataOut[135]_i_1_n_0 ;
  wire \dataOut[13]_i_1_n_0 ;
  wire \dataOut[14]_i_1_n_0 ;
  wire \dataOut[15]_i_1_n_0 ;
  wire \dataOut[16]_i_1_n_0 ;
  wire \dataOut[17]_i_1_n_0 ;
  wire \dataOut[18]_i_1_n_0 ;
  wire \dataOut[19]_i_1_n_0 ;
  wire \dataOut[20]_i_1_n_0 ;
  wire \dataOut[21]_i_1_n_0 ;
  wire \dataOut[22]_i_1_n_0 ;
  wire \dataOut[23]_i_1_n_0 ;
  wire \dataOut[24]_i_1_n_0 ;
  wire \dataOut[25]_i_1_n_0 ;
  wire \dataOut[26]_i_1_n_0 ;
  wire \dataOut[27]_i_1_n_0 ;
  wire \dataOut[28]_i_1_n_0 ;
  wire \dataOut[29]_i_1_n_0 ;
  wire \dataOut[30]_i_1_n_0 ;
  wire \dataOut[31]_i_1_n_0 ;
  wire \dataOut[32]_i_1_n_0 ;
  wire \dataOut[33]_i_1_n_0 ;
  wire \dataOut[34]_i_1_n_0 ;
  wire \dataOut[35]_i_1_n_0 ;
  wire \dataOut[36]_i_1_n_0 ;
  wire \dataOut[37]_i_1_n_0 ;
  wire \dataOut[38]_i_1_n_0 ;
  wire \dataOut[39]_i_1_n_0 ;
  wire \dataOut[48]_i_1_n_0 ;
  wire \dataOut[49]_i_1_n_0 ;
  wire \dataOut[50]_i_1_n_0 ;
  wire \dataOut[51]_i_1_n_0 ;
  wire \dataOut[52]_i_1_n_0 ;
  wire \dataOut[53]_i_1_n_0 ;
  wire \dataOut[54]_i_1_n_0 ;
  wire \dataOut[55]_i_1_n_0 ;
  wire \dataOut[56]_i_1_n_0 ;
  wire \dataOut[57]_i_1_n_0 ;
  wire \dataOut[58]_i_1_n_0 ;
  wire \dataOut[59]_i_1_n_0 ;
  wire \dataOut[60]_i_1_n_0 ;
  wire \dataOut[61]_i_1_n_0 ;
  wire \dataOut[62]_i_1_n_0 ;
  wire \dataOut[63]_i_1_n_0 ;
  wire \dataOut[64]_i_1_n_0 ;
  wire \dataOut[65]_i_1_n_0 ;
  wire \dataOut[66]_i_1_n_0 ;
  wire \dataOut[67]_i_1_n_0 ;
  wire \dataOut[68]_i_1_n_0 ;
  wire \dataOut[69]_i_1_n_0 ;
  wire \dataOut[70]_i_1_n_0 ;
  wire \dataOut[71]_i_1_n_0 ;
  wire \dataOut[72]_i_1_n_0 ;
  wire \dataOut[73]_i_1_n_0 ;
  wire \dataOut[74]_i_1_n_0 ;
  wire \dataOut[75]_i_1_n_0 ;
  wire \dataOut[76]_i_1_n_0 ;
  wire \dataOut[77]_i_1_n_0 ;
  wire \dataOut[78]_i_1_n_0 ;
  wire \dataOut[79]_i_1_n_0 ;
  wire \dataOut[88]_i_1_n_0 ;
  wire \dataOut[89]_i_1_n_0 ;
  wire \dataOut[8]_i_1_n_0 ;
  wire \dataOut[90]_i_1_n_0 ;
  wire \dataOut[91]_i_1_n_0 ;
  wire \dataOut[92]_i_1_n_0 ;
  wire \dataOut[93]_i_1_n_0 ;
  wire \dataOut[94]_i_1_n_0 ;
  wire \dataOut[95]_i_1_n_0 ;
  wire \dataOut[96]_i_1_n_0 ;
  wire \dataOut[97]_i_1_n_0 ;
  wire \dataOut[98]_i_1_n_0 ;
  wire \dataOut[99]_i_1_n_0 ;
  wire \dataOut[9]_i_1_n_0 ;
  wire [31:0]\dataOut_reg[119]_0 ;
  wire [7:0]\dataOut_reg[135]_0 ;
  wire [31:0]\dataOut_reg[39]_0 ;
  wire [31:0]\dataOut_reg[79]_0 ;
  wire hasPulsed;
  wire hasPulsed_reg_0;
  wire l_valid_1;
  wire l_valid_2;
  wire l_valid_3;
  wire l_valid_4;
  wire pmod_OBUF_BUFG;
  wire reset_led_OBUF;
  wire valid_reg_0;

  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    dataOut1
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .O(dataOut1__0));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[100]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[119]_0 [12]),
        .O(\dataOut[100]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[101]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[119]_0 [13]),
        .O(\dataOut[101]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[102]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[119]_0 [14]),
        .O(\dataOut[102]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[103]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[119]_0 [15]),
        .O(\dataOut[103]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[104]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[119]_0 [16]),
        .O(\dataOut[104]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[105]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[119]_0 [17]),
        .O(\dataOut[105]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[106]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[119]_0 [18]),
        .O(\dataOut[106]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[107]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[119]_0 [19]),
        .O(\dataOut[107]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[108]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[119]_0 [20]),
        .O(\dataOut[108]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[109]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[119]_0 [21]),
        .O(\dataOut[109]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[10]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[39]_0 [2]),
        .O(\dataOut[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[110]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[119]_0 [22]),
        .O(\dataOut[110]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[111]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[119]_0 [23]),
        .O(\dataOut[111]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[112]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[119]_0 [24]),
        .O(\dataOut[112]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[113]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[119]_0 [25]),
        .O(\dataOut[113]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[114]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[119]_0 [26]),
        .O(\dataOut[114]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[115]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[119]_0 [27]),
        .O(\dataOut[115]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[116]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[119]_0 [28]),
        .O(\dataOut[116]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[117]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[119]_0 [29]),
        .O(\dataOut[117]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[118]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[119]_0 [30]),
        .O(\dataOut[118]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[119]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[119]_0 [31]),
        .O(\dataOut[119]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[11]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[39]_0 [3]),
        .O(\dataOut[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[128]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[135]_0 [0]),
        .O(\dataOut[128]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[129]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[135]_0 [1]),
        .O(\dataOut[129]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[12]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[39]_0 [4]),
        .O(\dataOut[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[130]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[135]_0 [2]),
        .O(\dataOut[130]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[131]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[135]_0 [3]),
        .O(\dataOut[131]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[132]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[135]_0 [4]),
        .O(\dataOut[132]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[133]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[135]_0 [5]),
        .O(\dataOut[133]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[134]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[135]_0 [6]),
        .O(\dataOut[134]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[135]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[135]_0 [7]),
        .O(\dataOut[135]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[13]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[39]_0 [5]),
        .O(\dataOut[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[14]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[39]_0 [6]),
        .O(\dataOut[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[15]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[39]_0 [7]),
        .O(\dataOut[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[16]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[39]_0 [8]),
        .O(\dataOut[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[17]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[39]_0 [9]),
        .O(\dataOut[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[18]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[39]_0 [10]),
        .O(\dataOut[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[19]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[39]_0 [11]),
        .O(\dataOut[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[20]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[39]_0 [12]),
        .O(\dataOut[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[21]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[39]_0 [13]),
        .O(\dataOut[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[22]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[39]_0 [14]),
        .O(\dataOut[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[23]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[39]_0 [15]),
        .O(\dataOut[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[24]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[39]_0 [16]),
        .O(\dataOut[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[25]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[39]_0 [17]),
        .O(\dataOut[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[26]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[39]_0 [18]),
        .O(\dataOut[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[27]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[39]_0 [19]),
        .O(\dataOut[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[28]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[39]_0 [20]),
        .O(\dataOut[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[29]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[39]_0 [21]),
        .O(\dataOut[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[30]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[39]_0 [22]),
        .O(\dataOut[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[31]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[39]_0 [23]),
        .O(\dataOut[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[32]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[39]_0 [24]),
        .O(\dataOut[32]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[33]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[39]_0 [25]),
        .O(\dataOut[33]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[34]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[39]_0 [26]),
        .O(\dataOut[34]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[35]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[39]_0 [27]),
        .O(\dataOut[35]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[36]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[39]_0 [28]),
        .O(\dataOut[36]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[37]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[39]_0 [29]),
        .O(\dataOut[37]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[38]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[39]_0 [30]),
        .O(\dataOut[38]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[39]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[39]_0 [31]),
        .O(\dataOut[39]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[48]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[79]_0 [0]),
        .O(\dataOut[48]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[49]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[79]_0 [1]),
        .O(\dataOut[49]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[50]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[79]_0 [2]),
        .O(\dataOut[50]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[51]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[79]_0 [3]),
        .O(\dataOut[51]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[52]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[79]_0 [4]),
        .O(\dataOut[52]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[53]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[79]_0 [5]),
        .O(\dataOut[53]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[54]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[79]_0 [6]),
        .O(\dataOut[54]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[55]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[79]_0 [7]),
        .O(\dataOut[55]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[56]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[79]_0 [8]),
        .O(\dataOut[56]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[57]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[79]_0 [9]),
        .O(\dataOut[57]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[58]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[79]_0 [10]),
        .O(\dataOut[58]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[59]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[79]_0 [11]),
        .O(\dataOut[59]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[60]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[79]_0 [12]),
        .O(\dataOut[60]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[61]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[79]_0 [13]),
        .O(\dataOut[61]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[62]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[79]_0 [14]),
        .O(\dataOut[62]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[63]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[79]_0 [15]),
        .O(\dataOut[63]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[64]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[79]_0 [16]),
        .O(\dataOut[64]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[65]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[79]_0 [17]),
        .O(\dataOut[65]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[66]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[79]_0 [18]),
        .O(\dataOut[66]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[67]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[79]_0 [19]),
        .O(\dataOut[67]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[68]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[79]_0 [20]),
        .O(\dataOut[68]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[69]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[79]_0 [21]),
        .O(\dataOut[69]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[70]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[79]_0 [22]),
        .O(\dataOut[70]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[71]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[79]_0 [23]),
        .O(\dataOut[71]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[72]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[79]_0 [24]),
        .O(\dataOut[72]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[73]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[79]_0 [25]),
        .O(\dataOut[73]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[74]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[79]_0 [26]),
        .O(\dataOut[74]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[75]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[79]_0 [27]),
        .O(\dataOut[75]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[76]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[79]_0 [28]),
        .O(\dataOut[76]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[77]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[79]_0 [29]),
        .O(\dataOut[77]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[78]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[79]_0 [30]),
        .O(\dataOut[78]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[79]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[79]_0 [31]),
        .O(\dataOut[79]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[88]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[119]_0 [0]),
        .O(\dataOut[88]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[89]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[119]_0 [1]),
        .O(\dataOut[89]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[8]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[39]_0 [0]),
        .O(\dataOut[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[90]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[119]_0 [2]),
        .O(\dataOut[90]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[91]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[119]_0 [3]),
        .O(\dataOut[91]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[92]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[119]_0 [4]),
        .O(\dataOut[92]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[93]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[119]_0 [5]),
        .O(\dataOut[93]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[94]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[119]_0 [6]),
        .O(\dataOut[94]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[95]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[119]_0 [7]),
        .O(\dataOut[95]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[96]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[119]_0 [8]),
        .O(\dataOut[96]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[97]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[119]_0 [9]),
        .O(\dataOut[97]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[98]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[119]_0 [10]),
        .O(\dataOut[98]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[99]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[119]_0 [11]),
        .O(\dataOut[99]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[9]_i_1 
       (.I0(l_valid_3),
        .I1(l_valid_2),
        .I2(l_valid_1),
        .I3(l_valid_4),
        .I4(\dataOut_reg[39]_0 [1]),
        .O(\dataOut[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[0] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(dataOut1__0),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[100] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[100]_i_1_n_0 ),
        .Q(Q[77]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[101] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[101]_i_1_n_0 ),
        .Q(Q[78]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[102] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[102]_i_1_n_0 ),
        .Q(Q[79]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[103] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[103]_i_1_n_0 ),
        .Q(Q[80]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[104] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[104]_i_1_n_0 ),
        .Q(Q[81]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[105] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[105]_i_1_n_0 ),
        .Q(Q[82]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[106] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[106]_i_1_n_0 ),
        .Q(Q[83]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[107] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[107]_i_1_n_0 ),
        .Q(Q[84]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[108] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[108]_i_1_n_0 ),
        .Q(Q[85]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[109] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[109]_i_1_n_0 ),
        .Q(Q[86]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[10] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[10]_i_1_n_0 ),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[110] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[110]_i_1_n_0 ),
        .Q(Q[87]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[111] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[111]_i_1_n_0 ),
        .Q(Q[88]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[112] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[112]_i_1_n_0 ),
        .Q(Q[89]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[113] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[113]_i_1_n_0 ),
        .Q(Q[90]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[114] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[114]_i_1_n_0 ),
        .Q(Q[91]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[115] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[115]_i_1_n_0 ),
        .Q(Q[92]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[116] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[116]_i_1_n_0 ),
        .Q(Q[93]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[117] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[117]_i_1_n_0 ),
        .Q(Q[94]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[118] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[118]_i_1_n_0 ),
        .Q(Q[95]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[119] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[119]_i_1_n_0 ),
        .Q(Q[96]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[11] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[11]_i_1_n_0 ),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[128] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[128]_i_1_n_0 ),
        .Q(Q[97]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[129] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[129]_i_1_n_0 ),
        .Q(Q[98]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[12] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[12]_i_1_n_0 ),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[130] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[130]_i_1_n_0 ),
        .Q(Q[99]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[131] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[131]_i_1_n_0 ),
        .Q(Q[100]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[132] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[132]_i_1_n_0 ),
        .Q(Q[101]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[133] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[133]_i_1_n_0 ),
        .Q(Q[102]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[134] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[134]_i_1_n_0 ),
        .Q(Q[103]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[135] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[135]_i_1_n_0 ),
        .Q(Q[104]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[13] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[13]_i_1_n_0 ),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[14] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[14]_i_1_n_0 ),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[15] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[15]_i_1_n_0 ),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[16] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[16]_i_1_n_0 ),
        .Q(Q[9]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[17] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[17]_i_1_n_0 ),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[18] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[18]_i_1_n_0 ),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[19] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[19]_i_1_n_0 ),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[20] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[20]_i_1_n_0 ),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[21] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[21]_i_1_n_0 ),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[22] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[22]_i_1_n_0 ),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[23] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[23]_i_1_n_0 ),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[24] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[24]_i_1_n_0 ),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[25] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[25]_i_1_n_0 ),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[26] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[26]_i_1_n_0 ),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[27] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[27]_i_1_n_0 ),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[28] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[28]_i_1_n_0 ),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[29] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[29]_i_1_n_0 ),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[30] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[30]_i_1_n_0 ),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[31] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[31]_i_1_n_0 ),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[32] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[32]_i_1_n_0 ),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[33] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[33]_i_1_n_0 ),
        .Q(Q[26]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[34] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[34]_i_1_n_0 ),
        .Q(Q[27]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[35] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[35]_i_1_n_0 ),
        .Q(Q[28]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[36] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[36]_i_1_n_0 ),
        .Q(Q[29]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[37] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[37]_i_1_n_0 ),
        .Q(Q[30]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[38] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[38]_i_1_n_0 ),
        .Q(Q[31]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[39] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[39]_i_1_n_0 ),
        .Q(Q[32]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[48] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[48]_i_1_n_0 ),
        .Q(Q[33]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[49] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[49]_i_1_n_0 ),
        .Q(Q[34]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[50] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[50]_i_1_n_0 ),
        .Q(Q[35]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[51] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[51]_i_1_n_0 ),
        .Q(Q[36]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[52] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[52]_i_1_n_0 ),
        .Q(Q[37]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[53] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[53]_i_1_n_0 ),
        .Q(Q[38]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[54] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[54]_i_1_n_0 ),
        .Q(Q[39]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[55] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[55]_i_1_n_0 ),
        .Q(Q[40]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[56] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[56]_i_1_n_0 ),
        .Q(Q[41]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[57] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[57]_i_1_n_0 ),
        .Q(Q[42]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[58] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[58]_i_1_n_0 ),
        .Q(Q[43]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[59] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[59]_i_1_n_0 ),
        .Q(Q[44]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[60] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[60]_i_1_n_0 ),
        .Q(Q[45]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[61] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[61]_i_1_n_0 ),
        .Q(Q[46]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[62] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[62]_i_1_n_0 ),
        .Q(Q[47]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[63] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[63]_i_1_n_0 ),
        .Q(Q[48]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[64] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[64]_i_1_n_0 ),
        .Q(Q[49]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[65] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[65]_i_1_n_0 ),
        .Q(Q[50]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[66] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[66]_i_1_n_0 ),
        .Q(Q[51]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[67] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[67]_i_1_n_0 ),
        .Q(Q[52]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[68] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[68]_i_1_n_0 ),
        .Q(Q[53]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[69] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[69]_i_1_n_0 ),
        .Q(Q[54]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[70] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[70]_i_1_n_0 ),
        .Q(Q[55]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[71] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[71]_i_1_n_0 ),
        .Q(Q[56]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[72] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[72]_i_1_n_0 ),
        .Q(Q[57]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[73] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[73]_i_1_n_0 ),
        .Q(Q[58]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[74] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[74]_i_1_n_0 ),
        .Q(Q[59]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[75] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[75]_i_1_n_0 ),
        .Q(Q[60]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[76] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[76]_i_1_n_0 ),
        .Q(Q[61]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[77] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[77]_i_1_n_0 ),
        .Q(Q[62]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[78] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[78]_i_1_n_0 ),
        .Q(Q[63]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[79] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[79]_i_1_n_0 ),
        .Q(Q[64]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[88] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[88]_i_1_n_0 ),
        .Q(Q[65]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[89] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[89]_i_1_n_0 ),
        .Q(Q[66]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[8] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[8]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[90] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[90]_i_1_n_0 ),
        .Q(Q[67]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[91] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[91]_i_1_n_0 ),
        .Q(Q[68]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[92] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[92]_i_1_n_0 ),
        .Q(Q[69]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[93] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[93]_i_1_n_0 ),
        .Q(Q[70]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[94] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[94]_i_1_n_0 ),
        .Q(Q[71]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[95] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[95]_i_1_n_0 ),
        .Q(Q[72]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[96] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[96]_i_1_n_0 ),
        .Q(Q[73]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[97] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[97]_i_1_n_0 ),
        .Q(Q[74]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[98] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[98]_i_1_n_0 ),
        .Q(Q[75]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[99] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[99]_i_1_n_0 ),
        .Q(Q[76]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[9] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(\dataOut[9]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    hasPulsed_reg
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(hasPulsed_reg_0),
        .Q(hasPulsed));
  FDCE #(
    .INIT(1'b0)) 
    valid_reg
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(valid_reg_0),
        .Q(comb_valid));
endmodule

module UARTBuffer
   (l_TX_DV,
    done,
    E,
    \TX_Byte_reg[7]_0 ,
    pmod_OBUF_BUFG,
    reset_led_OBUF,
    comb_valid,
    l_TX_done,
    trigg_led_OBUF,
    Q,
    \r_dataFrame_reg[135]_0 );
  output l_TX_DV;
  output done;
  output [0:0]E;
  output [7:0]\TX_Byte_reg[7]_0 ;
  input pmod_OBUF_BUFG;
  input reset_led_OBUF;
  input comb_valid;
  input l_TX_done;
  input trigg_led_OBUF;
  input [0:0]Q;
  input [104:0]\r_dataFrame_reg[135]_0 ;

  wire [0:0]E;
  wire [0:0]Q;
  wire \TX_Byte[0]_i_1_n_0 ;
  wire \TX_Byte[0]_i_2_n_0 ;
  wire \TX_Byte[0]_i_3_n_0 ;
  wire \TX_Byte[0]_i_4_n_0 ;
  wire \TX_Byte[0]_i_5_n_0 ;
  wire \TX_Byte[0]_i_6_n_0 ;
  wire \TX_Byte[0]_i_7_n_0 ;
  wire \TX_Byte[1]_i_1_n_0 ;
  wire \TX_Byte[1]_i_2_n_0 ;
  wire \TX_Byte[1]_i_3_n_0 ;
  wire \TX_Byte[1]_i_4_n_0 ;
  wire \TX_Byte[1]_i_5_n_0 ;
  wire \TX_Byte[1]_i_6_n_0 ;
  wire \TX_Byte[1]_i_7_n_0 ;
  wire \TX_Byte[2]_i_1_n_0 ;
  wire \TX_Byte[2]_i_2_n_0 ;
  wire \TX_Byte[2]_i_3_n_0 ;
  wire \TX_Byte[2]_i_4_n_0 ;
  wire \TX_Byte[2]_i_5_n_0 ;
  wire \TX_Byte[2]_i_6_n_0 ;
  wire \TX_Byte[2]_i_7_n_0 ;
  wire \TX_Byte[3]_i_1_n_0 ;
  wire \TX_Byte[3]_i_2_n_0 ;
  wire \TX_Byte[3]_i_3_n_0 ;
  wire \TX_Byte[3]_i_4_n_0 ;
  wire \TX_Byte[3]_i_5_n_0 ;
  wire \TX_Byte[3]_i_6_n_0 ;
  wire \TX_Byte[3]_i_7_n_0 ;
  wire \TX_Byte[4]_i_1_n_0 ;
  wire \TX_Byte[4]_i_2_n_0 ;
  wire \TX_Byte[4]_i_3_n_0 ;
  wire \TX_Byte[4]_i_4_n_0 ;
  wire \TX_Byte[4]_i_5_n_0 ;
  wire \TX_Byte[4]_i_6_n_0 ;
  wire \TX_Byte[4]_i_7_n_0 ;
  wire \TX_Byte[5]_i_1_n_0 ;
  wire \TX_Byte[5]_i_2_n_0 ;
  wire \TX_Byte[5]_i_3_n_0 ;
  wire \TX_Byte[5]_i_4_n_0 ;
  wire \TX_Byte[5]_i_5_n_0 ;
  wire \TX_Byte[5]_i_6_n_0 ;
  wire \TX_Byte[5]_i_7_n_0 ;
  wire \TX_Byte[6]_i_1_n_0 ;
  wire \TX_Byte[6]_i_2_n_0 ;
  wire \TX_Byte[6]_i_3_n_0 ;
  wire \TX_Byte[6]_i_4_n_0 ;
  wire \TX_Byte[6]_i_5_n_0 ;
  wire \TX_Byte[6]_i_6_n_0 ;
  wire \TX_Byte[6]_i_7_n_0 ;
  wire \TX_Byte[7]_i_1_n_0 ;
  wire \TX_Byte[7]_i_2_n_0 ;
  wire \TX_Byte[7]_i_3_n_0 ;
  wire \TX_Byte[7]_i_4_n_0 ;
  wire \TX_Byte[7]_i_5_n_0 ;
  wire \TX_Byte[7]_i_6_n_0 ;
  wire \TX_Byte[7]_i_7_n_0 ;
  wire \TX_Byte[7]_i_8_n_0 ;
  wire [7:0]\TX_Byte_reg[7]_0 ;
  wire \byteCounter[5]_i_2_n_0 ;
  wire \byteCounter[7]_i_1_n_0 ;
  wire \byteCounter[7]_i_3_n_0 ;
  wire [7:0]byteCounter_reg;
  wire comb_valid;
  wire dataReady;
  wire dataReady_i_1_n_0;
  wire done;
  wire done_i_1_n_0;
  wire l_TX_DV;
  wire l_TX_done;
  wire lastValid;
  wire mainState;
  wire mainState_i_2_n_0;
  wire mainState_i_3_n_0;
  wire nextState;
  wire [7:0]p_0_in;
  wire [135:0]p_1_in;
  wire pmod_OBUF_BUFG;
  wire r_TX_DV_i_1_n_0;
  wire [1:0]r_TxActiveReg;
  wire [1:0]r_TxDoneReg;
  wire [135:0]r_dataFrame;
  wire \r_dataFrame[135]_i_1_n_0 ;
  wire [104:0]\r_dataFrame_reg[135]_0 ;
  wire reset_led_OBUF;
  wire trigg_led_OBUF;

  LUT6 #(
    .INIT(64'hFF80000000000000)) 
    \TX_Byte[0]_i_1 
       (.I0(byteCounter_reg[1]),
        .I1(byteCounter_reg[0]),
        .I2(\TX_Byte[0]_i_2_n_0 ),
        .I3(\TX_Byte[0]_i_3_n_0 ),
        .I4(mainState),
        .I5(dataReady),
        .O(\TX_Byte[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEFAAAAA)) 
    \TX_Byte[0]_i_2 
       (.I0(\TX_Byte[0]_i_4_n_0 ),
        .I1(r_dataFrame[32]),
        .I2(r_dataFrame[96]),
        .I3(byteCounter_reg[3]),
        .I4(byteCounter_reg[2]),
        .O(\TX_Byte[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \TX_Byte[0]_i_3 
       (.I0(\TX_Byte[0]_i_5_n_0 ),
        .I1(\TX_Byte[0]_i_6_n_0 ),
        .I2(\TX_Byte[0]_i_7_n_0 ),
        .I3(byteCounter_reg[1]),
        .I4(byteCounter_reg[0]),
        .O(\TX_Byte[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    \TX_Byte[0]_i_4 
       (.I0(r_dataFrame[64]),
        .I1(byteCounter_reg[3]),
        .I2(r_dataFrame[128]),
        .I3(r_dataFrame[0]),
        .I4(byteCounter_reg[4]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hACFFAC0FACF0AC00)) 
    \TX_Byte[0]_i_5 
       (.I0(r_dataFrame[56]),
        .I1(r_dataFrame[88]),
        .I2(byteCounter_reg[2]),
        .I3(byteCounter_reg[3]),
        .I4(r_dataFrame[0]),
        .I5(r_dataFrame[24]),
        .O(\TX_Byte[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFA0CFAFC0A0C0)) 
    \TX_Byte[0]_i_6 
       (.I0(r_dataFrame[48]),
        .I1(r_dataFrame[112]),
        .I2(byteCounter_reg[2]),
        .I3(byteCounter_reg[3]),
        .I4(r_dataFrame[0]),
        .I5(r_dataFrame[16]),
        .O(\TX_Byte[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \TX_Byte[0]_i_7 
       (.I0(r_dataFrame[72]),
        .I1(r_dataFrame[104]),
        .I2(byteCounter_reg[3]),
        .I3(byteCounter_reg[2]),
        .I4(r_dataFrame[0]),
        .I5(r_dataFrame[8]),
        .O(\TX_Byte[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF80000000000000)) 
    \TX_Byte[1]_i_1 
       (.I0(byteCounter_reg[1]),
        .I1(byteCounter_reg[0]),
        .I2(\TX_Byte[1]_i_2_n_0 ),
        .I3(\TX_Byte[1]_i_3_n_0 ),
        .I4(mainState),
        .I5(dataReady),
        .O(\TX_Byte[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEFAAAAA)) 
    \TX_Byte[1]_i_2 
       (.I0(\TX_Byte[1]_i_4_n_0 ),
        .I1(r_dataFrame[33]),
        .I2(r_dataFrame[97]),
        .I3(byteCounter_reg[3]),
        .I4(byteCounter_reg[2]),
        .O(\TX_Byte[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \TX_Byte[1]_i_3 
       (.I0(\TX_Byte[1]_i_5_n_0 ),
        .I1(\TX_Byte[1]_i_6_n_0 ),
        .I2(\TX_Byte[1]_i_7_n_0 ),
        .I3(byteCounter_reg[1]),
        .I4(byteCounter_reg[0]),
        .O(\TX_Byte[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    \TX_Byte[1]_i_4 
       (.I0(r_dataFrame[65]),
        .I1(byteCounter_reg[3]),
        .I2(r_dataFrame[129]),
        .I3(r_dataFrame[0]),
        .I4(byteCounter_reg[4]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hACFFAC0FACF0AC00)) 
    \TX_Byte[1]_i_5 
       (.I0(r_dataFrame[57]),
        .I1(r_dataFrame[89]),
        .I2(byteCounter_reg[2]),
        .I3(byteCounter_reg[3]),
        .I4(r_dataFrame[0]),
        .I5(r_dataFrame[25]),
        .O(\TX_Byte[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFA0CFAFC0A0C0)) 
    \TX_Byte[1]_i_6 
       (.I0(r_dataFrame[49]),
        .I1(r_dataFrame[113]),
        .I2(byteCounter_reg[2]),
        .I3(byteCounter_reg[3]),
        .I4(r_dataFrame[0]),
        .I5(r_dataFrame[17]),
        .O(\TX_Byte[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \TX_Byte[1]_i_7 
       (.I0(r_dataFrame[73]),
        .I1(r_dataFrame[105]),
        .I2(byteCounter_reg[3]),
        .I3(byteCounter_reg[2]),
        .I4(r_dataFrame[0]),
        .I5(r_dataFrame[9]),
        .O(\TX_Byte[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF80000000000000)) 
    \TX_Byte[2]_i_1 
       (.I0(byteCounter_reg[1]),
        .I1(byteCounter_reg[0]),
        .I2(\TX_Byte[2]_i_2_n_0 ),
        .I3(\TX_Byte[2]_i_3_n_0 ),
        .I4(mainState),
        .I5(dataReady),
        .O(\TX_Byte[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEFAAAAA)) 
    \TX_Byte[2]_i_2 
       (.I0(\TX_Byte[2]_i_4_n_0 ),
        .I1(r_dataFrame[34]),
        .I2(r_dataFrame[98]),
        .I3(byteCounter_reg[3]),
        .I4(byteCounter_reg[2]),
        .O(\TX_Byte[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \TX_Byte[2]_i_3 
       (.I0(\TX_Byte[2]_i_5_n_0 ),
        .I1(\TX_Byte[2]_i_6_n_0 ),
        .I2(\TX_Byte[2]_i_7_n_0 ),
        .I3(byteCounter_reg[1]),
        .I4(byteCounter_reg[0]),
        .O(\TX_Byte[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    \TX_Byte[2]_i_4 
       (.I0(r_dataFrame[66]),
        .I1(byteCounter_reg[3]),
        .I2(r_dataFrame[130]),
        .I3(r_dataFrame[0]),
        .I4(byteCounter_reg[4]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hACFFAC0FACF0AC00)) 
    \TX_Byte[2]_i_5 
       (.I0(r_dataFrame[58]),
        .I1(r_dataFrame[90]),
        .I2(byteCounter_reg[2]),
        .I3(byteCounter_reg[3]),
        .I4(r_dataFrame[0]),
        .I5(r_dataFrame[26]),
        .O(\TX_Byte[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFA0CFAFC0A0C0)) 
    \TX_Byte[2]_i_6 
       (.I0(r_dataFrame[50]),
        .I1(r_dataFrame[114]),
        .I2(byteCounter_reg[2]),
        .I3(byteCounter_reg[3]),
        .I4(r_dataFrame[0]),
        .I5(r_dataFrame[18]),
        .O(\TX_Byte[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \TX_Byte[2]_i_7 
       (.I0(r_dataFrame[74]),
        .I1(r_dataFrame[106]),
        .I2(byteCounter_reg[3]),
        .I3(byteCounter_reg[2]),
        .I4(r_dataFrame[0]),
        .I5(r_dataFrame[10]),
        .O(\TX_Byte[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF80000000000000)) 
    \TX_Byte[3]_i_1 
       (.I0(byteCounter_reg[1]),
        .I1(byteCounter_reg[0]),
        .I2(\TX_Byte[3]_i_2_n_0 ),
        .I3(\TX_Byte[3]_i_3_n_0 ),
        .I4(mainState),
        .I5(dataReady),
        .O(\TX_Byte[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEFAAAAA)) 
    \TX_Byte[3]_i_2 
       (.I0(\TX_Byte[3]_i_4_n_0 ),
        .I1(r_dataFrame[35]),
        .I2(r_dataFrame[99]),
        .I3(byteCounter_reg[3]),
        .I4(byteCounter_reg[2]),
        .O(\TX_Byte[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \TX_Byte[3]_i_3 
       (.I0(\TX_Byte[3]_i_5_n_0 ),
        .I1(\TX_Byte[3]_i_6_n_0 ),
        .I2(\TX_Byte[3]_i_7_n_0 ),
        .I3(byteCounter_reg[1]),
        .I4(byteCounter_reg[0]),
        .O(\TX_Byte[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    \TX_Byte[3]_i_4 
       (.I0(r_dataFrame[67]),
        .I1(byteCounter_reg[3]),
        .I2(r_dataFrame[131]),
        .I3(r_dataFrame[0]),
        .I4(byteCounter_reg[4]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hACFFAC0FACF0AC00)) 
    \TX_Byte[3]_i_5 
       (.I0(r_dataFrame[59]),
        .I1(r_dataFrame[91]),
        .I2(byteCounter_reg[2]),
        .I3(byteCounter_reg[3]),
        .I4(r_dataFrame[0]),
        .I5(r_dataFrame[27]),
        .O(\TX_Byte[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFA0CFAFC0A0C0)) 
    \TX_Byte[3]_i_6 
       (.I0(r_dataFrame[51]),
        .I1(r_dataFrame[115]),
        .I2(byteCounter_reg[2]),
        .I3(byteCounter_reg[3]),
        .I4(r_dataFrame[0]),
        .I5(r_dataFrame[19]),
        .O(\TX_Byte[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \TX_Byte[3]_i_7 
       (.I0(r_dataFrame[75]),
        .I1(r_dataFrame[107]),
        .I2(byteCounter_reg[3]),
        .I3(byteCounter_reg[2]),
        .I4(r_dataFrame[0]),
        .I5(r_dataFrame[11]),
        .O(\TX_Byte[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF80000000000000)) 
    \TX_Byte[4]_i_1 
       (.I0(byteCounter_reg[1]),
        .I1(byteCounter_reg[0]),
        .I2(\TX_Byte[4]_i_2_n_0 ),
        .I3(\TX_Byte[4]_i_3_n_0 ),
        .I4(mainState),
        .I5(dataReady),
        .O(\TX_Byte[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEFAAAAA)) 
    \TX_Byte[4]_i_2 
       (.I0(\TX_Byte[4]_i_4_n_0 ),
        .I1(r_dataFrame[36]),
        .I2(r_dataFrame[100]),
        .I3(byteCounter_reg[3]),
        .I4(byteCounter_reg[2]),
        .O(\TX_Byte[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \TX_Byte[4]_i_3 
       (.I0(\TX_Byte[4]_i_5_n_0 ),
        .I1(\TX_Byte[4]_i_6_n_0 ),
        .I2(\TX_Byte[4]_i_7_n_0 ),
        .I3(byteCounter_reg[1]),
        .I4(byteCounter_reg[0]),
        .O(\TX_Byte[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    \TX_Byte[4]_i_4 
       (.I0(r_dataFrame[68]),
        .I1(byteCounter_reg[3]),
        .I2(r_dataFrame[132]),
        .I3(r_dataFrame[0]),
        .I4(byteCounter_reg[4]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hACFFAC0FACF0AC00)) 
    \TX_Byte[4]_i_5 
       (.I0(r_dataFrame[60]),
        .I1(r_dataFrame[92]),
        .I2(byteCounter_reg[2]),
        .I3(byteCounter_reg[3]),
        .I4(r_dataFrame[0]),
        .I5(r_dataFrame[28]),
        .O(\TX_Byte[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFA0CFAFC0A0C0)) 
    \TX_Byte[4]_i_6 
       (.I0(r_dataFrame[52]),
        .I1(r_dataFrame[116]),
        .I2(byteCounter_reg[2]),
        .I3(byteCounter_reg[3]),
        .I4(r_dataFrame[0]),
        .I5(r_dataFrame[20]),
        .O(\TX_Byte[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \TX_Byte[4]_i_7 
       (.I0(r_dataFrame[76]),
        .I1(r_dataFrame[108]),
        .I2(byteCounter_reg[3]),
        .I3(byteCounter_reg[2]),
        .I4(r_dataFrame[0]),
        .I5(r_dataFrame[12]),
        .O(\TX_Byte[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF80000000000000)) 
    \TX_Byte[5]_i_1 
       (.I0(byteCounter_reg[1]),
        .I1(byteCounter_reg[0]),
        .I2(\TX_Byte[5]_i_2_n_0 ),
        .I3(\TX_Byte[5]_i_3_n_0 ),
        .I4(mainState),
        .I5(dataReady),
        .O(\TX_Byte[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEFAAAAA)) 
    \TX_Byte[5]_i_2 
       (.I0(\TX_Byte[5]_i_4_n_0 ),
        .I1(r_dataFrame[37]),
        .I2(r_dataFrame[101]),
        .I3(byteCounter_reg[3]),
        .I4(byteCounter_reg[2]),
        .O(\TX_Byte[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \TX_Byte[5]_i_3 
       (.I0(\TX_Byte[5]_i_5_n_0 ),
        .I1(\TX_Byte[5]_i_6_n_0 ),
        .I2(\TX_Byte[5]_i_7_n_0 ),
        .I3(byteCounter_reg[1]),
        .I4(byteCounter_reg[0]),
        .O(\TX_Byte[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    \TX_Byte[5]_i_4 
       (.I0(r_dataFrame[69]),
        .I1(byteCounter_reg[3]),
        .I2(r_dataFrame[133]),
        .I3(r_dataFrame[0]),
        .I4(byteCounter_reg[4]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hACFFAC0FACF0AC00)) 
    \TX_Byte[5]_i_5 
       (.I0(r_dataFrame[61]),
        .I1(r_dataFrame[93]),
        .I2(byteCounter_reg[2]),
        .I3(byteCounter_reg[3]),
        .I4(r_dataFrame[0]),
        .I5(r_dataFrame[29]),
        .O(\TX_Byte[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFA0CFAFC0A0C0)) 
    \TX_Byte[5]_i_6 
       (.I0(r_dataFrame[53]),
        .I1(r_dataFrame[117]),
        .I2(byteCounter_reg[2]),
        .I3(byteCounter_reg[3]),
        .I4(r_dataFrame[0]),
        .I5(r_dataFrame[21]),
        .O(\TX_Byte[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \TX_Byte[5]_i_7 
       (.I0(r_dataFrame[77]),
        .I1(r_dataFrame[109]),
        .I2(byteCounter_reg[3]),
        .I3(byteCounter_reg[2]),
        .I4(r_dataFrame[0]),
        .I5(r_dataFrame[13]),
        .O(\TX_Byte[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF80000000000000)) 
    \TX_Byte[6]_i_1 
       (.I0(byteCounter_reg[1]),
        .I1(byteCounter_reg[0]),
        .I2(\TX_Byte[6]_i_2_n_0 ),
        .I3(\TX_Byte[6]_i_3_n_0 ),
        .I4(mainState),
        .I5(dataReady),
        .O(\TX_Byte[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEFAAAAA)) 
    \TX_Byte[6]_i_2 
       (.I0(\TX_Byte[6]_i_4_n_0 ),
        .I1(r_dataFrame[38]),
        .I2(r_dataFrame[102]),
        .I3(byteCounter_reg[3]),
        .I4(byteCounter_reg[2]),
        .O(\TX_Byte[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \TX_Byte[6]_i_3 
       (.I0(\TX_Byte[6]_i_5_n_0 ),
        .I1(\TX_Byte[6]_i_6_n_0 ),
        .I2(\TX_Byte[6]_i_7_n_0 ),
        .I3(byteCounter_reg[1]),
        .I4(byteCounter_reg[0]),
        .O(\TX_Byte[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    \TX_Byte[6]_i_4 
       (.I0(r_dataFrame[70]),
        .I1(byteCounter_reg[3]),
        .I2(r_dataFrame[134]),
        .I3(r_dataFrame[0]),
        .I4(byteCounter_reg[4]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hACFFAC0FACF0AC00)) 
    \TX_Byte[6]_i_5 
       (.I0(r_dataFrame[62]),
        .I1(r_dataFrame[94]),
        .I2(byteCounter_reg[2]),
        .I3(byteCounter_reg[3]),
        .I4(r_dataFrame[0]),
        .I5(r_dataFrame[30]),
        .O(\TX_Byte[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFA0CFAFC0A0C0)) 
    \TX_Byte[6]_i_6 
       (.I0(r_dataFrame[54]),
        .I1(r_dataFrame[118]),
        .I2(byteCounter_reg[2]),
        .I3(byteCounter_reg[3]),
        .I4(r_dataFrame[0]),
        .I5(r_dataFrame[22]),
        .O(\TX_Byte[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \TX_Byte[6]_i_7 
       (.I0(r_dataFrame[78]),
        .I1(r_dataFrame[110]),
        .I2(byteCounter_reg[3]),
        .I3(byteCounter_reg[2]),
        .I4(r_dataFrame[0]),
        .I5(r_dataFrame[14]),
        .O(\TX_Byte[6]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \TX_Byte[7]_i_1 
       (.I0(mainState),
        .I1(dataReady),
        .I2(l_TX_done),
        .I3(trigg_led_OBUF),
        .O(\TX_Byte[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF80000000000000)) 
    \TX_Byte[7]_i_2 
       (.I0(byteCounter_reg[1]),
        .I1(byteCounter_reg[0]),
        .I2(\TX_Byte[7]_i_3_n_0 ),
        .I3(\TX_Byte[7]_i_4_n_0 ),
        .I4(mainState),
        .I5(dataReady),
        .O(\TX_Byte[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEEFAAAAA)) 
    \TX_Byte[7]_i_3 
       (.I0(\TX_Byte[7]_i_5_n_0 ),
        .I1(r_dataFrame[39]),
        .I2(r_dataFrame[103]),
        .I3(byteCounter_reg[3]),
        .I4(byteCounter_reg[2]),
        .O(\TX_Byte[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \TX_Byte[7]_i_4 
       (.I0(\TX_Byte[7]_i_6_n_0 ),
        .I1(\TX_Byte[7]_i_7_n_0 ),
        .I2(\TX_Byte[7]_i_8_n_0 ),
        .I3(byteCounter_reg[1]),
        .I4(byteCounter_reg[0]),
        .O(\TX_Byte[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    \TX_Byte[7]_i_5 
       (.I0(r_dataFrame[71]),
        .I1(byteCounter_reg[3]),
        .I2(r_dataFrame[135]),
        .I3(r_dataFrame[0]),
        .I4(byteCounter_reg[4]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hACFFAC0FACF0AC00)) 
    \TX_Byte[7]_i_6 
       (.I0(r_dataFrame[63]),
        .I1(r_dataFrame[95]),
        .I2(byteCounter_reg[2]),
        .I3(byteCounter_reg[3]),
        .I4(r_dataFrame[0]),
        .I5(r_dataFrame[31]),
        .O(\TX_Byte[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFA0CFAFC0A0C0)) 
    \TX_Byte[7]_i_7 
       (.I0(r_dataFrame[55]),
        .I1(r_dataFrame[119]),
        .I2(byteCounter_reg[2]),
        .I3(byteCounter_reg[3]),
        .I4(r_dataFrame[0]),
        .I5(r_dataFrame[23]),
        .O(\TX_Byte[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \TX_Byte[7]_i_8 
       (.I0(r_dataFrame[79]),
        .I1(r_dataFrame[111]),
        .I2(byteCounter_reg[3]),
        .I3(byteCounter_reg[2]),
        .I4(r_dataFrame[0]),
        .I5(r_dataFrame[15]),
        .O(\TX_Byte[7]_i_8_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \TX_Byte_reg[0] 
       (.C(pmod_OBUF_BUFG),
        .CE(\TX_Byte[7]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(\TX_Byte[0]_i_1_n_0 ),
        .Q(\TX_Byte_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \TX_Byte_reg[1] 
       (.C(pmod_OBUF_BUFG),
        .CE(\TX_Byte[7]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(\TX_Byte[1]_i_1_n_0 ),
        .Q(\TX_Byte_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \TX_Byte_reg[2] 
       (.C(pmod_OBUF_BUFG),
        .CE(\TX_Byte[7]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(\TX_Byte[2]_i_1_n_0 ),
        .Q(\TX_Byte_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \TX_Byte_reg[3] 
       (.C(pmod_OBUF_BUFG),
        .CE(\TX_Byte[7]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(\TX_Byte[3]_i_1_n_0 ),
        .Q(\TX_Byte_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \TX_Byte_reg[4] 
       (.C(pmod_OBUF_BUFG),
        .CE(\TX_Byte[7]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(\TX_Byte[4]_i_1_n_0 ),
        .Q(\TX_Byte_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \TX_Byte_reg[5] 
       (.C(pmod_OBUF_BUFG),
        .CE(\TX_Byte[7]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(\TX_Byte[5]_i_1_n_0 ),
        .Q(\TX_Byte_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \TX_Byte_reg[6] 
       (.C(pmod_OBUF_BUFG),
        .CE(\TX_Byte[7]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(\TX_Byte[6]_i_1_n_0 ),
        .Q(\TX_Byte_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \TX_Byte_reg[7] 
       (.C(pmod_OBUF_BUFG),
        .CE(\TX_Byte[7]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(\TX_Byte[7]_i_2_n_0 ),
        .Q(\TX_Byte_reg[7]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \byteCounter[0]_i_1 
       (.I0(mainState),
        .I1(byteCounter_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \byteCounter[1]_i_1 
       (.I0(mainState),
        .I1(byteCounter_reg[0]),
        .I2(byteCounter_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \byteCounter[2]_i_1 
       (.I0(byteCounter_reg[0]),
        .I1(byteCounter_reg[1]),
        .I2(mainState),
        .I3(byteCounter_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \byteCounter[3]_i_1 
       (.I0(byteCounter_reg[2]),
        .I1(byteCounter_reg[1]),
        .I2(byteCounter_reg[0]),
        .I3(mainState),
        .I4(byteCounter_reg[3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \byteCounter[4]_i_1 
       (.I0(byteCounter_reg[3]),
        .I1(byteCounter_reg[0]),
        .I2(byteCounter_reg[1]),
        .I3(byteCounter_reg[2]),
        .I4(mainState),
        .I5(byteCounter_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \byteCounter[5]_i_1 
       (.I0(byteCounter_reg[4]),
        .I1(byteCounter_reg[2]),
        .I2(\byteCounter[5]_i_2_n_0 ),
        .I3(byteCounter_reg[3]),
        .I4(mainState),
        .I5(byteCounter_reg[5]),
        .O(p_0_in[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \byteCounter[5]_i_2 
       (.I0(byteCounter_reg[0]),
        .I1(byteCounter_reg[1]),
        .O(\byteCounter[5]_i_2_n_0 ));
  (* \PinAttr:I2:HOLD_DETOUR  = "194" *) 
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \byteCounter[6]_i_1 
       (.I0(\byteCounter[7]_i_3_n_0 ),
        .I1(mainState),
        .I2(byteCounter_reg[6]),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'h0020FFFF)) 
    \byteCounter[7]_i_1 
       (.I0(r_TxDoneReg[0]),
        .I1(r_TxDoneReg[1]),
        .I2(r_TxActiveReg[1]),
        .I3(r_TxActiveReg[0]),
        .I4(mainState),
        .O(\byteCounter[7]_i_1_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "194" *) 
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \byteCounter[7]_i_2 
       (.I0(byteCounter_reg[6]),
        .I1(\byteCounter[7]_i_3_n_0 ),
        .I2(mainState),
        .I3(byteCounter_reg[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \byteCounter[7]_i_3 
       (.I0(byteCounter_reg[5]),
        .I1(byteCounter_reg[3]),
        .I2(byteCounter_reg[0]),
        .I3(byteCounter_reg[1]),
        .I4(byteCounter_reg[2]),
        .I5(byteCounter_reg[4]),
        .O(\byteCounter[7]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \byteCounter_reg[0] 
       (.C(pmod_OBUF_BUFG),
        .CE(\byteCounter[7]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_0_in[0]),
        .Q(byteCounter_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \byteCounter_reg[1] 
       (.C(pmod_OBUF_BUFG),
        .CE(\byteCounter[7]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_0_in[1]),
        .Q(byteCounter_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \byteCounter_reg[2] 
       (.C(pmod_OBUF_BUFG),
        .CE(\byteCounter[7]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_0_in[2]),
        .Q(byteCounter_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \byteCounter_reg[3] 
       (.C(pmod_OBUF_BUFG),
        .CE(\byteCounter[7]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_0_in[3]),
        .Q(byteCounter_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \byteCounter_reg[4] 
       (.C(pmod_OBUF_BUFG),
        .CE(\byteCounter[7]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_0_in[4]),
        .Q(byteCounter_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \byteCounter_reg[5] 
       (.C(pmod_OBUF_BUFG),
        .CE(\byteCounter[7]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_0_in[5]),
        .Q(byteCounter_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \byteCounter_reg[6] 
       (.C(pmod_OBUF_BUFG),
        .CE(\byteCounter[7]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_0_in[6]),
        .Q(byteCounter_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \byteCounter_reg[7] 
       (.C(pmod_OBUF_BUFG),
        .CE(\byteCounter[7]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_0_in[7]),
        .Q(byteCounter_reg[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    dataReady_i_1
       (.I0(mainState),
        .I1(lastValid),
        .O(dataReady_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    dataReady_reg
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(dataReady_i_1_n_0),
        .Q(dataReady));
  (* \PinAttr:I3:HOLD_DETOUR  = "178" *) 
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF010)) 
    done_i_1
       (.I0(trigg_led_OBUF),
        .I1(mainState_i_2_n_0),
        .I2(mainState),
        .I3(done),
        .O(done_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    done_reg
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(done_i_1_n_0),
        .Q(done));
  FDCE #(
    .INIT(1'b0)) 
    lastValid_reg
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(comb_valid),
        .Q(lastValid));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    mainState_i_1
       (.I0(mainState_i_2_n_0),
        .I1(mainState),
        .I2(comb_valid),
        .O(nextState));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    mainState_i_2
       (.I0(l_TX_done),
        .I1(mainState_i_3_n_0),
        .I2(byteCounter_reg[1]),
        .I3(byteCounter_reg[0]),
        .I4(byteCounter_reg[7]),
        .I5(byteCounter_reg[6]),
        .O(mainState_i_2_n_0));
  LUT4 #(
    .INIT(16'h0100)) 
    mainState_i_3
       (.I0(byteCounter_reg[3]),
        .I1(byteCounter_reg[2]),
        .I2(byteCounter_reg[5]),
        .I3(byteCounter_reg[4]),
        .O(mainState_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    mainState_reg
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(nextState),
        .Q(mainState));
  LUT5 #(
    .INIT(32'h88088800)) 
    r_TX_DV_i_1
       (.I0(dataReady),
        .I1(mainState),
        .I2(l_TX_done),
        .I3(trigg_led_OBUF),
        .I4(mainState_i_2_n_0),
        .O(r_TX_DV_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    r_TX_DV_reg
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(r_TX_DV_i_1_n_0),
        .Q(l_TX_DV));
  FDCE #(
    .INIT(1'b0)) 
    \r_TxActiveReg_reg[0] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(trigg_led_OBUF),
        .Q(r_TxActiveReg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TxActiveReg_reg[1] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(r_TxActiveReg[0]),
        .Q(r_TxActiveReg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TxDoneReg_reg[0] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(l_TX_done),
        .Q(r_TxDoneReg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TxDoneReg_reg[1] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(r_TxDoneReg[0]),
        .Q(r_TxDoneReg[1]));
  LUT3 #(
    .INIT(8'h08)) 
    \r_Tx_Data[7]_i_1 
       (.I0(l_TX_DV),
        .I1(Q),
        .I2(reset_led_OBUF),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[0]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[100]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [77]),
        .O(p_1_in[100]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[101]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [78]),
        .O(p_1_in[101]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[102]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [79]),
        .O(p_1_in[102]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[103]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [80]),
        .O(p_1_in[103]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[104]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [81]),
        .O(p_1_in[104]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[105]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [82]),
        .O(p_1_in[105]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[106]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [83]),
        .O(p_1_in[106]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[107]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [84]),
        .O(p_1_in[107]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[108]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [85]),
        .O(p_1_in[108]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[109]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [86]),
        .O(p_1_in[109]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[10]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [3]),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[110]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [87]),
        .O(p_1_in[110]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[111]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [88]),
        .O(p_1_in[111]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[112]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [89]),
        .O(p_1_in[112]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[113]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [90]),
        .O(p_1_in[113]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[114]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [91]),
        .O(p_1_in[114]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[115]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [92]),
        .O(p_1_in[115]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[116]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [93]),
        .O(p_1_in[116]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[117]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [94]),
        .O(p_1_in[117]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[118]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [95]),
        .O(p_1_in[118]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[119]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [96]),
        .O(p_1_in[119]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[11]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [4]),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[128]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [97]),
        .O(p_1_in[128]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[129]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [98]),
        .O(p_1_in[129]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[12]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [5]),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[130]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [99]),
        .O(p_1_in[130]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[131]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [100]),
        .O(p_1_in[131]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[132]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [101]),
        .O(p_1_in[132]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[133]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [102]),
        .O(p_1_in[133]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[134]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [103]),
        .O(p_1_in[134]));
  LUT2 #(
    .INIT(4'hB)) 
    \r_dataFrame[135]_i_1 
       (.I0(lastValid),
        .I1(mainState),
        .O(\r_dataFrame[135]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[135]_i_2 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [104]),
        .O(p_1_in[135]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[13]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [6]),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[14]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [7]),
        .O(p_1_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[15]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [8]),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[16]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [9]),
        .O(p_1_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[17]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [10]),
        .O(p_1_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[18]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [11]),
        .O(p_1_in[18]));
  (* \PinAttr:I1:HOLD_DETOUR  = "154" *) 
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[19]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [12]),
        .O(p_1_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[20]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [13]),
        .O(p_1_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[21]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [14]),
        .O(p_1_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[22]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [15]),
        .O(p_1_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[23]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [16]),
        .O(p_1_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[24]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [17]),
        .O(p_1_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[25]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [18]),
        .O(p_1_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[26]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [19]),
        .O(p_1_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[27]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [20]),
        .O(p_1_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[28]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [21]),
        .O(p_1_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[29]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [22]),
        .O(p_1_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[30]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [23]),
        .O(p_1_in[30]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[31]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [24]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[32]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [25]),
        .O(p_1_in[32]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[33]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [26]),
        .O(p_1_in[33]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[34]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [27]),
        .O(p_1_in[34]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[35]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [28]),
        .O(p_1_in[35]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[36]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [29]),
        .O(p_1_in[36]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[37]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [30]),
        .O(p_1_in[37]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[38]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [31]),
        .O(p_1_in[38]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[39]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [32]),
        .O(p_1_in[39]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[48]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [33]),
        .O(p_1_in[48]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[49]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [34]),
        .O(p_1_in[49]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[50]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [35]),
        .O(p_1_in[50]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[51]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [36]),
        .O(p_1_in[51]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[52]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [37]),
        .O(p_1_in[52]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[53]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [38]),
        .O(p_1_in[53]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[54]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [39]),
        .O(p_1_in[54]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[55]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [40]),
        .O(p_1_in[55]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[56]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [41]),
        .O(p_1_in[56]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[57]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [42]),
        .O(p_1_in[57]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[58]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [43]),
        .O(p_1_in[58]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[59]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [44]),
        .O(p_1_in[59]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[60]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [45]),
        .O(p_1_in[60]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[61]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [46]),
        .O(p_1_in[61]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[62]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [47]),
        .O(p_1_in[62]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[63]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [48]),
        .O(p_1_in[63]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[64]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [49]),
        .O(p_1_in[64]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[65]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [50]),
        .O(p_1_in[65]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[66]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [51]),
        .O(p_1_in[66]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[67]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [52]),
        .O(p_1_in[67]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[68]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [53]),
        .O(p_1_in[68]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[69]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [54]),
        .O(p_1_in[69]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[70]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [55]),
        .O(p_1_in[70]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[71]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [56]),
        .O(p_1_in[71]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[72]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [57]),
        .O(p_1_in[72]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[73]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [58]),
        .O(p_1_in[73]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[74]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [59]),
        .O(p_1_in[74]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[75]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [60]),
        .O(p_1_in[75]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[76]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [61]),
        .O(p_1_in[76]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[77]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [62]),
        .O(p_1_in[77]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[78]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [63]),
        .O(p_1_in[78]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[79]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [64]),
        .O(p_1_in[79]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[88]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [65]),
        .O(p_1_in[88]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[89]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [66]),
        .O(p_1_in[89]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[8]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [1]),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[90]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [67]),
        .O(p_1_in[90]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[91]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [68]),
        .O(p_1_in[91]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[92]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [69]),
        .O(p_1_in[92]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[93]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [70]),
        .O(p_1_in[93]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[94]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [71]),
        .O(p_1_in[94]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[95]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [72]),
        .O(p_1_in[95]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[96]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [73]),
        .O(p_1_in[96]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[97]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [74]),
        .O(p_1_in[97]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[98]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [75]),
        .O(p_1_in[98]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[99]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [76]),
        .O(p_1_in[99]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[9]_i_1 
       (.I0(mainState),
        .I1(\r_dataFrame_reg[135]_0 [2]),
        .O(p_1_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[0] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[0]),
        .Q(r_dataFrame[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[100] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[100]),
        .Q(r_dataFrame[100]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[101] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[101]),
        .Q(r_dataFrame[101]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[102] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[102]),
        .Q(r_dataFrame[102]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[103] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[103]),
        .Q(r_dataFrame[103]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[104] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[104]),
        .Q(r_dataFrame[104]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[105] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[105]),
        .Q(r_dataFrame[105]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[106] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[106]),
        .Q(r_dataFrame[106]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[107] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[107]),
        .Q(r_dataFrame[107]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[108] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[108]),
        .Q(r_dataFrame[108]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[109] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[109]),
        .Q(r_dataFrame[109]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[10] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[10]),
        .Q(r_dataFrame[10]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[110] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[110]),
        .Q(r_dataFrame[110]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[111] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[111]),
        .Q(r_dataFrame[111]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[112] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[112]),
        .Q(r_dataFrame[112]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[113] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[113]),
        .Q(r_dataFrame[113]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[114] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[114]),
        .Q(r_dataFrame[114]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[115] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[115]),
        .Q(r_dataFrame[115]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[116] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[116]),
        .Q(r_dataFrame[116]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[117] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[117]),
        .Q(r_dataFrame[117]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[118] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[118]),
        .Q(r_dataFrame[118]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[119] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[119]),
        .Q(r_dataFrame[119]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[11] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[11]),
        .Q(r_dataFrame[11]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[128] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[128]),
        .Q(r_dataFrame[128]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[129] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[129]),
        .Q(r_dataFrame[129]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[12] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[12]),
        .Q(r_dataFrame[12]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[130] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[130]),
        .Q(r_dataFrame[130]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[131] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[131]),
        .Q(r_dataFrame[131]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[132] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[132]),
        .Q(r_dataFrame[132]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[133] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[133]),
        .Q(r_dataFrame[133]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[134] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[134]),
        .Q(r_dataFrame[134]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[135] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[135]),
        .Q(r_dataFrame[135]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[13] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[13]),
        .Q(r_dataFrame[13]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[14] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[14]),
        .Q(r_dataFrame[14]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[15] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[15]),
        .Q(r_dataFrame[15]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[16] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[16]),
        .Q(r_dataFrame[16]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[17] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[17]),
        .Q(r_dataFrame[17]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[18] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[18]),
        .Q(r_dataFrame[18]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[19] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[19]),
        .Q(r_dataFrame[19]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[20] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[20]),
        .Q(r_dataFrame[20]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[21] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[21]),
        .Q(r_dataFrame[21]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[22] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[22]),
        .Q(r_dataFrame[22]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[23] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[23]),
        .Q(r_dataFrame[23]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[24] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[24]),
        .Q(r_dataFrame[24]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[25] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[25]),
        .Q(r_dataFrame[25]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[26] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[26]),
        .Q(r_dataFrame[26]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[27] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[27]),
        .Q(r_dataFrame[27]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[28] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[28]),
        .Q(r_dataFrame[28]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[29] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[29]),
        .Q(r_dataFrame[29]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[30] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[30]),
        .Q(r_dataFrame[30]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[31] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[31]),
        .Q(r_dataFrame[31]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[32] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[32]),
        .Q(r_dataFrame[32]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[33] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[33]),
        .Q(r_dataFrame[33]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[34] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[34]),
        .Q(r_dataFrame[34]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[35] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[35]),
        .Q(r_dataFrame[35]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[36] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[36]),
        .Q(r_dataFrame[36]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[37] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[37]),
        .Q(r_dataFrame[37]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[38] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[38]),
        .Q(r_dataFrame[38]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[39] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[39]),
        .Q(r_dataFrame[39]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[48] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[48]),
        .Q(r_dataFrame[48]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[49] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[49]),
        .Q(r_dataFrame[49]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[50] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[50]),
        .Q(r_dataFrame[50]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[51] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[51]),
        .Q(r_dataFrame[51]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[52] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[52]),
        .Q(r_dataFrame[52]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[53] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[53]),
        .Q(r_dataFrame[53]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[54] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[54]),
        .Q(r_dataFrame[54]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[55] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[55]),
        .Q(r_dataFrame[55]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[56] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[56]),
        .Q(r_dataFrame[56]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[57] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[57]),
        .Q(r_dataFrame[57]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[58] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[58]),
        .Q(r_dataFrame[58]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[59] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[59]),
        .Q(r_dataFrame[59]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[60] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[60]),
        .Q(r_dataFrame[60]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[61] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[61]),
        .Q(r_dataFrame[61]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[62] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[62]),
        .Q(r_dataFrame[62]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[63] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[63]),
        .Q(r_dataFrame[63]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[64] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[64]),
        .Q(r_dataFrame[64]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[65] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[65]),
        .Q(r_dataFrame[65]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[66] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[66]),
        .Q(r_dataFrame[66]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[67] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[67]),
        .Q(r_dataFrame[67]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[68] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[68]),
        .Q(r_dataFrame[68]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[69] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[69]),
        .Q(r_dataFrame[69]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[70] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[70]),
        .Q(r_dataFrame[70]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[71] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[71]),
        .Q(r_dataFrame[71]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[72] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[72]),
        .Q(r_dataFrame[72]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[73] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[73]),
        .Q(r_dataFrame[73]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[74] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[74]),
        .Q(r_dataFrame[74]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[75] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[75]),
        .Q(r_dataFrame[75]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[76] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[76]),
        .Q(r_dataFrame[76]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[77] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[77]),
        .Q(r_dataFrame[77]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[78] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[78]),
        .Q(r_dataFrame[78]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[79] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[79]),
        .Q(r_dataFrame[79]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[88] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[88]),
        .Q(r_dataFrame[88]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[89] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[89]),
        .Q(r_dataFrame[89]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[8] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[8]),
        .Q(r_dataFrame[8]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[90] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[90]),
        .Q(r_dataFrame[90]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[91] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[91]),
        .Q(r_dataFrame[91]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[92] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[92]),
        .Q(r_dataFrame[92]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[93] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[93]),
        .Q(r_dataFrame[93]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[94] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[94]),
        .Q(r_dataFrame[94]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[95] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[95]),
        .Q(r_dataFrame[95]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[96] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[96]),
        .Q(r_dataFrame[96]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[97] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[97]),
        .Q(r_dataFrame[97]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[98] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[98]),
        .Q(r_dataFrame[98]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[99] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[99]),
        .Q(r_dataFrame[99]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[9] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_dataFrame[135]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[9]),
        .Q(r_dataFrame[9]));
endmodule

(* ECO_CHECKSUM = "fa2febd2" *) (* c_CLKS_PER_BIT = "868" *) 
(* NotValidForBitStream *)
module top
   (clk,
    trigg,
    signalSendt,
    reset_n,
    sw,
    pmod,
    o_Tx,
    tx_led,
    reset_led,
    trigg_led,
    signal_led);
  input clk;
  input trigg;
  input signalSendt;
  input reset_n;
  input sw;
  output pmod;
  output o_Tx;
  output tx_led;
  output reset_led;
  output trigg_led;
  output signal_led;

  wire [7:0]DataOut;
  wire [7:0]TX_Byte;
  wire buffer_n_2;
  wire clk;
  wire comb_valid;
  wire count_2_n_10;
  wire count_2_n_11;
  wire count_2_n_12;
  wire count_2_n_13;
  wire count_2_n_14;
  wire count_2_n_15;
  wire count_2_n_16;
  wire count_2_n_17;
  wire count_2_n_18;
  wire count_2_n_19;
  wire count_2_n_2;
  wire count_2_n_20;
  wire count_2_n_21;
  wire count_2_n_22;
  wire count_2_n_23;
  wire count_2_n_24;
  wire count_2_n_25;
  wire count_2_n_26;
  wire count_2_n_27;
  wire count_2_n_28;
  wire count_2_n_29;
  wire count_2_n_3;
  wire count_2_n_30;
  wire count_2_n_31;
  wire count_2_n_32;
  wire count_2_n_33;
  wire count_2_n_34;
  wire count_2_n_35;
  wire count_2_n_36;
  wire count_2_n_37;
  wire count_2_n_38;
  wire count_2_n_39;
  wire count_2_n_8;
  wire count_2_n_9;
  wire count_3_n_10;
  wire count_3_n_11;
  wire count_3_n_12;
  wire count_3_n_13;
  wire count_3_n_14;
  wire count_3_n_15;
  wire count_3_n_16;
  wire count_3_n_17;
  wire count_3_n_18;
  wire count_3_n_19;
  wire count_3_n_20;
  wire count_3_n_21;
  wire count_3_n_22;
  wire count_3_n_23;
  wire count_3_n_24;
  wire count_3_n_25;
  wire count_3_n_26;
  wire count_3_n_27;
  wire count_3_n_28;
  wire count_3_n_29;
  wire count_3_n_3;
  wire count_3_n_30;
  wire count_3_n_31;
  wire count_3_n_32;
  wire count_3_n_33;
  wire count_3_n_34;
  wire count_3_n_35;
  wire count_3_n_36;
  wire count_3_n_4;
  wire count_3_n_5;
  wire count_3_n_6;
  wire count_3_n_7;
  wire count_3_n_8;
  wire count_3_n_9;
  wire count_4_n_10;
  wire count_4_n_11;
  wire count_4_n_12;
  wire count_4_n_13;
  wire count_4_n_14;
  wire count_4_n_15;
  wire count_4_n_16;
  wire count_4_n_17;
  wire count_4_n_18;
  wire count_4_n_19;
  wire count_4_n_20;
  wire count_4_n_21;
  wire count_4_n_22;
  wire count_4_n_23;
  wire count_4_n_24;
  wire count_4_n_25;
  wire count_4_n_26;
  wire count_4_n_27;
  wire count_4_n_28;
  wire count_4_n_29;
  wire count_4_n_3;
  wire count_4_n_30;
  wire count_4_n_31;
  wire count_4_n_32;
  wire count_4_n_33;
  wire count_4_n_34;
  wire count_4_n_4;
  wire count_4_n_5;
  wire count_4_n_6;
  wire count_4_n_7;
  wire count_4_n_8;
  wire count_4_n_9;
  wire [135:0]dataOut;
  wire done;
  wire hasPulsed;
  wire l_TX_DV;
  wire l_TX_done;
  wire l_valid_1;
  wire l_valid_2;
  wire l_valid_3;
  wire l_valid_4;
  wire lopt;
  wire [1:0]mainState;
  wire [1:0]mainState_2;
  wire [1:0]mainState_3;
  wire [1:1]nextState;
  wire [1:1]nextState_0;
  wire [1:1]nextState_1;
  wire o_Tx;
  wire pmod;
  wire pmod_OBUF;
  wire pmod_OBUF_BUFG;
  wire reset_led;
  wire reset_led_OBUF;
  wire reset_n;
  wire [2:2]signalReg__0;
  wire signalSendt;
  wire signalSendt_IBUF;
  wire signal_led;
  wire signal_led_OBUF;
  wire sw;
  wire trigg;
  wire [2:2]triggReg__0;
  wire trigg_IBUF;
  wire trigg_led;
  wire trigg_led_OBUF;
  wire tx_led;
  wire tx_led_OBUF;
  wire uart_n_3;
  wire NLW_uart_lopt_1_UNCONNECTED;

initial begin
 $sdf_annotate("netlist.sdf",,,,"tool_control");
end
  UARTBuffer buffer
       (.E(buffer_n_2),
        .Q(uart_n_3),
        .\TX_Byte_reg[7]_0 (TX_Byte),
        .comb_valid(comb_valid),
        .done(done),
        .l_TX_DV(l_TX_DV),
        .l_TX_done(l_TX_done),
        .pmod_OBUF_BUFG(pmod_OBUF_BUFG),
        .\r_dataFrame_reg[135]_0 ({dataOut[135:128],dataOut[119:88],dataOut[79:48],dataOut[39:8],dataOut[0]}),
        .reset_led_OBUF(reset_led_OBUF),
        .trigg_led_OBUF(trigg_led_OBUF));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(pmod_OBUF));
  DataCombiner comb
       (.Q({dataOut[135:128],dataOut[119:88],dataOut[79:48],dataOut[39:8],dataOut[0]}),
        .comb_valid(comb_valid),
        .\dataOut_reg[119]_0 ({count_2_n_8,count_2_n_9,count_2_n_10,count_2_n_11,count_2_n_12,count_2_n_13,count_2_n_14,count_2_n_15,count_2_n_16,count_2_n_17,count_2_n_18,count_2_n_19,count_2_n_20,count_2_n_21,count_2_n_22,count_2_n_23,count_2_n_24,count_2_n_25,count_2_n_26,count_2_n_27,count_2_n_28,count_2_n_29,count_2_n_30,count_2_n_31,count_2_n_32,count_2_n_33,count_2_n_34,count_2_n_35,count_2_n_36,count_2_n_37,count_2_n_38,count_2_n_39}),
        .\dataOut_reg[135]_0 (DataOut),
        .\dataOut_reg[39]_0 ({count_4_n_3,count_4_n_4,count_4_n_5,count_4_n_6,count_4_n_7,count_4_n_8,count_4_n_9,count_4_n_10,count_4_n_11,count_4_n_12,count_4_n_13,count_4_n_14,count_4_n_15,count_4_n_16,count_4_n_17,count_4_n_18,count_4_n_19,count_4_n_20,count_4_n_21,count_4_n_22,count_4_n_23,count_4_n_24,count_4_n_25,count_4_n_26,count_4_n_27,count_4_n_28,count_4_n_29,count_4_n_30,count_4_n_31,count_4_n_32,count_4_n_33,count_4_n_34}),
        .\dataOut_reg[79]_0 ({count_3_n_5,count_3_n_6,count_3_n_7,count_3_n_8,count_3_n_9,count_3_n_10,count_3_n_11,count_3_n_12,count_3_n_13,count_3_n_14,count_3_n_15,count_3_n_16,count_3_n_17,count_3_n_18,count_3_n_19,count_3_n_20,count_3_n_21,count_3_n_22,count_3_n_23,count_3_n_24,count_3_n_25,count_3_n_26,count_3_n_27,count_3_n_28,count_3_n_29,count_3_n_30,count_3_n_31,count_3_n_32,count_3_n_33,count_3_n_34,count_3_n_35,count_3_n_36}),
        .hasPulsed(hasPulsed),
        .hasPulsed_reg_0(count_3_n_4),
        .l_valid_1(l_valid_1),
        .l_valid_2(l_valid_2),
        .l_valid_3(l_valid_3),
        .l_valid_4(l_valid_4),
        .pmod_OBUF_BUFG(pmod_OBUF_BUFG),
        .reset_led_OBUF(reset_led_OBUF),
        .valid_reg_0(count_3_n_3));
  CounterModule count_1
       (.D(nextState_1),
        .\DataOut_reg[7]_0 (DataOut),
        .\FSM_onehot_mainState_reg[0]_0 (count_2_n_3),
        .\FSM_onehot_mainState_reg[2]_0 (count_2_n_2),
        .Q(mainState),
        .done(done),
        .l_valid_1(l_valid_1),
        .pmod_OBUF_BUFG(pmod_OBUF_BUFG),
        .reset_led_OBUF(reset_led_OBUF),
        .signalReg__0(signalReg__0),
        .triggReg__0(triggReg__0));
  CounterModule_0 count_2
       (.D(nextState_1),
        .\DataOut_reg[31]_0 ({count_2_n_8,count_2_n_9,count_2_n_10,count_2_n_11,count_2_n_12,count_2_n_13,count_2_n_14,count_2_n_15,count_2_n_16,count_2_n_17,count_2_n_18,count_2_n_19,count_2_n_20,count_2_n_21,count_2_n_22,count_2_n_23,count_2_n_24,count_2_n_25,count_2_n_26,count_2_n_27,count_2_n_28,count_2_n_29,count_2_n_30,count_2_n_31,count_2_n_32,count_2_n_33,count_2_n_34,count_2_n_35,count_2_n_36,count_2_n_37,count_2_n_38,count_2_n_39}),
        .\FSM_onehot_mainState_reg[1]_0 (mainState_2),
        .\FSM_onehot_mainState_reg[1]_1 (mainState_3),
        .Q(mainState),
        .done(done),
        .l_valid_2(l_valid_2),
        .pmod_OBUF_BUFG(pmod_OBUF_BUFG),
        .reset_led_OBUF(reset_led_OBUF),
        .\signalReg_reg[1]_0 (signalReg__0),
        .\signalReg_reg[1]_1 (nextState_0),
        .\signalReg_reg[1]_2 (nextState),
        .\signalReg_reg[2]_0 (count_2_n_3),
        .signalSendt_IBUF(signalSendt_IBUF),
        .\triggReg_reg[1]_0 (triggReg__0),
        .\triggReg_reg[2]_0 (count_2_n_2),
        .trigg_IBUF(trigg_IBUF));
  CounterModule_1 count_3
       (.D(nextState_0),
        .\DataOut_reg[31]_0 ({count_3_n_5,count_3_n_6,count_3_n_7,count_3_n_8,count_3_n_9,count_3_n_10,count_3_n_11,count_3_n_12,count_3_n_13,count_3_n_14,count_3_n_15,count_3_n_16,count_3_n_17,count_3_n_18,count_3_n_19,count_3_n_20,count_3_n_21,count_3_n_22,count_3_n_23,count_3_n_24,count_3_n_25,count_3_n_26,count_3_n_27,count_3_n_28,count_3_n_29,count_3_n_30,count_3_n_31,count_3_n_32,count_3_n_33,count_3_n_34,count_3_n_35,count_3_n_36}),
        .\FSM_onehot_mainState_reg[0]_0 (count_2_n_3),
        .\FSM_onehot_mainState_reg[0]_1 (signalReg__0),
        .\FSM_onehot_mainState_reg[2]_0 (triggReg__0),
        .\FSM_onehot_mainState_reg[2]_1 (count_2_n_2),
        .Q(mainState_2),
        .done(done),
        .hasPulsed(hasPulsed),
        .l_valid_1(l_valid_1),
        .l_valid_2(l_valid_2),
        .l_valid_3(l_valid_3),
        .l_valid_4(l_valid_4),
        .pmod_OBUF_BUFG(pmod_OBUF_BUFG),
        .reset_led_OBUF(reset_led_OBUF),
        .valid_reg_0(count_3_n_3),
        .valid_reg_1(count_3_n_4));
  CounterModule_2 count_4
       (.D(nextState),
        .\DataOut_reg[31]_0 ({count_4_n_3,count_4_n_4,count_4_n_5,count_4_n_6,count_4_n_7,count_4_n_8,count_4_n_9,count_4_n_10,count_4_n_11,count_4_n_12,count_4_n_13,count_4_n_14,count_4_n_15,count_4_n_16,count_4_n_17,count_4_n_18,count_4_n_19,count_4_n_20,count_4_n_21,count_4_n_22,count_4_n_23,count_4_n_24,count_4_n_25,count_4_n_26,count_4_n_27,count_4_n_28,count_4_n_29,count_4_n_30,count_4_n_31,count_4_n_32,count_4_n_33,count_4_n_34}),
        .\FSM_onehot_mainState_reg[0]_0 (count_2_n_3),
        .\FSM_onehot_mainState_reg[0]_1 (signalReg__0),
        .\FSM_onehot_mainState_reg[2]_0 (triggReg__0),
        .\FSM_onehot_mainState_reg[2]_1 (count_2_n_2),
        .Q(mainState_3),
        .done(done),
        .l_valid_4(l_valid_4),
        .pmod_OBUF_BUFG(pmod_OBUF_BUFG),
        .reset_led_OBUF(reset_led_OBUF));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF o_Tx_OBUF_inst
       (.I(lopt),
        .O(o_Tx));
  BUFG pmod_OBUF_BUFG_inst
       (.I(pmod_OBUF),
        .O(pmod_OBUF_BUFG));
  OBUF pmod_OBUF_inst
       (.I(pmod_OBUF_BUFG),
        .O(pmod));
  OBUF reset_led_OBUF_inst
       (.I(reset_led_OBUF),
        .O(reset_led));
  IBUF reset_n_IBUF_inst
       (.I(reset_n),
        .O(reset_led_OBUF));
  IBUF signalSendt_IBUF_inst
       (.I(signalSendt),
        .O(signalSendt_IBUF));
  OBUF signal_led_OBUF_inst
       (.I(signal_led_OBUF),
        .O(signal_led));
  IBUF sw_IBUF_inst
       (.I(sw),
        .O(signal_led_OBUF));
  IBUF trigg_IBUF_inst
       (.I(trigg),
        .O(trigg_IBUF));
  OBUF trigg_led_OBUF_inst
       (.I(trigg_led_OBUF),
        .O(trigg_led));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF tx_led_OBUF_inst
       (.I(tx_led_OBUF),
        .O(tx_led));
  uart_tx uart
       (.D(TX_Byte),
        .E(buffer_n_2),
        .Q(uart_n_3),
        .l_TX_DV(l_TX_DV),
        .l_TX_done(l_TX_done),
        .lopt(lopt),
        .lopt_1(NLW_uart_lopt_1_UNCONNECTED),
        .pmod_OBUF_BUFG(pmod_OBUF_BUFG),
        .reset_led_OBUF(reset_led_OBUF),
        .trigg_led_OBUF(trigg_led_OBUF),
        .tx_led_OBUF(tx_led_OBUF));
endmodule

module uart_tx
   (tx_led_OBUF,
    l_TX_done,
    trigg_led_OBUF,
    Q,
    pmod_OBUF_BUFG,
    l_TX_DV,
    reset_led_OBUF,
    E,
    D,
    lopt,
    lopt_1);
  output tx_led_OBUF;
  output l_TX_done;
  output trigg_led_OBUF;
  output [0:0]Q;
  input pmod_OBUF_BUFG;
  input l_TX_DV;
  input reset_led_OBUF;
  input [0:0]E;
  input [7:0]D;
  output lopt;
  output lopt_1;

  wire [7:0]D;
  wire [0:0]E;
  wire \FSM_onehot_r_SM_Main[1]_i_1_n_0 ;
  wire \FSM_onehot_r_SM_Main[2]_i_1_n_0 ;
  wire \FSM_onehot_r_SM_Main[3]_i_1_n_0 ;
  wire \FSM_onehot_r_SM_Main[4]_i_1_n_0 ;
  wire \FSM_onehot_r_SM_Main[5]_i_1_n_0 ;
  wire \FSM_onehot_r_SM_Main[5]_i_2_n_0 ;
  wire \FSM_onehot_r_SM_Main[5]_i_4_n_0 ;
  wire \FSM_onehot_r_SM_Main[5]_i_5_n_0 ;
  wire \FSM_onehot_r_SM_Main_reg_n_0_[2] ;
  wire \FSM_onehot_r_SM_Main_reg_n_0_[3] ;
  wire \FSM_onehot_r_SM_Main_reg_n_0_[4] ;
  wire \FSM_onehot_r_SM_Main_reg_n_0_[5] ;
  wire [0:0]Q;
  wire l_TX_DV;
  wire l_TX_done;
  wire o_Tx_Serial2_out;
  wire o_Tx_Serial_i_2_n_0;
  wire o_Tx_Serial_i_3_n_0;
  wire o_Tx_Serial_i_4_n_0;
  wire o_Tx_Serial_reg_lopt_replica_1;
  wire pmod_OBUF_BUFG;
  wire \r_Bit_Index[0]_i_1_n_0 ;
  wire \r_Bit_Index[0]_i_2_n_0 ;
  wire \r_Bit_Index[1]_i_1_n_0 ;
  wire \r_Bit_Index[2]_i_1_n_0 ;
  wire \r_Bit_Index[2]_i_2_n_0 ;
  wire \r_Bit_Index_reg_n_0_[0] ;
  wire \r_Bit_Index_reg_n_0_[1] ;
  wire \r_Bit_Index_reg_n_0_[2] ;
  (* RTL_KEEP = "true" *) wire [9:0]r_Clock_Count;
  wire \r_Clock_Count[15]_i_1_n_0 ;
  wire \r_Clock_Count[5]_i_2_n_0 ;
  wire \r_Clock_Count[9]_i_2_n_0 ;
  wire \r_Clock_Count[9]_i_3_n_0 ;
  wire \r_Clock_Count[9]_i_4_n_0 ;
  wire \r_Clock_Count[9]_i_5_n_0 ;
  wire [9:0]r_Clock_Count__0;
  wire r_Tx_Active_i_1_n_0;
  wire \r_Tx_Data_reg_n_0_[0] ;
  wire \r_Tx_Data_reg_n_0_[1] ;
  wire \r_Tx_Data_reg_n_0_[2] ;
  wire \r_Tx_Data_reg_n_0_[3] ;
  wire \r_Tx_Data_reg_n_0_[4] ;
  wire \r_Tx_Data_reg_n_0_[5] ;
  wire \r_Tx_Data_reg_n_0_[6] ;
  wire \r_Tx_Data_reg_n_0_[7] ;
  wire r_Tx_Done_i_1_n_0;
  wire reset_led_OBUF;
  wire trigg_led_OBUF;
  wire tx_led_OBUF;

  assign lopt = o_Tx_Serial_reg_lopt_replica_1;
  LUT6 #(
    .INIT(64'hBABABABABABABABF)) 
    \FSM_onehot_r_SM_Main[1]_i_1 
       (.I0(\FSM_onehot_r_SM_Main_reg_n_0_[5] ),
        .I1(l_TX_DV),
        .I2(Q),
        .I3(\FSM_onehot_r_SM_Main_reg_n_0_[4] ),
        .I4(\FSM_onehot_r_SM_Main_reg_n_0_[3] ),
        .I5(\FSM_onehot_r_SM_Main_reg_n_0_[2] ),
        .O(\FSM_onehot_r_SM_Main[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_r_SM_Main[2]_i_1 
       (.I0(\FSM_onehot_r_SM_Main[5]_i_2_n_0 ),
        .I1(\FSM_onehot_r_SM_Main_reg_n_0_[2] ),
        .I2(l_TX_DV),
        .I3(Q),
        .O(\FSM_onehot_r_SM_Main[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7F0000FF00)) 
    \FSM_onehot_r_SM_Main[3]_i_1 
       (.I0(\r_Bit_Index_reg_n_0_[2] ),
        .I1(\r_Bit_Index_reg_n_0_[1] ),
        .I2(\r_Bit_Index_reg_n_0_[0] ),
        .I3(\FSM_onehot_r_SM_Main_reg_n_0_[2] ),
        .I4(\FSM_onehot_r_SM_Main[5]_i_2_n_0 ),
        .I5(\FSM_onehot_r_SM_Main_reg_n_0_[3] ),
        .O(\FSM_onehot_r_SM_Main[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \FSM_onehot_r_SM_Main[4]_i_1 
       (.I0(\FSM_onehot_r_SM_Main_reg_n_0_[4] ),
        .I1(\FSM_onehot_r_SM_Main[5]_i_2_n_0 ),
        .I2(\FSM_onehot_r_SM_Main_reg_n_0_[3] ),
        .I3(\r_Bit_Index_reg_n_0_[2] ),
        .I4(\r_Bit_Index_reg_n_0_[1] ),
        .I5(\r_Bit_Index_reg_n_0_[0] ),
        .O(\FSM_onehot_r_SM_Main[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_r_SM_Main[5]_i_1 
       (.I0(\FSM_onehot_r_SM_Main_reg_n_0_[4] ),
        .I1(\FSM_onehot_r_SM_Main[5]_i_2_n_0 ),
        .O(\FSM_onehot_r_SM_Main[5]_i_1_n_0 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h0EFFFFFF)) 
    \FSM_onehot_r_SM_Main[5]_i_2 
       (.I0(\FSM_onehot_r_SM_Main[5]_i_4_n_0 ),
        .I1(\FSM_onehot_r_SM_Main[5]_i_5_n_0 ),
        .I2(r_Clock_Count[7]),
        .I3(r_Clock_Count[8]),
        .I4(r_Clock_Count[9]),
        .O(\FSM_onehot_r_SM_Main[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00010101)) 
    \FSM_onehot_r_SM_Main[5]_i_4 
       (.I0(r_Clock_Count[2]),
        .I1(r_Clock_Count[3]),
        .I2(r_Clock_Count[4]),
        .I3(r_Clock_Count[0]),
        .I4(r_Clock_Count[1]),
        .O(\FSM_onehot_r_SM_Main[5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_onehot_r_SM_Main[5]_i_5 
       (.I0(r_Clock_Count[5]),
        .I1(r_Clock_Count[6]),
        .O(\FSM_onehot_r_SM_Main[5]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "s_IDLE:000010,s_TX_START_BIT:000100,s_TX_DATA_BITS:001000,s_CLEANUP:100000,s_TX_STOP_BIT:010000,iSTATE:000001" *) 
  FDSE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_SM_Main_reg[1] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_r_SM_Main[1]_i_1_n_0 ),
        .Q(Q),
        .S(reset_led_OBUF));
  (* FSM_ENCODED_STATES = "s_IDLE:000010,s_TX_START_BIT:000100,s_TX_DATA_BITS:001000,s_CLEANUP:100000,s_TX_STOP_BIT:010000,iSTATE:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_SM_Main_reg[2] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_r_SM_Main[2]_i_1_n_0 ),
        .Q(\FSM_onehot_r_SM_Main_reg_n_0_[2] ),
        .R(reset_led_OBUF));
  (* FSM_ENCODED_STATES = "s_IDLE:000010,s_TX_START_BIT:000100,s_TX_DATA_BITS:001000,s_CLEANUP:100000,s_TX_STOP_BIT:010000,iSTATE:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_SM_Main_reg[3] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_r_SM_Main[3]_i_1_n_0 ),
        .Q(\FSM_onehot_r_SM_Main_reg_n_0_[3] ),
        .R(reset_led_OBUF));
  (* FSM_ENCODED_STATES = "s_IDLE:000010,s_TX_START_BIT:000100,s_TX_DATA_BITS:001000,s_CLEANUP:100000,s_TX_STOP_BIT:010000,iSTATE:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_SM_Main_reg[4] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_r_SM_Main[4]_i_1_n_0 ),
        .Q(\FSM_onehot_r_SM_Main_reg_n_0_[4] ),
        .R(reset_led_OBUF));
  (* FSM_ENCODED_STATES = "s_IDLE:000010,s_TX_START_BIT:000100,s_TX_DATA_BITS:001000,s_CLEANUP:100000,s_TX_STOP_BIT:010000,iSTATE:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_SM_Main_reg[5] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_r_SM_Main[5]_i_1_n_0 ),
        .Q(\FSM_onehot_r_SM_Main_reg_n_0_[5] ),
        .R(reset_led_OBUF));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    o_Tx_Serial_i_1
       (.I0(\FSM_onehot_r_SM_Main_reg_n_0_[3] ),
        .I1(\FSM_onehot_r_SM_Main_reg_n_0_[4] ),
        .I2(\FSM_onehot_r_SM_Main_reg_n_0_[2] ),
        .I3(Q),
        .I4(reset_led_OBUF),
        .O(o_Tx_Serial2_out));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFC840)) 
    o_Tx_Serial_i_2
       (.I0(\r_Bit_Index_reg_n_0_[2] ),
        .I1(\FSM_onehot_r_SM_Main_reg_n_0_[3] ),
        .I2(o_Tx_Serial_i_3_n_0),
        .I3(o_Tx_Serial_i_4_n_0),
        .I4(\FSM_onehot_r_SM_Main_reg_n_0_[4] ),
        .I5(Q),
        .O(o_Tx_Serial_i_2_n_0));
  LUT6 #(
    .INIT(64'hCACAFFF0CACA0F00)) 
    o_Tx_Serial_i_3
       (.I0(\r_Tx_Data_reg_n_0_[1] ),
        .I1(\r_Tx_Data_reg_n_0_[3] ),
        .I2(\r_Bit_Index_reg_n_0_[1] ),
        .I3(\r_Tx_Data_reg_n_0_[0] ),
        .I4(\r_Bit_Index_reg_n_0_[0] ),
        .I5(\r_Tx_Data_reg_n_0_[2] ),
        .O(o_Tx_Serial_i_3_n_0));
  LUT6 #(
    .INIT(64'hCACAFFF0CACA0F00)) 
    o_Tx_Serial_i_4
       (.I0(\r_Tx_Data_reg_n_0_[5] ),
        .I1(\r_Tx_Data_reg_n_0_[7] ),
        .I2(\r_Bit_Index_reg_n_0_[1] ),
        .I3(\r_Tx_Data_reg_n_0_[4] ),
        .I4(\r_Bit_Index_reg_n_0_[0] ),
        .I5(\r_Tx_Data_reg_n_0_[6] ),
        .O(o_Tx_Serial_i_4_n_0));
  FDRE o_Tx_Serial_reg
       (.C(pmod_OBUF_BUFG),
        .CE(o_Tx_Serial2_out),
        .D(o_Tx_Serial_i_2_n_0),
        .Q(tx_led_OBUF),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    o_Tx_Serial_reg_lopt_replica
       (.C(pmod_OBUF_BUFG),
        .CE(o_Tx_Serial2_out),
        .D(o_Tx_Serial_i_2_n_0),
        .Q(o_Tx_Serial_reg_lopt_replica_1),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF00FFCF00AA0020)) 
    \r_Bit_Index[0]_i_1 
       (.I0(\r_Bit_Index[0]_i_2_n_0 ),
        .I1(\FSM_onehot_r_SM_Main[5]_i_2_n_0 ),
        .I2(\FSM_onehot_r_SM_Main_reg_n_0_[3] ),
        .I3(reset_led_OBUF),
        .I4(Q),
        .I5(\r_Bit_Index_reg_n_0_[0] ),
        .O(\r_Bit_Index[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \r_Bit_Index[0]_i_2 
       (.I0(\r_Bit_Index_reg_n_0_[2] ),
        .I1(\r_Bit_Index_reg_n_0_[1] ),
        .I2(\r_Bit_Index_reg_n_0_[0] ),
        .I3(\FSM_onehot_r_SM_Main_reg_n_0_[3] ),
        .O(\r_Bit_Index[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA6060AAAAAA6A)) 
    \r_Bit_Index[1]_i_1 
       (.I0(\r_Bit_Index_reg_n_0_[1] ),
        .I1(\r_Bit_Index_reg_n_0_[0] ),
        .I2(\FSM_onehot_r_SM_Main_reg_n_0_[3] ),
        .I3(\FSM_onehot_r_SM_Main[5]_i_2_n_0 ),
        .I4(reset_led_OBUF),
        .I5(Q),
        .O(\r_Bit_Index[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFA0FFEF00500010)) 
    \r_Bit_Index[2]_i_1 
       (.I0(\r_Bit_Index[2]_i_2_n_0 ),
        .I1(\FSM_onehot_r_SM_Main[5]_i_2_n_0 ),
        .I2(\FSM_onehot_r_SM_Main_reg_n_0_[3] ),
        .I3(reset_led_OBUF),
        .I4(Q),
        .I5(\r_Bit_Index_reg_n_0_[2] ),
        .O(\r_Bit_Index[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \r_Bit_Index[2]_i_2 
       (.I0(\r_Bit_Index_reg_n_0_[1] ),
        .I1(\r_Bit_Index_reg_n_0_[0] ),
        .O(\r_Bit_Index[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Bit_Index_reg[0] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .D(\r_Bit_Index[0]_i_1_n_0 ),
        .Q(\r_Bit_Index_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Bit_Index_reg[1] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .D(\r_Bit_Index[1]_i_1_n_0 ),
        .Q(\r_Bit_Index_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Bit_Index_reg[2] 
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .D(\r_Bit_Index[2]_i_1_n_0 ),
        .Q(\r_Bit_Index_reg_n_0_[2] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \r_Clock_Count[0]_i_1 
       (.I0(\r_Clock_Count[9]_i_3_n_0 ),
        .I1(r_Clock_Count[0]),
        .O(r_Clock_Count__0[0]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_Clock_Count[15]_i_1 
       (.I0(Q),
        .I1(\FSM_onehot_r_SM_Main_reg_n_0_[2] ),
        .I2(\FSM_onehot_r_SM_Main_reg_n_0_[4] ),
        .I3(\FSM_onehot_r_SM_Main_reg_n_0_[3] ),
        .O(\r_Clock_Count[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \r_Clock_Count[1]_i_1 
       (.I0(\r_Clock_Count[9]_i_3_n_0 ),
        .I1(r_Clock_Count[0]),
        .I2(r_Clock_Count[1]),
        .O(r_Clock_Count__0[1]));
  LUT4 #(
    .INIT(16'h2A80)) 
    \r_Clock_Count[2]_i_1 
       (.I0(\r_Clock_Count[9]_i_3_n_0 ),
        .I1(r_Clock_Count[0]),
        .I2(r_Clock_Count[1]),
        .I3(r_Clock_Count[2]),
        .O(r_Clock_Count__0[2]));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \r_Clock_Count[3]_i_1 
       (.I0(\r_Clock_Count[9]_i_3_n_0 ),
        .I1(r_Clock_Count[1]),
        .I2(r_Clock_Count[0]),
        .I3(r_Clock_Count[2]),
        .I4(r_Clock_Count[3]),
        .O(r_Clock_Count__0[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \r_Clock_Count[4]_i_1 
       (.I0(\r_Clock_Count[9]_i_3_n_0 ),
        .I1(r_Clock_Count[2]),
        .I2(r_Clock_Count[0]),
        .I3(r_Clock_Count[1]),
        .I4(r_Clock_Count[3]),
        .I5(r_Clock_Count[4]),
        .O(r_Clock_Count__0[4]));
  LUT6 #(
    .INIT(64'hA2AAAAAA08000000)) 
    \r_Clock_Count[5]_i_1 
       (.I0(\r_Clock_Count[9]_i_3_n_0 ),
        .I1(r_Clock_Count[3]),
        .I2(\r_Clock_Count[5]_i_2_n_0 ),
        .I3(r_Clock_Count[2]),
        .I4(r_Clock_Count[4]),
        .I5(r_Clock_Count[5]),
        .O(r_Clock_Count__0[5]));
  LUT2 #(
    .INIT(4'h7)) 
    \r_Clock_Count[5]_i_2 
       (.I0(r_Clock_Count[1]),
        .I1(r_Clock_Count[0]),
        .O(\r_Clock_Count[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \r_Clock_Count[6]_i_1 
       (.I0(\r_Clock_Count[9]_i_3_n_0 ),
        .I1(\r_Clock_Count[9]_i_2_n_0 ),
        .I2(r_Clock_Count[6]),
        .O(r_Clock_Count__0[6]));
  LUT4 #(
    .INIT(16'h7080)) 
    \r_Clock_Count[7]_i_1 
       (.I0(r_Clock_Count[6]),
        .I1(\r_Clock_Count[9]_i_2_n_0 ),
        .I2(\r_Clock_Count[9]_i_3_n_0 ),
        .I3(r_Clock_Count[7]),
        .O(r_Clock_Count__0[7]));
  LUT5 #(
    .INIT(32'h7F008000)) 
    \r_Clock_Count[8]_i_1 
       (.I0(r_Clock_Count[7]),
        .I1(\r_Clock_Count[9]_i_2_n_0 ),
        .I2(r_Clock_Count[6]),
        .I3(\r_Clock_Count[9]_i_3_n_0 ),
        .I4(r_Clock_Count[8]),
        .O(r_Clock_Count__0[8]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \r_Clock_Count[9]_i_1 
       (.I0(r_Clock_Count[8]),
        .I1(r_Clock_Count[6]),
        .I2(\r_Clock_Count[9]_i_2_n_0 ),
        .I3(r_Clock_Count[7]),
        .I4(\r_Clock_Count[9]_i_3_n_0 ),
        .I5(r_Clock_Count[9]),
        .O(r_Clock_Count__0[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r_Clock_Count[9]_i_2 
       (.I0(r_Clock_Count[5]),
        .I1(r_Clock_Count[3]),
        .I2(r_Clock_Count[1]),
        .I3(r_Clock_Count[0]),
        .I4(r_Clock_Count[2]),
        .I5(r_Clock_Count[4]),
        .O(\r_Clock_Count[9]_i_2_n_0 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h0000BBBA)) 
    \r_Clock_Count[9]_i_3 
       (.I0(\r_Clock_Count[9]_i_4_n_0 ),
        .I1(r_Clock_Count[7]),
        .I2(\FSM_onehot_r_SM_Main[5]_i_5_n_0 ),
        .I3(\FSM_onehot_r_SM_Main[5]_i_4_n_0 ),
        .I4(\r_Clock_Count[9]_i_5_n_0 ),
        .O(\r_Clock_Count[9]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \r_Clock_Count[9]_i_4 
       (.I0(r_Clock_Count[8]),
        .I1(r_Clock_Count[9]),
        .O(\r_Clock_Count[9]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \r_Clock_Count[9]_i_5 
       (.I0(\FSM_onehot_r_SM_Main_reg_n_0_[4] ),
        .I1(\FSM_onehot_r_SM_Main_reg_n_0_[3] ),
        .I2(\FSM_onehot_r_SM_Main_reg_n_0_[2] ),
        .O(\r_Clock_Count[9]_i_5_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_Clock_Count_reg[0] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_Clock_Count[15]_i_1_n_0 ),
        .D(r_Clock_Count__0[0]),
        .Q(r_Clock_Count[0]),
        .R(reset_led_OBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_Clock_Count_reg[1] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_Clock_Count[15]_i_1_n_0 ),
        .D(r_Clock_Count__0[1]),
        .Q(r_Clock_Count[1]),
        .R(reset_led_OBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_Clock_Count_reg[2] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_Clock_Count[15]_i_1_n_0 ),
        .D(r_Clock_Count__0[2]),
        .Q(r_Clock_Count[2]),
        .R(reset_led_OBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_Clock_Count_reg[3] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_Clock_Count[15]_i_1_n_0 ),
        .D(r_Clock_Count__0[3]),
        .Q(r_Clock_Count[3]),
        .R(reset_led_OBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_Clock_Count_reg[4] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_Clock_Count[15]_i_1_n_0 ),
        .D(r_Clock_Count__0[4]),
        .Q(r_Clock_Count[4]),
        .R(reset_led_OBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_Clock_Count_reg[5] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_Clock_Count[15]_i_1_n_0 ),
        .D(r_Clock_Count__0[5]),
        .Q(r_Clock_Count[5]),
        .R(reset_led_OBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_Clock_Count_reg[6] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_Clock_Count[15]_i_1_n_0 ),
        .D(r_Clock_Count__0[6]),
        .Q(r_Clock_Count[6]),
        .R(reset_led_OBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_Clock_Count_reg[7] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_Clock_Count[15]_i_1_n_0 ),
        .D(r_Clock_Count__0[7]),
        .Q(r_Clock_Count[7]),
        .R(reset_led_OBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_Clock_Count_reg[8] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_Clock_Count[15]_i_1_n_0 ),
        .D(r_Clock_Count__0[8]),
        .Q(r_Clock_Count[8]),
        .R(reset_led_OBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_Clock_Count_reg[9] 
       (.C(pmod_OBUF_BUFG),
        .CE(\r_Clock_Count[15]_i_1_n_0 ),
        .D(r_Clock_Count__0[9]),
        .Q(r_Clock_Count[9]),
        .R(reset_led_OBUF));
  LUT6 #(
    .INIT(64'hFFFBFBFB0F000000)) 
    r_Tx_Active_i_1
       (.I0(\FSM_onehot_r_SM_Main[5]_i_2_n_0 ),
        .I1(\FSM_onehot_r_SM_Main_reg_n_0_[4] ),
        .I2(reset_led_OBUF),
        .I3(Q),
        .I4(l_TX_DV),
        .I5(trigg_led_OBUF),
        .O(r_Tx_Active_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_Tx_Active_reg
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .D(r_Tx_Active_i_1_n_0),
        .Q(trigg_led_OBUF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Tx_Data_reg[0] 
       (.C(pmod_OBUF_BUFG),
        .CE(E),
        .D(D[0]),
        .Q(\r_Tx_Data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Tx_Data_reg[1] 
       (.C(pmod_OBUF_BUFG),
        .CE(E),
        .D(D[1]),
        .Q(\r_Tx_Data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Tx_Data_reg[2] 
       (.C(pmod_OBUF_BUFG),
        .CE(E),
        .D(D[2]),
        .Q(\r_Tx_Data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Tx_Data_reg[3] 
       (.C(pmod_OBUF_BUFG),
        .CE(E),
        .D(D[3]),
        .Q(\r_Tx_Data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Tx_Data_reg[4] 
       (.C(pmod_OBUF_BUFG),
        .CE(E),
        .D(D[4]),
        .Q(\r_Tx_Data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Tx_Data_reg[5] 
       (.C(pmod_OBUF_BUFG),
        .CE(E),
        .D(D[5]),
        .Q(\r_Tx_Data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Tx_Data_reg[6] 
       (.C(pmod_OBUF_BUFG),
        .CE(E),
        .D(D[6]),
        .Q(\r_Tx_Data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Tx_Data_reg[7] 
       (.C(pmod_OBUF_BUFG),
        .CE(E),
        .D(D[7]),
        .Q(\r_Tx_Data_reg_n_0_[7] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFAF0000FFA2)) 
    r_Tx_Done_i_1
       (.I0(\FSM_onehot_r_SM_Main_reg_n_0_[4] ),
        .I1(\FSM_onehot_r_SM_Main[5]_i_2_n_0 ),
        .I2(Q),
        .I3(\FSM_onehot_r_SM_Main_reg_n_0_[5] ),
        .I4(reset_led_OBUF),
        .I5(l_TX_done),
        .O(r_Tx_Done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_Tx_Done_reg
       (.C(pmod_OBUF_BUFG),
        .CE(1'b1),
        .D(r_Tx_Done_i_1_n_0),
        .Q(l_TX_done),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
