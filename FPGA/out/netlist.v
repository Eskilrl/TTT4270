// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Thu Apr 24 23:50:23 2025
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
   (r_Counter0,
    Q,
    l_valid_1,
    \FSM_sequential_mainState_reg[0]_0 ,
    D,
    clk,
    reset_n,
    p_0_in,
    done,
    l_valid_4,
    l_valid_2,
    l_valid_3,
    \triggReg_reg[0]_0 ,
    \r_Counter_reg[31]_0 );
  output [30:0]r_Counter0;
  output [0:0]Q;
  output l_valid_1;
  output [0:0]\FSM_sequential_mainState_reg[0]_0 ;
  output [31:0]D;
  input clk;
  input reset_n;
  input [1:0]p_0_in;
  input done;
  input l_valid_4;
  input l_valid_2;
  input l_valid_3;
  input [0:0]\triggReg_reg[0]_0 ;
  input [31:0]\r_Counter_reg[31]_0 ;

  wire [31:0]D;
  wire \DataOut[31]_i_1_n_0 ;
  wire \FSM_sequential_mainState[0]_i_2_n_0 ;
  wire \FSM_sequential_mainState[0]_i_3_n_0 ;
  wire [0:0]\FSM_sequential_mainState_reg[0]_0 ;
  wire [0:0]Q;
  wire clk;
  wire [31:0]data_1;
  wire done;
  wire l_valid_1;
  wire l_valid_2;
  wire l_valid_3;
  wire l_valid_4;
  wire [1:0]nextState;
  wire [1:0]p_0_in;
  wire r_Counter;
  wire [30:0]r_Counter0;
  wire r_Counter0_carry__0_n_0;
  wire r_Counter0_carry__1_n_0;
  wire r_Counter0_carry__2_n_0;
  wire r_Counter0_carry__3_n_0;
  wire r_Counter0_carry__4_n_0;
  wire r_Counter0_carry__5_n_0;
  wire r_Counter0_carry_n_0;
  wire [31:0]\r_Counter_reg[31]_0 ;
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
  wire r_delay_counter;
  wire [7:0]r_delay_counter0_in;
  wire \r_delay_counter[5]_i_2_n_0 ;
  wire \r_delay_counter[7]_i_3_n_0 ;
  wire reset_n;
  wire [7:0]sel0;
  wire [2:1]triggReg;
  wire [0:0]\triggReg_reg[0]_0 ;
  wire \triggReg_reg_n_0_[2] ;
  wire valid_i_1_n_0;
  wire [2:0]NLW_r_Counter0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_r_Counter0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_r_Counter0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_r_Counter0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_r_Counter0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_r_Counter0_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_r_Counter0_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_r_Counter0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_r_Counter0_carry__6_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h1)) 
    \DataOut[31]_i_1 
       (.I0(r_Counter),
        .I1(\FSM_sequential_mainState_reg[0]_0 ),
        .O(\DataOut[31]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[0] 
       (.C(clk),
        .CE(\DataOut[31]_i_1_n_0 ),
        .CLR(reset_n),
        .D(Q),
        .Q(data_1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[10] 
       (.C(clk),
        .CE(\DataOut[31]_i_1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[10] ),
        .Q(data_1[10]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[11] 
       (.C(clk),
        .CE(\DataOut[31]_i_1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[11] ),
        .Q(data_1[11]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[12] 
       (.C(clk),
        .CE(\DataOut[31]_i_1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[12] ),
        .Q(data_1[12]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[13] 
       (.C(clk),
        .CE(\DataOut[31]_i_1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[13] ),
        .Q(data_1[13]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[14] 
       (.C(clk),
        .CE(\DataOut[31]_i_1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[14] ),
        .Q(data_1[14]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[15] 
       (.C(clk),
        .CE(\DataOut[31]_i_1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[15] ),
        .Q(data_1[15]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[16] 
       (.C(clk),
        .CE(\DataOut[31]_i_1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[16] ),
        .Q(data_1[16]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[17] 
       (.C(clk),
        .CE(\DataOut[31]_i_1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[17] ),
        .Q(data_1[17]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[18] 
       (.C(clk),
        .CE(\DataOut[31]_i_1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[18] ),
        .Q(data_1[18]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[19] 
       (.C(clk),
        .CE(\DataOut[31]_i_1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[19] ),
        .Q(data_1[19]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[1] 
       (.C(clk),
        .CE(\DataOut[31]_i_1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[1] ),
        .Q(data_1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[20] 
       (.C(clk),
        .CE(\DataOut[31]_i_1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[20] ),
        .Q(data_1[20]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[21] 
       (.C(clk),
        .CE(\DataOut[31]_i_1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[21] ),
        .Q(data_1[21]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[22] 
       (.C(clk),
        .CE(\DataOut[31]_i_1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[22] ),
        .Q(data_1[22]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[23] 
       (.C(clk),
        .CE(\DataOut[31]_i_1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[23] ),
        .Q(data_1[23]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[24] 
       (.C(clk),
        .CE(\DataOut[31]_i_1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[24] ),
        .Q(data_1[24]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[25] 
       (.C(clk),
        .CE(\DataOut[31]_i_1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[25] ),
        .Q(data_1[25]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[26] 
       (.C(clk),
        .CE(\DataOut[31]_i_1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[26] ),
        .Q(data_1[26]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[27] 
       (.C(clk),
        .CE(\DataOut[31]_i_1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[27] ),
        .Q(data_1[27]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[28] 
       (.C(clk),
        .CE(\DataOut[31]_i_1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[28] ),
        .Q(data_1[28]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[29] 
       (.C(clk),
        .CE(\DataOut[31]_i_1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[29] ),
        .Q(data_1[29]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[2] 
       (.C(clk),
        .CE(\DataOut[31]_i_1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[2] ),
        .Q(data_1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[30] 
       (.C(clk),
        .CE(\DataOut[31]_i_1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[30] ),
        .Q(data_1[30]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[31] 
       (.C(clk),
        .CE(\DataOut[31]_i_1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[31] ),
        .Q(data_1[31]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[3] 
       (.C(clk),
        .CE(\DataOut[31]_i_1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[3] ),
        .Q(data_1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[4] 
       (.C(clk),
        .CE(\DataOut[31]_i_1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[4] ),
        .Q(data_1[4]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[5] 
       (.C(clk),
        .CE(\DataOut[31]_i_1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[5] ),
        .Q(data_1[5]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[6] 
       (.C(clk),
        .CE(\DataOut[31]_i_1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[6] ),
        .Q(data_1[6]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[7] 
       (.C(clk),
        .CE(\DataOut[31]_i_1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[7] ),
        .Q(data_1[7]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[8] 
       (.C(clk),
        .CE(\DataOut[31]_i_1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[8] ),
        .Q(data_1[8]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[9] 
       (.C(clk),
        .CE(\DataOut[31]_i_1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[9] ),
        .Q(data_1[9]));
  LUT6 #(
    .INIT(64'hAAABAAAAAAAAAAAA)) 
    \FSM_sequential_mainState[0]_i_1 
       (.I0(\FSM_sequential_mainState[0]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .I5(\FSM_sequential_mainState[0]_i_3_n_0 ),
        .O(nextState[0]));
  LUT6 #(
    .INIT(64'hBBBB00F000000000)) 
    \FSM_sequential_mainState[0]_i_2 
       (.I0(triggReg[2]),
        .I1(\triggReg_reg_n_0_[2] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(\FSM_sequential_mainState_reg[0]_0 ),
        .I5(r_Counter),
        .O(\FSM_sequential_mainState[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \FSM_sequential_mainState[0]_i_3 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[6]),
        .I3(sel0[7]),
        .I4(\FSM_sequential_mainState_reg[0]_0 ),
        .I5(r_Counter),
        .O(\FSM_sequential_mainState[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hBFF0)) 
    \FSM_sequential_mainState[1]_inv_i_1 
       (.I0(triggReg[2]),
        .I1(\triggReg_reg_n_0_[2] ),
        .I2(\FSM_sequential_mainState_reg[0]_0 ),
        .I3(r_Counter),
        .O(nextState[1]));
  (* FSM_ENCODED_STATES = "C_IDLE:00,C_COUNTING:01,C_WAIT:10,C_SENDING:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_mainState_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_n),
        .D(nextState[0]),
        .Q(\FSM_sequential_mainState_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "C_IDLE:00,C_COUNTING:01,C_WAIT:10,C_SENDING:11" *) 
  (* inverted = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_sequential_mainState_reg[1]_inv 
       (.C(clk),
        .CE(1'b1),
        .D(nextState[1]),
        .PRE(reset_n),
        .Q(r_Counter));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[128]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_1[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[129]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_1[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[130]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_1[2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[131]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_1[3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[132]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_1[4]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[133]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_1[5]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[134]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_1[6]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[135]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_1[7]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[136]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_1[8]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[137]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_1[9]),
        .O(D[9]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[138]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_1[10]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[139]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_1[11]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[140]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_1[12]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[141]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_1[13]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[142]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_1[14]),
        .O(D[14]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[143]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_1[15]),
        .O(D[15]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[144]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_1[16]),
        .O(D[16]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[145]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_1[17]),
        .O(D[17]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[146]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_1[18]),
        .O(D[18]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[147]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_1[19]),
        .O(D[19]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[148]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_1[20]),
        .O(D[20]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[149]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_1[21]),
        .O(D[21]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[150]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_1[22]),
        .O(D[22]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[151]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_1[23]),
        .O(D[23]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[152]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_1[24]),
        .O(D[24]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[153]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_1[25]),
        .O(D[25]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[154]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_1[26]),
        .O(D[26]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[155]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_1[27]),
        .O(D[27]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[156]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_1[28]),
        .O(D[28]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[157]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_1[29]),
        .O(D[29]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[158]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_1[30]),
        .O(D[30]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[159]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_1[31]),
        .O(D[31]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry
       (.CI(1'b0),
        .CO({r_Counter0_carry_n_0,NLW_r_Counter0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(Q),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_Counter0[3:0]),
        .S({\r_Counter_reg_n_0_[4] ,\r_Counter_reg_n_0_[3] ,\r_Counter_reg_n_0_[2] ,\r_Counter_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__0
       (.CI(r_Counter0_carry_n_0),
        .CO({r_Counter0_carry__0_n_0,NLW_r_Counter0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_Counter0[7:4]),
        .S({\r_Counter_reg_n_0_[8] ,\r_Counter_reg_n_0_[7] ,\r_Counter_reg_n_0_[6] ,\r_Counter_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__1
       (.CI(r_Counter0_carry__0_n_0),
        .CO({r_Counter0_carry__1_n_0,NLW_r_Counter0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_Counter0[11:8]),
        .S({\r_Counter_reg_n_0_[12] ,\r_Counter_reg_n_0_[11] ,\r_Counter_reg_n_0_[10] ,\r_Counter_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__2
       (.CI(r_Counter0_carry__1_n_0),
        .CO({r_Counter0_carry__2_n_0,NLW_r_Counter0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_Counter0[15:12]),
        .S({\r_Counter_reg_n_0_[16] ,\r_Counter_reg_n_0_[15] ,\r_Counter_reg_n_0_[14] ,\r_Counter_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__3
       (.CI(r_Counter0_carry__2_n_0),
        .CO({r_Counter0_carry__3_n_0,NLW_r_Counter0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_Counter0[19:16]),
        .S({\r_Counter_reg_n_0_[20] ,\r_Counter_reg_n_0_[19] ,\r_Counter_reg_n_0_[18] ,\r_Counter_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__4
       (.CI(r_Counter0_carry__3_n_0),
        .CO({r_Counter0_carry__4_n_0,NLW_r_Counter0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_Counter0[23:20]),
        .S({\r_Counter_reg_n_0_[24] ,\r_Counter_reg_n_0_[23] ,\r_Counter_reg_n_0_[22] ,\r_Counter_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__5
       (.CI(r_Counter0_carry__4_n_0),
        .CO({r_Counter0_carry__5_n_0,NLW_r_Counter0_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_Counter0[27:24]),
        .S({\r_Counter_reg_n_0_[28] ,\r_Counter_reg_n_0_[27] ,\r_Counter_reg_n_0_[26] ,\r_Counter_reg_n_0_[25] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__6
       (.CI(r_Counter0_carry__5_n_0),
        .CO(NLW_r_Counter0_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_r_Counter0_carry__6_O_UNCONNECTED[3],r_Counter0[30:28]}),
        .S({1'b0,\r_Counter_reg_n_0_[31] ,\r_Counter_reg_n_0_[30] ,\r_Counter_reg_n_0_[29] }));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[0] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [0]),
        .Q(Q));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[10] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [10]),
        .Q(\r_Counter_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[11] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [11]),
        .Q(\r_Counter_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[12] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [12]),
        .Q(\r_Counter_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[13] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [13]),
        .Q(\r_Counter_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[14] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [14]),
        .Q(\r_Counter_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[15] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [15]),
        .Q(\r_Counter_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[16] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [16]),
        .Q(\r_Counter_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[17] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [17]),
        .Q(\r_Counter_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[18] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [18]),
        .Q(\r_Counter_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[19] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [19]),
        .Q(\r_Counter_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[1] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [1]),
        .Q(\r_Counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[20] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [20]),
        .Q(\r_Counter_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[21] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [21]),
        .Q(\r_Counter_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[22] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [22]),
        .Q(\r_Counter_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[23] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [23]),
        .Q(\r_Counter_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[24] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [24]),
        .Q(\r_Counter_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[25] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [25]),
        .Q(\r_Counter_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[26] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [26]),
        .Q(\r_Counter_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[27] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [27]),
        .Q(\r_Counter_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[28] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [28]),
        .Q(\r_Counter_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[29] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [29]),
        .Q(\r_Counter_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[2] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [2]),
        .Q(\r_Counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[30] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [30]),
        .Q(\r_Counter_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[31] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [31]),
        .Q(\r_Counter_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[3] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [3]),
        .Q(\r_Counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[4] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [4]),
        .Q(\r_Counter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[5] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [5]),
        .Q(\r_Counter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[6] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [6]),
        .Q(\r_Counter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[7] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [7]),
        .Q(\r_Counter_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[8] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [8]),
        .Q(\r_Counter_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[9] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [9]),
        .Q(\r_Counter_reg_n_0_[9] ));
  (* \PinAttr:I2:HOLD_DETOUR  = "185" *) 
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \r_delay_counter[0]_i_1 
       (.I0(\FSM_sequential_mainState_reg[0]_0 ),
        .I1(r_Counter),
        .I2(sel0[0]),
        .O(r_delay_counter0_in[0]));
  (* \PinAttr:I3:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h0110)) 
    \r_delay_counter[1]_i_1 
       (.I0(r_Counter),
        .I1(\FSM_sequential_mainState_reg[0]_0 ),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(r_delay_counter0_in[1]));
  (* \PinAttr:I0:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h00070008)) 
    \r_delay_counter[2]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(\FSM_sequential_mainState_reg[0]_0 ),
        .I3(r_Counter),
        .I4(sel0[2]),
        .O(r_delay_counter0_in[2]));
  LUT6 #(
    .INIT(64'h0000007F00000080)) 
    \r_delay_counter[3]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(\FSM_sequential_mainState_reg[0]_0 ),
        .I4(r_Counter),
        .I5(sel0[3]),
        .O(r_delay_counter0_in[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \r_delay_counter[4]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(\DataOut[31]_i_1_n_0 ),
        .I5(sel0[4]),
        .O(r_delay_counter0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h0102)) 
    \r_delay_counter[5]_i_1 
       (.I0(\r_delay_counter[5]_i_2_n_0 ),
        .I1(\FSM_sequential_mainState_reg[0]_0 ),
        .I2(r_Counter),
        .I3(sel0[5]),
        .O(r_delay_counter0_in[5]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_delay_counter[5]_i_2 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[3]),
        .O(\r_delay_counter[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h0102)) 
    \r_delay_counter[6]_i_1 
       (.I0(\r_delay_counter[7]_i_3_n_0 ),
        .I1(\FSM_sequential_mainState_reg[0]_0 ),
        .I2(r_Counter),
        .I3(sel0[6]),
        .O(r_delay_counter0_in[6]));
  LUT2 #(
    .INIT(4'h7)) 
    \r_delay_counter[7]_i_1 
       (.I0(r_Counter),
        .I1(\FSM_sequential_mainState_reg[0]_0 ),
        .O(r_delay_counter));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h00070008)) 
    \r_delay_counter[7]_i_2 
       (.I0(sel0[6]),
        .I1(\r_delay_counter[7]_i_3_n_0 ),
        .I2(\FSM_sequential_mainState_reg[0]_0 ),
        .I3(r_Counter),
        .I4(sel0[7]),
        .O(r_delay_counter0_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r_delay_counter[7]_i_3 
       (.I0(sel0[5]),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(sel0[4]),
        .O(\r_delay_counter[7]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_delay_counter_reg[0] 
       (.C(clk),
        .CE(r_delay_counter),
        .CLR(reset_n),
        .D(r_delay_counter0_in[0]),
        .Q(sel0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_delay_counter_reg[1] 
       (.C(clk),
        .CE(r_delay_counter),
        .CLR(reset_n),
        .D(r_delay_counter0_in[1]),
        .Q(sel0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_delay_counter_reg[2] 
       (.C(clk),
        .CE(r_delay_counter),
        .CLR(reset_n),
        .D(r_delay_counter0_in[2]),
        .Q(sel0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_delay_counter_reg[3] 
       (.C(clk),
        .CE(r_delay_counter),
        .CLR(reset_n),
        .D(r_delay_counter0_in[3]),
        .Q(sel0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \r_delay_counter_reg[4] 
       (.C(clk),
        .CE(r_delay_counter),
        .CLR(reset_n),
        .D(r_delay_counter0_in[4]),
        .Q(sel0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \r_delay_counter_reg[5] 
       (.C(clk),
        .CE(r_delay_counter),
        .CLR(reset_n),
        .D(r_delay_counter0_in[5]),
        .Q(sel0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \r_delay_counter_reg[6] 
       (.C(clk),
        .CE(r_delay_counter),
        .CLR(reset_n),
        .D(r_delay_counter0_in[6]),
        .Q(sel0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \r_delay_counter_reg[7] 
       (.C(clk),
        .CE(r_delay_counter),
        .CLR(reset_n),
        .D(r_delay_counter0_in[7]),
        .Q(sel0[7]));
  FDPE #(
    .INIT(1'b0)) 
    \triggReg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\triggReg_reg[0]_0 ),
        .PRE(reset_n),
        .Q(triggReg[1]));
  FDPE #(
    .INIT(1'b0)) 
    \triggReg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(triggReg[1]),
        .PRE(reset_n),
        .Q(triggReg[2]));
  FDPE #(
    .INIT(1'b0)) 
    \triggReg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(triggReg[2]),
        .PRE(reset_n),
        .Q(\triggReg_reg_n_0_[2] ));
  LUT4 #(
    .INIT(16'h4744)) 
    valid_i_1
       (.I0(r_Counter),
        .I1(\FSM_sequential_mainState_reg[0]_0 ),
        .I2(done),
        .I3(l_valid_1),
        .O(valid_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    valid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_n),
        .D(valid_i_1_n_0),
        .Q(l_valid_1));
endmodule

(* ORIG_REF_NAME = "CounterModule" *) 
module CounterModule_0
   (p_0_in,
    l_valid_2,
    D,
    \signalReg_reg[1]_0 ,
    \signalReg_reg[1]_1 ,
    valid_reg_0,
    signalSendt_IBUF,
    clk,
    reset_n,
    Q,
    \r_Counter_reg[0]_0 ,
    r_Counter0,
    \r_Counter_reg[0]_1 ,
    \r_Counter_reg[0]_2 ,
    r_Counter0_0,
    \r_Counter_reg[0]_3 ,
    \r_Counter_reg[0]_4 ,
    r_Counter0_1,
    done,
    l_valid_4,
    l_valid_1,
    l_valid_3,
    \triggReg_reg[0]_0 );
  output [1:0]p_0_in;
  output l_valid_2;
  output [31:0]D;
  output [31:0]\signalReg_reg[1]_0 ;
  output [31:0]\signalReg_reg[1]_1 ;
  output [31:0]valid_reg_0;
  input signalSendt_IBUF;
  input clk;
  input reset_n;
  input [0:0]Q;
  input [0:0]\r_Counter_reg[0]_0 ;
  input [30:0]r_Counter0;
  input [0:0]\r_Counter_reg[0]_1 ;
  input [0:0]\r_Counter_reg[0]_2 ;
  input [30:0]r_Counter0_0;
  input [0:0]\r_Counter_reg[0]_3 ;
  input [0:0]\r_Counter_reg[0]_4 ;
  input [30:0]r_Counter0_1;
  input done;
  input l_valid_4;
  input l_valid_1;
  input l_valid_3;
  input [0:0]\triggReg_reg[0]_0 ;

  wire [31:0]D;
  wire \DataOut[31]_i_1__0_n_0 ;
  wire \FSM_sequential_mainState[0]_i_2__2_n_0 ;
  wire \FSM_sequential_mainState[0]_i_3__0_n_0 ;
  wire [0:0]Q;
  wire clk;
  wire [31:0]data_2;
  wire done;
  wire l_valid_1;
  wire l_valid_2;
  wire l_valid_3;
  wire l_valid_4;
  wire [0:0]mainState;
  wire [1:0]nextState;
  wire [1:0]p_0_in;
  wire r_Counter;
  wire [30:0]r_Counter0;
  wire [30:0]r_Counter0_0;
  wire [30:0]r_Counter0_1;
  wire [31:1]r_Counter0_2;
  wire r_Counter0_carry__0_n_0;
  wire r_Counter0_carry__1_n_0;
  wire r_Counter0_carry__2_n_0;
  wire r_Counter0_carry__3_n_0;
  wire r_Counter0_carry__4_n_0;
  wire r_Counter0_carry__5_n_0;
  wire r_Counter0_carry_n_0;
  wire [31:0]r_Counter0_in;
  wire [0:0]\r_Counter_reg[0]_0 ;
  wire [0:0]\r_Counter_reg[0]_1 ;
  wire [0:0]\r_Counter_reg[0]_2 ;
  wire [0:0]\r_Counter_reg[0]_3 ;
  wire [0:0]\r_Counter_reg[0]_4 ;
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
  wire r_delay_counter;
  wire [7:0]r_delay_counter0_in;
  wire \r_delay_counter[5]_i_2__0_n_0 ;
  wire \r_delay_counter[7]_i_3__0_n_0 ;
  wire reset_n;
  wire [7:0]sel0;
  wire [1:1]signalReg;
  wire [31:0]\signalReg_reg[1]_0 ;
  wire [31:0]\signalReg_reg[1]_1 ;
  wire signalSendt_IBUF;
  wire [2:1]triggReg;
  wire [0:0]\triggReg_reg[0]_0 ;
  wire \triggReg_reg_n_0_[2] ;
  wire valid_i_1__0_n_0;
  wire [31:0]valid_reg_0;
  wire [2:0]NLW_r_Counter0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_r_Counter0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_r_Counter0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_r_Counter0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_r_Counter0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_r_Counter0_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_r_Counter0_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_r_Counter0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_r_Counter0_carry__6_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h1)) 
    \DataOut[31]_i_1__0 
       (.I0(r_Counter),
        .I1(mainState),
        .O(\DataOut[31]_i_1__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[0] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__0_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[0] ),
        .Q(data_2[0]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[10] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__0_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[10] ),
        .Q(data_2[10]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[11] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__0_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[11] ),
        .Q(data_2[11]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[12] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__0_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[12] ),
        .Q(data_2[12]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[13] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__0_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[13] ),
        .Q(data_2[13]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[14] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__0_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[14] ),
        .Q(data_2[14]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[15] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__0_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[15] ),
        .Q(data_2[15]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[16] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__0_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[16] ),
        .Q(data_2[16]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[17] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__0_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[17] ),
        .Q(data_2[17]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[18] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__0_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[18] ),
        .Q(data_2[18]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[19] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__0_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[19] ),
        .Q(data_2[19]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[1] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__0_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[1] ),
        .Q(data_2[1]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[20] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__0_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[20] ),
        .Q(data_2[20]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[21] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__0_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[21] ),
        .Q(data_2[21]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[22] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__0_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[22] ),
        .Q(data_2[22]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[23] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__0_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[23] ),
        .Q(data_2[23]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[24] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__0_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[24] ),
        .Q(data_2[24]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[25] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__0_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[25] ),
        .Q(data_2[25]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[26] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__0_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[26] ),
        .Q(data_2[26]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[27] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__0_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[27] ),
        .Q(data_2[27]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[28] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__0_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[28] ),
        .Q(data_2[28]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[29] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__0_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[29] ),
        .Q(data_2[29]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[2] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__0_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[2] ),
        .Q(data_2[2]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[30] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__0_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[30] ),
        .Q(data_2[30]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[31] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__0_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[31] ),
        .Q(data_2[31]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[3] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__0_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[3] ),
        .Q(data_2[3]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[4] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__0_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[4] ),
        .Q(data_2[4]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[5] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__0_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[5] ),
        .Q(data_2[5]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[6] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__0_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[6] ),
        .Q(data_2[6]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[7] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__0_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[7] ),
        .Q(data_2[7]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[8] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__0_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[8] ),
        .Q(data_2[8]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[9] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__0_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[9] ),
        .Q(data_2[9]));
  LUT6 #(
    .INIT(64'hAAABAAAAAAAAAAAA)) 
    \FSM_sequential_mainState[0]_i_1__2 
       (.I0(\FSM_sequential_mainState[0]_i_2__2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .I5(\FSM_sequential_mainState[0]_i_3__0_n_0 ),
        .O(nextState[0]));
  LUT6 #(
    .INIT(64'hBBBB00F000000000)) 
    \FSM_sequential_mainState[0]_i_2__2 
       (.I0(triggReg[2]),
        .I1(\triggReg_reg_n_0_[2] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(mainState),
        .I5(r_Counter),
        .O(\FSM_sequential_mainState[0]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \FSM_sequential_mainState[0]_i_3__0 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[6]),
        .I3(sel0[7]),
        .I4(mainState),
        .I5(r_Counter),
        .O(\FSM_sequential_mainState[0]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'hBFF0)) 
    \FSM_sequential_mainState[1]_inv_i_1__0 
       (.I0(triggReg[2]),
        .I1(\triggReg_reg_n_0_[2] ),
        .I2(mainState),
        .I3(r_Counter),
        .O(nextState[1]));
  (* FSM_ENCODED_STATES = "C_IDLE:00,C_COUNTING:01,C_WAIT:10,C_SENDING:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_mainState_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_n),
        .D(nextState[0]),
        .Q(mainState));
  (* FSM_ENCODED_STATES = "C_IDLE:00,C_COUNTING:01,C_WAIT:10,C_SENDING:11" *) 
  (* inverted = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_sequential_mainState_reg[1]_inv 
       (.C(clk),
        .CE(1'b1),
        .D(nextState[1]),
        .PRE(reset_n),
        .Q(r_Counter));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[100]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_2[12]),
        .O(valid_reg_0[12]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[101]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_2[13]),
        .O(valid_reg_0[13]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[102]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_2[14]),
        .O(valid_reg_0[14]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[103]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_2[15]),
        .O(valid_reg_0[15]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[104]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_2[16]),
        .O(valid_reg_0[16]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[105]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_2[17]),
        .O(valid_reg_0[17]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[106]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_2[18]),
        .O(valid_reg_0[18]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[107]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_2[19]),
        .O(valid_reg_0[19]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[108]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_2[20]),
        .O(valid_reg_0[20]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[109]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_2[21]),
        .O(valid_reg_0[21]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[110]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_2[22]),
        .O(valid_reg_0[22]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[111]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_2[23]),
        .O(valid_reg_0[23]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[112]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_2[24]),
        .O(valid_reg_0[24]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[113]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_2[25]),
        .O(valid_reg_0[25]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[114]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_2[26]),
        .O(valid_reg_0[26]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[115]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_2[27]),
        .O(valid_reg_0[27]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[116]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_2[28]),
        .O(valid_reg_0[28]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[117]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_2[29]),
        .O(valid_reg_0[29]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[118]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_2[30]),
        .O(valid_reg_0[30]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[119]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_2[31]),
        .O(valid_reg_0[31]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[88]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_2[0]),
        .O(valid_reg_0[0]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[89]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_2[1]),
        .O(valid_reg_0[1]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[90]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_2[2]),
        .O(valid_reg_0[2]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[91]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_2[3]),
        .O(valid_reg_0[3]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[92]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_2[4]),
        .O(valid_reg_0[4]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[93]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_2[5]),
        .O(valid_reg_0[5]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[94]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_2[6]),
        .O(valid_reg_0[6]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[95]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_2[7]),
        .O(valid_reg_0[7]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[96]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_2[8]),
        .O(valid_reg_0[8]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[97]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_2[9]),
        .O(valid_reg_0[9]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[98]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_2[10]),
        .O(valid_reg_0[10]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[99]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_2[11]),
        .O(valid_reg_0[11]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry
       (.CI(1'b0),
        .CO({r_Counter0_carry_n_0,NLW_r_Counter0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\r_Counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_Counter0_2[4:1]),
        .S({\r_Counter_reg_n_0_[4] ,\r_Counter_reg_n_0_[3] ,\r_Counter_reg_n_0_[2] ,\r_Counter_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__0
       (.CI(r_Counter0_carry_n_0),
        .CO({r_Counter0_carry__0_n_0,NLW_r_Counter0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_Counter0_2[8:5]),
        .S({\r_Counter_reg_n_0_[8] ,\r_Counter_reg_n_0_[7] ,\r_Counter_reg_n_0_[6] ,\r_Counter_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__1
       (.CI(r_Counter0_carry__0_n_0),
        .CO({r_Counter0_carry__1_n_0,NLW_r_Counter0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_Counter0_2[12:9]),
        .S({\r_Counter_reg_n_0_[12] ,\r_Counter_reg_n_0_[11] ,\r_Counter_reg_n_0_[10] ,\r_Counter_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__2
       (.CI(r_Counter0_carry__1_n_0),
        .CO({r_Counter0_carry__2_n_0,NLW_r_Counter0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_Counter0_2[16:13]),
        .S({\r_Counter_reg_n_0_[16] ,\r_Counter_reg_n_0_[15] ,\r_Counter_reg_n_0_[14] ,\r_Counter_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__3
       (.CI(r_Counter0_carry__2_n_0),
        .CO({r_Counter0_carry__3_n_0,NLW_r_Counter0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_Counter0_2[20:17]),
        .S({\r_Counter_reg_n_0_[20] ,\r_Counter_reg_n_0_[19] ,\r_Counter_reg_n_0_[18] ,\r_Counter_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__4
       (.CI(r_Counter0_carry__3_n_0),
        .CO({r_Counter0_carry__4_n_0,NLW_r_Counter0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_Counter0_2[24:21]),
        .S({\r_Counter_reg_n_0_[24] ,\r_Counter_reg_n_0_[23] ,\r_Counter_reg_n_0_[22] ,\r_Counter_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__5
       (.CI(r_Counter0_carry__4_n_0),
        .CO({r_Counter0_carry__5_n_0,NLW_r_Counter0_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_Counter0_2[28:25]),
        .S({\r_Counter_reg_n_0_[28] ,\r_Counter_reg_n_0_[27] ,\r_Counter_reg_n_0_[26] ,\r_Counter_reg_n_0_[25] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__6
       (.CI(r_Counter0_carry__5_n_0),
        .CO(NLW_r_Counter0_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_r_Counter0_carry__6_O_UNCONNECTED[3],r_Counter0_2[31:29]}),
        .S({1'b0,\r_Counter_reg_n_0_[31] ,\r_Counter_reg_n_0_[30] ,\r_Counter_reg_n_0_[29] }));
  (* \PinAttr:I1:HOLD_DETOUR  = "176" *) 
  (* \PinAttr:I3:HOLD_DETOUR  = "179" *) 
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    \r_Counter[0]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(Q),
        .I3(\r_Counter_reg[0]_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    \r_Counter[0]_i_1__0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_1 ),
        .I3(\r_Counter_reg[0]_2 ),
        .O(\signalReg_reg[1]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    \r_Counter[0]_i_1__1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(mainState),
        .I3(\r_Counter_reg_n_0_[0] ),
        .O(r_Counter0_in[0]));
  (* \PinAttr:I3:HOLD_DETOUR  = "179" *) 
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    \r_Counter[0]_i_1__2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_3 ),
        .I3(\r_Counter_reg[0]_4 ),
        .O(\signalReg_reg[1]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[10]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(Q),
        .I3(r_Counter0[9]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[10]_i_1__0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_1 ),
        .I3(r_Counter0_0[9]),
        .O(\signalReg_reg[1]_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[10]_i_1__1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(mainState),
        .I3(r_Counter0_2[10]),
        .O(r_Counter0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[10]_i_1__2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_3 ),
        .I3(r_Counter0_1[9]),
        .O(\signalReg_reg[1]_1 [10]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[11]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(Q),
        .I3(r_Counter0[10]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[11]_i_1__0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_1 ),
        .I3(r_Counter0_0[10]),
        .O(\signalReg_reg[1]_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[11]_i_1__1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(mainState),
        .I3(r_Counter0_2[11]),
        .O(r_Counter0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[11]_i_1__2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_3 ),
        .I3(r_Counter0_1[10]),
        .O(\signalReg_reg[1]_1 [11]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[12]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(Q),
        .I3(r_Counter0[11]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[12]_i_1__0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_1 ),
        .I3(r_Counter0_0[11]),
        .O(\signalReg_reg[1]_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[12]_i_1__1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(mainState),
        .I3(r_Counter0_2[12]),
        .O(r_Counter0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[12]_i_1__2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_3 ),
        .I3(r_Counter0_1[11]),
        .O(\signalReg_reg[1]_1 [12]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[13]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(Q),
        .I3(r_Counter0[12]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[13]_i_1__0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_1 ),
        .I3(r_Counter0_0[12]),
        .O(\signalReg_reg[1]_0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[13]_i_1__1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(mainState),
        .I3(r_Counter0_2[13]),
        .O(r_Counter0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[13]_i_1__2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_3 ),
        .I3(r_Counter0_1[12]),
        .O(\signalReg_reg[1]_1 [13]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[14]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(Q),
        .I3(r_Counter0[13]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[14]_i_1__0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_1 ),
        .I3(r_Counter0_0[13]),
        .O(\signalReg_reg[1]_0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[14]_i_1__1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(mainState),
        .I3(r_Counter0_2[14]),
        .O(r_Counter0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[14]_i_1__2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_3 ),
        .I3(r_Counter0_1[13]),
        .O(\signalReg_reg[1]_1 [14]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[15]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(Q),
        .I3(r_Counter0[14]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[15]_i_1__0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_1 ),
        .I3(r_Counter0_0[14]),
        .O(\signalReg_reg[1]_0 [15]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[15]_i_1__1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(mainState),
        .I3(r_Counter0_2[15]),
        .O(r_Counter0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[15]_i_1__2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_3 ),
        .I3(r_Counter0_1[14]),
        .O(\signalReg_reg[1]_1 [15]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[16]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(Q),
        .I3(r_Counter0[15]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[16]_i_1__0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_1 ),
        .I3(r_Counter0_0[15]),
        .O(\signalReg_reg[1]_0 [16]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[16]_i_1__1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(mainState),
        .I3(r_Counter0_2[16]),
        .O(r_Counter0_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[16]_i_1__2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_3 ),
        .I3(r_Counter0_1[15]),
        .O(\signalReg_reg[1]_1 [16]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[17]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(Q),
        .I3(r_Counter0[16]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[17]_i_1__0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_1 ),
        .I3(r_Counter0_0[16]),
        .O(\signalReg_reg[1]_0 [17]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[17]_i_1__1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(mainState),
        .I3(r_Counter0_2[17]),
        .O(r_Counter0_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[17]_i_1__2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_3 ),
        .I3(r_Counter0_1[16]),
        .O(\signalReg_reg[1]_1 [17]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[18]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(Q),
        .I3(r_Counter0[17]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[18]_i_1__0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_1 ),
        .I3(r_Counter0_0[17]),
        .O(\signalReg_reg[1]_0 [18]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[18]_i_1__1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(mainState),
        .I3(r_Counter0_2[18]),
        .O(r_Counter0_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[18]_i_1__2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_3 ),
        .I3(r_Counter0_1[17]),
        .O(\signalReg_reg[1]_1 [18]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[19]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(Q),
        .I3(r_Counter0[18]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[19]_i_1__0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_1 ),
        .I3(r_Counter0_0[18]),
        .O(\signalReg_reg[1]_0 [19]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[19]_i_1__1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(mainState),
        .I3(r_Counter0_2[19]),
        .O(r_Counter0_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[19]_i_1__2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_3 ),
        .I3(r_Counter0_1[18]),
        .O(\signalReg_reg[1]_1 [19]));
  (* \PinAttr:I1:HOLD_DETOUR  = "176" *) 
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[1]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(Q),
        .I3(r_Counter0[0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[1]_i_1__0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_1 ),
        .I3(r_Counter0_0[0]),
        .O(\signalReg_reg[1]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[1]_i_1__1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(mainState),
        .I3(r_Counter0_2[1]),
        .O(r_Counter0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[1]_i_1__2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_3 ),
        .I3(r_Counter0_1[0]),
        .O(\signalReg_reg[1]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[20]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(Q),
        .I3(r_Counter0[19]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[20]_i_1__0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_1 ),
        .I3(r_Counter0_0[19]),
        .O(\signalReg_reg[1]_0 [20]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[20]_i_1__1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(mainState),
        .I3(r_Counter0_2[20]),
        .O(r_Counter0_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[20]_i_1__2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_3 ),
        .I3(r_Counter0_1[19]),
        .O(\signalReg_reg[1]_1 [20]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[21]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(Q),
        .I3(r_Counter0[20]),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[21]_i_1__0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_1 ),
        .I3(r_Counter0_0[20]),
        .O(\signalReg_reg[1]_0 [21]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[21]_i_1__1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(mainState),
        .I3(r_Counter0_2[21]),
        .O(r_Counter0_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[21]_i_1__2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_3 ),
        .I3(r_Counter0_1[20]),
        .O(\signalReg_reg[1]_1 [21]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[22]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(Q),
        .I3(r_Counter0[21]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[22]_i_1__0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_1 ),
        .I3(r_Counter0_0[21]),
        .O(\signalReg_reg[1]_0 [22]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[22]_i_1__1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(mainState),
        .I3(r_Counter0_2[22]),
        .O(r_Counter0_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[22]_i_1__2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_3 ),
        .I3(r_Counter0_1[21]),
        .O(\signalReg_reg[1]_1 [22]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[23]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(Q),
        .I3(r_Counter0[22]),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[23]_i_1__0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_1 ),
        .I3(r_Counter0_0[22]),
        .O(\signalReg_reg[1]_0 [23]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[23]_i_1__1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(mainState),
        .I3(r_Counter0_2[23]),
        .O(r_Counter0_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[23]_i_1__2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_3 ),
        .I3(r_Counter0_1[22]),
        .O(\signalReg_reg[1]_1 [23]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[24]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(Q),
        .I3(r_Counter0[23]),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[24]_i_1__0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_1 ),
        .I3(r_Counter0_0[23]),
        .O(\signalReg_reg[1]_0 [24]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[24]_i_1__1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(mainState),
        .I3(r_Counter0_2[24]),
        .O(r_Counter0_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[24]_i_1__2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_3 ),
        .I3(r_Counter0_1[23]),
        .O(\signalReg_reg[1]_1 [24]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[25]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(Q),
        .I3(r_Counter0[24]),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[25]_i_1__0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_1 ),
        .I3(r_Counter0_0[24]),
        .O(\signalReg_reg[1]_0 [25]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[25]_i_1__1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(mainState),
        .I3(r_Counter0_2[25]),
        .O(r_Counter0_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[25]_i_1__2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_3 ),
        .I3(r_Counter0_1[24]),
        .O(\signalReg_reg[1]_1 [25]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[26]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(Q),
        .I3(r_Counter0[25]),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[26]_i_1__0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_1 ),
        .I3(r_Counter0_0[25]),
        .O(\signalReg_reg[1]_0 [26]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[26]_i_1__1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(mainState),
        .I3(r_Counter0_2[26]),
        .O(r_Counter0_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[26]_i_1__2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_3 ),
        .I3(r_Counter0_1[25]),
        .O(\signalReg_reg[1]_1 [26]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[27]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(Q),
        .I3(r_Counter0[26]),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[27]_i_1__0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_1 ),
        .I3(r_Counter0_0[26]),
        .O(\signalReg_reg[1]_0 [27]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[27]_i_1__1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(mainState),
        .I3(r_Counter0_2[27]),
        .O(r_Counter0_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[27]_i_1__2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_3 ),
        .I3(r_Counter0_1[26]),
        .O(\signalReg_reg[1]_1 [27]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[28]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(Q),
        .I3(r_Counter0[27]),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[28]_i_1__0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_1 ),
        .I3(r_Counter0_0[27]),
        .O(\signalReg_reg[1]_0 [28]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[28]_i_1__1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(mainState),
        .I3(r_Counter0_2[28]),
        .O(r_Counter0_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[28]_i_1__2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_3 ),
        .I3(r_Counter0_1[27]),
        .O(\signalReg_reg[1]_1 [28]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[29]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(Q),
        .I3(r_Counter0[28]),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[29]_i_1__0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_1 ),
        .I3(r_Counter0_0[28]),
        .O(\signalReg_reg[1]_0 [29]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[29]_i_1__1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(mainState),
        .I3(r_Counter0_2[29]),
        .O(r_Counter0_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[29]_i_1__2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_3 ),
        .I3(r_Counter0_1[28]),
        .O(\signalReg_reg[1]_1 [29]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[2]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(Q),
        .I3(r_Counter0[1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[2]_i_1__0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_1 ),
        .I3(r_Counter0_0[1]),
        .O(\signalReg_reg[1]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[2]_i_1__1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(mainState),
        .I3(r_Counter0_2[2]),
        .O(r_Counter0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[2]_i_1__2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_3 ),
        .I3(r_Counter0_1[1]),
        .O(\signalReg_reg[1]_1 [2]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[30]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(Q),
        .I3(r_Counter0[29]),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[30]_i_1__0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_1 ),
        .I3(r_Counter0_0[29]),
        .O(\signalReg_reg[1]_0 [30]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[30]_i_1__1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(mainState),
        .I3(r_Counter0_2[30]),
        .O(r_Counter0_in[30]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[30]_i_1__2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_3 ),
        .I3(r_Counter0_1[29]),
        .O(\signalReg_reg[1]_1 [30]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[31]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(Q),
        .I3(r_Counter0[30]),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[31]_i_1__0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_1 ),
        .I3(r_Counter0_0[30]),
        .O(\signalReg_reg[1]_0 [31]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[31]_i_1__1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(mainState),
        .I3(r_Counter0_2[31]),
        .O(r_Counter0_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[31]_i_1__2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_3 ),
        .I3(r_Counter0_1[30]),
        .O(\signalReg_reg[1]_1 [31]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[3]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(Q),
        .I3(r_Counter0[2]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[3]_i_1__0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_1 ),
        .I3(r_Counter0_0[2]),
        .O(\signalReg_reg[1]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[3]_i_1__1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(mainState),
        .I3(r_Counter0_2[3]),
        .O(r_Counter0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[3]_i_1__2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_3 ),
        .I3(r_Counter0_1[2]),
        .O(\signalReg_reg[1]_1 [3]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[4]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(Q),
        .I3(r_Counter0[3]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[4]_i_1__0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_1 ),
        .I3(r_Counter0_0[3]),
        .O(\signalReg_reg[1]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[4]_i_1__1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(mainState),
        .I3(r_Counter0_2[4]),
        .O(r_Counter0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[4]_i_1__2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_3 ),
        .I3(r_Counter0_1[3]),
        .O(\signalReg_reg[1]_1 [4]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[5]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(Q),
        .I3(r_Counter0[4]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[5]_i_1__0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_1 ),
        .I3(r_Counter0_0[4]),
        .O(\signalReg_reg[1]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[5]_i_1__1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(mainState),
        .I3(r_Counter0_2[5]),
        .O(r_Counter0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[5]_i_1__2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_3 ),
        .I3(r_Counter0_1[4]),
        .O(\signalReg_reg[1]_1 [5]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[6]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(Q),
        .I3(r_Counter0[5]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[6]_i_1__0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_1 ),
        .I3(r_Counter0_0[5]),
        .O(\signalReg_reg[1]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[6]_i_1__1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(mainState),
        .I3(r_Counter0_2[6]),
        .O(r_Counter0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[6]_i_1__2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_3 ),
        .I3(r_Counter0_1[5]),
        .O(\signalReg_reg[1]_1 [6]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[7]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(Q),
        .I3(r_Counter0[6]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[7]_i_1__0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_1 ),
        .I3(r_Counter0_0[6]),
        .O(\signalReg_reg[1]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[7]_i_1__1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(mainState),
        .I3(r_Counter0_2[7]),
        .O(r_Counter0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[7]_i_1__2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_3 ),
        .I3(r_Counter0_1[6]),
        .O(\signalReg_reg[1]_1 [7]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[8]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(Q),
        .I3(r_Counter0[7]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[8]_i_1__0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_1 ),
        .I3(r_Counter0_0[7]),
        .O(\signalReg_reg[1]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[8]_i_1__1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(mainState),
        .I3(r_Counter0_2[8]),
        .O(r_Counter0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[8]_i_1__2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_3 ),
        .I3(r_Counter0_1[7]),
        .O(\signalReg_reg[1]_1 [8]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[9]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(Q),
        .I3(r_Counter0[8]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[9]_i_1__0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_1 ),
        .I3(r_Counter0_0[8]),
        .O(\signalReg_reg[1]_0 [9]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[9]_i_1__1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(mainState),
        .I3(r_Counter0_2[9]),
        .O(r_Counter0_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \r_Counter[9]_i_1__2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_Counter_reg[0]_3 ),
        .I3(r_Counter0_1[8]),
        .O(\signalReg_reg[1]_1 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[0] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(r_Counter0_in[0]),
        .Q(\r_Counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[10] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(r_Counter0_in[10]),
        .Q(\r_Counter_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[11] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(r_Counter0_in[11]),
        .Q(\r_Counter_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[12] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(r_Counter0_in[12]),
        .Q(\r_Counter_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[13] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(r_Counter0_in[13]),
        .Q(\r_Counter_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[14] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(r_Counter0_in[14]),
        .Q(\r_Counter_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[15] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(r_Counter0_in[15]),
        .Q(\r_Counter_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[16] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(r_Counter0_in[16]),
        .Q(\r_Counter_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[17] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(r_Counter0_in[17]),
        .Q(\r_Counter_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[18] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(r_Counter0_in[18]),
        .Q(\r_Counter_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[19] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(r_Counter0_in[19]),
        .Q(\r_Counter_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[1] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(r_Counter0_in[1]),
        .Q(\r_Counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[20] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(r_Counter0_in[20]),
        .Q(\r_Counter_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[21] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(r_Counter0_in[21]),
        .Q(\r_Counter_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[22] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(r_Counter0_in[22]),
        .Q(\r_Counter_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[23] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(r_Counter0_in[23]),
        .Q(\r_Counter_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[24] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(r_Counter0_in[24]),
        .Q(\r_Counter_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[25] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(r_Counter0_in[25]),
        .Q(\r_Counter_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[26] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(r_Counter0_in[26]),
        .Q(\r_Counter_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[27] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(r_Counter0_in[27]),
        .Q(\r_Counter_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[28] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(r_Counter0_in[28]),
        .Q(\r_Counter_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[29] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(r_Counter0_in[29]),
        .Q(\r_Counter_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[2] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(r_Counter0_in[2]),
        .Q(\r_Counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[30] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(r_Counter0_in[30]),
        .Q(\r_Counter_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[31] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(r_Counter0_in[31]),
        .Q(\r_Counter_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[3] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(r_Counter0_in[3]),
        .Q(\r_Counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[4] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(r_Counter0_in[4]),
        .Q(\r_Counter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[5] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(r_Counter0_in[5]),
        .Q(\r_Counter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[6] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(r_Counter0_in[6]),
        .Q(\r_Counter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[7] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(r_Counter0_in[7]),
        .Q(\r_Counter_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[8] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(r_Counter0_in[8]),
        .Q(\r_Counter_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[9] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(r_Counter0_in[9]),
        .Q(\r_Counter_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \r_delay_counter[0]_i_1__0 
       (.I0(mainState),
        .I1(r_Counter),
        .I2(sel0[0]),
        .O(r_delay_counter0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h0110)) 
    \r_delay_counter[1]_i_1__0 
       (.I0(r_Counter),
        .I1(mainState),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(r_delay_counter0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h00070008)) 
    \r_delay_counter[2]_i_1__0 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(mainState),
        .I3(r_Counter),
        .I4(sel0[2]),
        .O(r_delay_counter0_in[2]));
  LUT6 #(
    .INIT(64'h0000007F00000080)) 
    \r_delay_counter[3]_i_1__0 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(mainState),
        .I4(r_Counter),
        .I5(sel0[3]),
        .O(r_delay_counter0_in[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \r_delay_counter[4]_i_1__0 
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(\DataOut[31]_i_1__0_n_0 ),
        .I5(sel0[4]),
        .O(r_delay_counter0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT4 #(
    .INIT(16'h0102)) 
    \r_delay_counter[5]_i_1__0 
       (.I0(\r_delay_counter[5]_i_2__0_n_0 ),
        .I1(mainState),
        .I2(r_Counter),
        .I3(sel0[5]),
        .O(r_delay_counter0_in[5]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_delay_counter[5]_i_2__0 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[3]),
        .O(\r_delay_counter[5]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h0102)) 
    \r_delay_counter[6]_i_1__0 
       (.I0(\r_delay_counter[7]_i_3__0_n_0 ),
        .I1(mainState),
        .I2(r_Counter),
        .I3(sel0[6]),
        .O(r_delay_counter0_in[6]));
  LUT2 #(
    .INIT(4'h7)) 
    \r_delay_counter[7]_i_1__0 
       (.I0(r_Counter),
        .I1(mainState),
        .O(r_delay_counter));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'h00070008)) 
    \r_delay_counter[7]_i_2__0 
       (.I0(sel0[6]),
        .I1(\r_delay_counter[7]_i_3__0_n_0 ),
        .I2(mainState),
        .I3(r_Counter),
        .I4(sel0[7]),
        .O(r_delay_counter0_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r_delay_counter[7]_i_3__0 
       (.I0(sel0[5]),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(sel0[4]),
        .O(\r_delay_counter[7]_i_3__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_delay_counter_reg[0] 
       (.C(clk),
        .CE(r_delay_counter),
        .CLR(reset_n),
        .D(r_delay_counter0_in[0]),
        .Q(sel0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_delay_counter_reg[1] 
       (.C(clk),
        .CE(r_delay_counter),
        .CLR(reset_n),
        .D(r_delay_counter0_in[1]),
        .Q(sel0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_delay_counter_reg[2] 
       (.C(clk),
        .CE(r_delay_counter),
        .CLR(reset_n),
        .D(r_delay_counter0_in[2]),
        .Q(sel0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_delay_counter_reg[3] 
       (.C(clk),
        .CE(r_delay_counter),
        .CLR(reset_n),
        .D(r_delay_counter0_in[3]),
        .Q(sel0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \r_delay_counter_reg[4] 
       (.C(clk),
        .CE(r_delay_counter),
        .CLR(reset_n),
        .D(r_delay_counter0_in[4]),
        .Q(sel0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \r_delay_counter_reg[5] 
       (.C(clk),
        .CE(r_delay_counter),
        .CLR(reset_n),
        .D(r_delay_counter0_in[5]),
        .Q(sel0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \r_delay_counter_reg[6] 
       (.C(clk),
        .CE(r_delay_counter),
        .CLR(reset_n),
        .D(r_delay_counter0_in[6]),
        .Q(sel0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \r_delay_counter_reg[7] 
       (.C(clk),
        .CE(r_delay_counter),
        .CLR(reset_n),
        .D(r_delay_counter0_in[7]),
        .Q(sel0[7]));
  FDCE #(
    .INIT(1'b0)) 
    \signalReg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_n),
        .D(signalSendt_IBUF),
        .Q(signalReg));
  FDCE #(
    .INIT(1'b0)) 
    \signalReg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_n),
        .D(signalReg),
        .Q(p_0_in[0]));
  FDCE #(
    .INIT(1'b0)) 
    \signalReg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_n),
        .D(p_0_in[0]),
        .Q(p_0_in[1]));
  FDPE #(
    .INIT(1'b0)) 
    \triggReg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\triggReg_reg[0]_0 ),
        .PRE(reset_n),
        .Q(triggReg[1]));
  FDPE #(
    .INIT(1'b0)) 
    \triggReg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(triggReg[1]),
        .PRE(reset_n),
        .Q(triggReg[2]));
  FDPE #(
    .INIT(1'b0)) 
    \triggReg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(triggReg[2]),
        .PRE(reset_n),
        .Q(\triggReg_reg_n_0_[2] ));
  LUT4 #(
    .INIT(16'h4744)) 
    valid_i_1__0
       (.I0(r_Counter),
        .I1(mainState),
        .I2(done),
        .I3(l_valid_2),
        .O(valid_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    valid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_n),
        .D(valid_i_1__0_n_0),
        .Q(l_valid_2));
endmodule

(* ORIG_REF_NAME = "CounterModule" *) 
module CounterModule_1
   (r_Counter0,
    Q,
    l_valid_3,
    \FSM_sequential_mainState_reg[0]_0 ,
    D,
    clk,
    reset_n,
    p_0_in,
    done,
    l_valid_4,
    l_valid_1,
    l_valid_2,
    \triggReg_reg[0]_0 ,
    \r_Counter_reg[31]_0 );
  output [30:0]r_Counter0;
  output [0:0]Q;
  output l_valid_3;
  output [0:0]\FSM_sequential_mainState_reg[0]_0 ;
  output [31:0]D;
  input clk;
  input reset_n;
  input [1:0]p_0_in;
  input done;
  input l_valid_4;
  input l_valid_1;
  input l_valid_2;
  input [0:0]\triggReg_reg[0]_0 ;
  input [31:0]\r_Counter_reg[31]_0 ;

  wire [31:0]D;
  wire \DataOut[31]_i_1__1_n_0 ;
  wire \FSM_sequential_mainState[0]_i_2__1_n_0 ;
  wire \FSM_sequential_mainState[0]_i_3__1_n_0 ;
  wire [0:0]\FSM_sequential_mainState_reg[0]_0 ;
  wire [0:0]Q;
  wire clk;
  wire [31:0]data_3;
  wire done;
  wire l_valid_1;
  wire l_valid_2;
  wire l_valid_3;
  wire l_valid_4;
  wire [1:0]nextState;
  wire [1:0]p_0_in;
  wire r_Counter;
  wire [30:0]r_Counter0;
  wire r_Counter0_carry__0_n_0;
  wire r_Counter0_carry__1_n_0;
  wire r_Counter0_carry__2_n_0;
  wire r_Counter0_carry__3_n_0;
  wire r_Counter0_carry__4_n_0;
  wire r_Counter0_carry__5_n_0;
  wire r_Counter0_carry_n_0;
  wire [31:0]\r_Counter_reg[31]_0 ;
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
  wire r_delay_counter;
  wire [7:0]r_delay_counter0_in;
  wire \r_delay_counter[5]_i_2__1_n_0 ;
  wire \r_delay_counter[7]_i_3__1_n_0 ;
  wire reset_n;
  wire [7:0]sel0;
  wire [2:1]triggReg;
  wire [0:0]\triggReg_reg[0]_0 ;
  wire \triggReg_reg_n_0_[2] ;
  wire valid_i_1__1_n_0;
  wire [2:0]NLW_r_Counter0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_r_Counter0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_r_Counter0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_r_Counter0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_r_Counter0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_r_Counter0_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_r_Counter0_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_r_Counter0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_r_Counter0_carry__6_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h1)) 
    \DataOut[31]_i_1__1 
       (.I0(r_Counter),
        .I1(\FSM_sequential_mainState_reg[0]_0 ),
        .O(\DataOut[31]_i_1__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[0] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__1_n_0 ),
        .CLR(reset_n),
        .D(Q),
        .Q(data_3[0]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[10] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[10] ),
        .Q(data_3[10]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[11] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[11] ),
        .Q(data_3[11]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[12] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[12] ),
        .Q(data_3[12]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[13] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[13] ),
        .Q(data_3[13]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[14] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[14] ),
        .Q(data_3[14]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[15] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[15] ),
        .Q(data_3[15]));
  (* \PinAttr:D:HOLD_DETOUR  = "176" *) 
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[16] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[16] ),
        .Q(data_3[16]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[17] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[17] ),
        .Q(data_3[17]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[18] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[18] ),
        .Q(data_3[18]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[19] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[19] ),
        .Q(data_3[19]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[1] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[1] ),
        .Q(data_3[1]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[20] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[20] ),
        .Q(data_3[20]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[21] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[21] ),
        .Q(data_3[21]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[22] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[22] ),
        .Q(data_3[22]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[23] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[23] ),
        .Q(data_3[23]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[24] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[24] ),
        .Q(data_3[24]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[25] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[25] ),
        .Q(data_3[25]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[26] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[26] ),
        .Q(data_3[26]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[27] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[27] ),
        .Q(data_3[27]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[28] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[28] ),
        .Q(data_3[28]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[29] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[29] ),
        .Q(data_3[29]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[2] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[2] ),
        .Q(data_3[2]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[30] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[30] ),
        .Q(data_3[30]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[31] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[31] ),
        .Q(data_3[31]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[3] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[3] ),
        .Q(data_3[3]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[4] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[4] ),
        .Q(data_3[4]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[5] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[5] ),
        .Q(data_3[5]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[6] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[6] ),
        .Q(data_3[6]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[7] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[7] ),
        .Q(data_3[7]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[8] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[8] ),
        .Q(data_3[8]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[9] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__1_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[9] ),
        .Q(data_3[9]));
  LUT6 #(
    .INIT(64'hAAABAAAAAAAAAAAA)) 
    \FSM_sequential_mainState[0]_i_1__1 
       (.I0(\FSM_sequential_mainState[0]_i_2__1_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .I5(\FSM_sequential_mainState[0]_i_3__1_n_0 ),
        .O(nextState[0]));
  LUT6 #(
    .INIT(64'hBBBB00F000000000)) 
    \FSM_sequential_mainState[0]_i_2__1 
       (.I0(triggReg[2]),
        .I1(\triggReg_reg_n_0_[2] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(\FSM_sequential_mainState_reg[0]_0 ),
        .I5(r_Counter),
        .O(\FSM_sequential_mainState[0]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \FSM_sequential_mainState[0]_i_3__1 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[6]),
        .I3(sel0[7]),
        .I4(\FSM_sequential_mainState_reg[0]_0 ),
        .I5(r_Counter),
        .O(\FSM_sequential_mainState[0]_i_3__1_n_0 ));
  LUT4 #(
    .INIT(16'hBFF0)) 
    \FSM_sequential_mainState[1]_inv_i_1__1 
       (.I0(triggReg[2]),
        .I1(\triggReg_reg_n_0_[2] ),
        .I2(\FSM_sequential_mainState_reg[0]_0 ),
        .I3(r_Counter),
        .O(nextState[1]));
  (* FSM_ENCODED_STATES = "C_IDLE:00,C_COUNTING:01,C_WAIT:10,C_SENDING:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_mainState_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_n),
        .D(nextState[0]),
        .Q(\FSM_sequential_mainState_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "C_IDLE:00,C_COUNTING:01,C_WAIT:10,C_SENDING:11" *) 
  (* inverted = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_sequential_mainState_reg[1]_inv 
       (.C(clk),
        .CE(1'b1),
        .D(nextState[1]),
        .PRE(reset_n),
        .Q(r_Counter));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[48]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_3[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[49]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_3[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[50]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_3[2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[51]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_3[3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[52]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_3[4]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[53]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_3[5]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[54]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_3[6]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[55]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_3[7]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[56]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_3[8]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[57]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_3[9]),
        .O(D[9]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[58]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_3[10]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[59]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_3[11]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[60]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_3[12]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[61]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_3[13]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[62]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_3[14]),
        .O(D[14]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[63]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_3[15]),
        .O(D[15]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[64]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_3[16]),
        .O(D[16]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[65]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_3[17]),
        .O(D[17]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[66]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_3[18]),
        .O(D[18]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[67]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_3[19]),
        .O(D[19]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[68]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_3[20]),
        .O(D[20]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[69]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_3[21]),
        .O(D[21]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[70]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_3[22]),
        .O(D[22]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[71]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_3[23]),
        .O(D[23]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[72]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_3[24]),
        .O(D[24]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[73]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_3[25]),
        .O(D[25]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[74]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_3[26]),
        .O(D[26]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[75]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_3[27]),
        .O(D[27]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[76]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_3[28]),
        .O(D[28]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[77]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_3[29]),
        .O(D[29]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[78]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_3[30]),
        .O(D[30]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[79]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_3[31]),
        .O(D[31]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry
       (.CI(1'b0),
        .CO({r_Counter0_carry_n_0,NLW_r_Counter0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(Q),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_Counter0[3:0]),
        .S({\r_Counter_reg_n_0_[4] ,\r_Counter_reg_n_0_[3] ,\r_Counter_reg_n_0_[2] ,\r_Counter_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__0
       (.CI(r_Counter0_carry_n_0),
        .CO({r_Counter0_carry__0_n_0,NLW_r_Counter0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_Counter0[7:4]),
        .S({\r_Counter_reg_n_0_[8] ,\r_Counter_reg_n_0_[7] ,\r_Counter_reg_n_0_[6] ,\r_Counter_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__1
       (.CI(r_Counter0_carry__0_n_0),
        .CO({r_Counter0_carry__1_n_0,NLW_r_Counter0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_Counter0[11:8]),
        .S({\r_Counter_reg_n_0_[12] ,\r_Counter_reg_n_0_[11] ,\r_Counter_reg_n_0_[10] ,\r_Counter_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__2
       (.CI(r_Counter0_carry__1_n_0),
        .CO({r_Counter0_carry__2_n_0,NLW_r_Counter0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_Counter0[15:12]),
        .S({\r_Counter_reg_n_0_[16] ,\r_Counter_reg_n_0_[15] ,\r_Counter_reg_n_0_[14] ,\r_Counter_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__3
       (.CI(r_Counter0_carry__2_n_0),
        .CO({r_Counter0_carry__3_n_0,NLW_r_Counter0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_Counter0[19:16]),
        .S({\r_Counter_reg_n_0_[20] ,\r_Counter_reg_n_0_[19] ,\r_Counter_reg_n_0_[18] ,\r_Counter_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__4
       (.CI(r_Counter0_carry__3_n_0),
        .CO({r_Counter0_carry__4_n_0,NLW_r_Counter0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_Counter0[23:20]),
        .S({\r_Counter_reg_n_0_[24] ,\r_Counter_reg_n_0_[23] ,\r_Counter_reg_n_0_[22] ,\r_Counter_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__5
       (.CI(r_Counter0_carry__4_n_0),
        .CO({r_Counter0_carry__5_n_0,NLW_r_Counter0_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_Counter0[27:24]),
        .S({\r_Counter_reg_n_0_[28] ,\r_Counter_reg_n_0_[27] ,\r_Counter_reg_n_0_[26] ,\r_Counter_reg_n_0_[25] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__6
       (.CI(r_Counter0_carry__5_n_0),
        .CO(NLW_r_Counter0_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_r_Counter0_carry__6_O_UNCONNECTED[3],r_Counter0[30:28]}),
        .S({1'b0,\r_Counter_reg_n_0_[31] ,\r_Counter_reg_n_0_[30] ,\r_Counter_reg_n_0_[29] }));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[0] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [0]),
        .Q(Q));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[10] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [10]),
        .Q(\r_Counter_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[11] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [11]),
        .Q(\r_Counter_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[12] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [12]),
        .Q(\r_Counter_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[13] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [13]),
        .Q(\r_Counter_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[14] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [14]),
        .Q(\r_Counter_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[15] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [15]),
        .Q(\r_Counter_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[16] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [16]),
        .Q(\r_Counter_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[17] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [17]),
        .Q(\r_Counter_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[18] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [18]),
        .Q(\r_Counter_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[19] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [19]),
        .Q(\r_Counter_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[1] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [1]),
        .Q(\r_Counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[20] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [20]),
        .Q(\r_Counter_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[21] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [21]),
        .Q(\r_Counter_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[22] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [22]),
        .Q(\r_Counter_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[23] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [23]),
        .Q(\r_Counter_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[24] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [24]),
        .Q(\r_Counter_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[25] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [25]),
        .Q(\r_Counter_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[26] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [26]),
        .Q(\r_Counter_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[27] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [27]),
        .Q(\r_Counter_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[28] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [28]),
        .Q(\r_Counter_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[29] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [29]),
        .Q(\r_Counter_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[2] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [2]),
        .Q(\r_Counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[30] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [30]),
        .Q(\r_Counter_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[31] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [31]),
        .Q(\r_Counter_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[3] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [3]),
        .Q(\r_Counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[4] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [4]),
        .Q(\r_Counter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[5] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [5]),
        .Q(\r_Counter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[6] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [6]),
        .Q(\r_Counter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[7] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [7]),
        .Q(\r_Counter_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[8] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [8]),
        .Q(\r_Counter_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[9] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [9]),
        .Q(\r_Counter_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \r_delay_counter[0]_i_1__1 
       (.I0(\FSM_sequential_mainState_reg[0]_0 ),
        .I1(r_Counter),
        .I2(sel0[0]),
        .O(r_delay_counter0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT4 #(
    .INIT(16'h0110)) 
    \r_delay_counter[1]_i_1__1 
       (.I0(r_Counter),
        .I1(\FSM_sequential_mainState_reg[0]_0 ),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(r_delay_counter0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT5 #(
    .INIT(32'h00070008)) 
    \r_delay_counter[2]_i_1__1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(\FSM_sequential_mainState_reg[0]_0 ),
        .I3(r_Counter),
        .I4(sel0[2]),
        .O(r_delay_counter0_in[2]));
  LUT6 #(
    .INIT(64'h0000007F00000080)) 
    \r_delay_counter[3]_i_1__1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(\FSM_sequential_mainState_reg[0]_0 ),
        .I4(r_Counter),
        .I5(sel0[3]),
        .O(r_delay_counter0_in[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \r_delay_counter[4]_i_1__1 
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(\DataOut[31]_i_1__1_n_0 ),
        .I5(sel0[4]),
        .O(r_delay_counter0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT4 #(
    .INIT(16'h0102)) 
    \r_delay_counter[5]_i_1__1 
       (.I0(\r_delay_counter[5]_i_2__1_n_0 ),
        .I1(\FSM_sequential_mainState_reg[0]_0 ),
        .I2(r_Counter),
        .I3(sel0[5]),
        .O(r_delay_counter0_in[5]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_delay_counter[5]_i_2__1 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[3]),
        .O(\r_delay_counter[5]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT4 #(
    .INIT(16'h0102)) 
    \r_delay_counter[6]_i_1__1 
       (.I0(\r_delay_counter[7]_i_3__1_n_0 ),
        .I1(\FSM_sequential_mainState_reg[0]_0 ),
        .I2(r_Counter),
        .I3(sel0[6]),
        .O(r_delay_counter0_in[6]));
  LUT2 #(
    .INIT(4'h7)) 
    \r_delay_counter[7]_i_1__1 
       (.I0(r_Counter),
        .I1(\FSM_sequential_mainState_reg[0]_0 ),
        .O(r_delay_counter));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT5 #(
    .INIT(32'h00070008)) 
    \r_delay_counter[7]_i_2__1 
       (.I0(sel0[6]),
        .I1(\r_delay_counter[7]_i_3__1_n_0 ),
        .I2(\FSM_sequential_mainState_reg[0]_0 ),
        .I3(r_Counter),
        .I4(sel0[7]),
        .O(r_delay_counter0_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r_delay_counter[7]_i_3__1 
       (.I0(sel0[5]),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(sel0[4]),
        .O(\r_delay_counter[7]_i_3__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_delay_counter_reg[0] 
       (.C(clk),
        .CE(r_delay_counter),
        .CLR(reset_n),
        .D(r_delay_counter0_in[0]),
        .Q(sel0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_delay_counter_reg[1] 
       (.C(clk),
        .CE(r_delay_counter),
        .CLR(reset_n),
        .D(r_delay_counter0_in[1]),
        .Q(sel0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_delay_counter_reg[2] 
       (.C(clk),
        .CE(r_delay_counter),
        .CLR(reset_n),
        .D(r_delay_counter0_in[2]),
        .Q(sel0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_delay_counter_reg[3] 
       (.C(clk),
        .CE(r_delay_counter),
        .CLR(reset_n),
        .D(r_delay_counter0_in[3]),
        .Q(sel0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \r_delay_counter_reg[4] 
       (.C(clk),
        .CE(r_delay_counter),
        .CLR(reset_n),
        .D(r_delay_counter0_in[4]),
        .Q(sel0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \r_delay_counter_reg[5] 
       (.C(clk),
        .CE(r_delay_counter),
        .CLR(reset_n),
        .D(r_delay_counter0_in[5]),
        .Q(sel0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \r_delay_counter_reg[6] 
       (.C(clk),
        .CE(r_delay_counter),
        .CLR(reset_n),
        .D(r_delay_counter0_in[6]),
        .Q(sel0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \r_delay_counter_reg[7] 
       (.C(clk),
        .CE(r_delay_counter),
        .CLR(reset_n),
        .D(r_delay_counter0_in[7]),
        .Q(sel0[7]));
  FDPE #(
    .INIT(1'b0)) 
    \triggReg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\triggReg_reg[0]_0 ),
        .PRE(reset_n),
        .Q(triggReg[1]));
  FDPE #(
    .INIT(1'b0)) 
    \triggReg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(triggReg[1]),
        .PRE(reset_n),
        .Q(triggReg[2]));
  FDPE #(
    .INIT(1'b0)) 
    \triggReg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(triggReg[2]),
        .PRE(reset_n),
        .Q(\triggReg_reg_n_0_[2] ));
  LUT4 #(
    .INIT(16'h4744)) 
    valid_i_1__1
       (.I0(r_Counter),
        .I1(\FSM_sequential_mainState_reg[0]_0 ),
        .I2(done),
        .I3(l_valid_3),
        .O(valid_i_1__1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    valid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_n),
        .D(valid_i_1__1_n_0),
        .Q(l_valid_3));
endmodule

(* ORIG_REF_NAME = "CounterModule" *) 
module CounterModule_2
   (r_Counter0,
    Q,
    l_valid_4,
    D,
    \FSM_sequential_mainState_reg[0]_0 ,
    valid_reg_0,
    valid_reg_1,
    clk,
    reset_n,
    l_valid_1,
    l_valid_2,
    l_valid_3,
    p_0_in,
    done,
    hasPulsed,
    \triggReg_reg[0]_0 ,
    \r_Counter_reg[31]_0 );
  output [30:0]r_Counter0;
  output [0:0]Q;
  output l_valid_4;
  output [32:0]D;
  output [0:0]\FSM_sequential_mainState_reg[0]_0 ;
  output valid_reg_0;
  output valid_reg_1;
  input clk;
  input reset_n;
  input l_valid_1;
  input l_valid_2;
  input l_valid_3;
  input [1:0]p_0_in;
  input done;
  input hasPulsed;
  input [0:0]\triggReg_reg[0]_0 ;
  input [31:0]\r_Counter_reg[31]_0 ;

  wire [32:0]D;
  wire \DataOut[31]_i_1__2_n_0 ;
  wire \FSM_sequential_mainState[0]_i_2__0_n_0 ;
  wire \FSM_sequential_mainState[0]_i_3__2_n_0 ;
  wire [0:0]\FSM_sequential_mainState_reg[0]_0 ;
  wire [0:0]Q;
  wire clk;
  wire [31:0]data_4;
  wire done;
  wire hasPulsed;
  wire l_valid_1;
  wire l_valid_2;
  wire l_valid_3;
  wire l_valid_4;
  wire [1:0]nextState;
  wire [1:0]p_0_in;
  wire r_Counter;
  wire [30:0]r_Counter0;
  wire r_Counter0_carry__0_n_0;
  wire r_Counter0_carry__1_n_0;
  wire r_Counter0_carry__2_n_0;
  wire r_Counter0_carry__3_n_0;
  wire r_Counter0_carry__4_n_0;
  wire r_Counter0_carry__5_n_0;
  wire r_Counter0_carry_n_0;
  wire [31:0]\r_Counter_reg[31]_0 ;
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
  wire r_delay_counter;
  wire [7:0]r_delay_counter0_in;
  wire \r_delay_counter[5]_i_2__2_n_0 ;
  wire \r_delay_counter[7]_i_3__2_n_0 ;
  wire reset_n;
  wire [7:0]sel0;
  wire [2:1]triggReg;
  wire [0:0]\triggReg_reg[0]_0 ;
  wire \triggReg_reg_n_0_[2] ;
  wire valid_i_1__2_n_0;
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

  LUT2 #(
    .INIT(4'h1)) 
    \DataOut[31]_i_1__2 
       (.I0(r_Counter),
        .I1(\FSM_sequential_mainState_reg[0]_0 ),
        .O(\DataOut[31]_i_1__2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[0] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__2_n_0 ),
        .CLR(reset_n),
        .D(Q),
        .Q(data_4[0]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[10] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__2_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[10] ),
        .Q(data_4[10]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[11] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__2_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[11] ),
        .Q(data_4[11]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[12] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__2_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[12] ),
        .Q(data_4[12]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[13] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__2_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[13] ),
        .Q(data_4[13]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[14] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__2_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[14] ),
        .Q(data_4[14]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[15] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__2_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[15] ),
        .Q(data_4[15]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[16] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__2_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[16] ),
        .Q(data_4[16]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[17] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__2_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[17] ),
        .Q(data_4[17]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[18] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__2_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[18] ),
        .Q(data_4[18]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[19] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__2_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[19] ),
        .Q(data_4[19]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[1] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__2_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[1] ),
        .Q(data_4[1]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[20] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__2_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[20] ),
        .Q(data_4[20]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[21] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__2_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[21] ),
        .Q(data_4[21]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[22] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__2_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[22] ),
        .Q(data_4[22]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[23] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__2_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[23] ),
        .Q(data_4[23]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[24] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__2_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[24] ),
        .Q(data_4[24]));
  (* \PinAttr:D:HOLD_DETOUR  = "177" *) 
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[25] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__2_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[25] ),
        .Q(data_4[25]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[26] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__2_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[26] ),
        .Q(data_4[26]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[27] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__2_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[27] ),
        .Q(data_4[27]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[28] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__2_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[28] ),
        .Q(data_4[28]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[29] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__2_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[29] ),
        .Q(data_4[29]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[2] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__2_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[2] ),
        .Q(data_4[2]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[30] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__2_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[30] ),
        .Q(data_4[30]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[31] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__2_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[31] ),
        .Q(data_4[31]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[3] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__2_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[3] ),
        .Q(data_4[3]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[4] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__2_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[4] ),
        .Q(data_4[4]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[5] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__2_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[5] ),
        .Q(data_4[5]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[6] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__2_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[6] ),
        .Q(data_4[6]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[7] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__2_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[7] ),
        .Q(data_4[7]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[8] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__2_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[8] ),
        .Q(data_4[8]));
  FDCE #(
    .INIT(1'b0)) 
    \DataOut_reg[9] 
       (.C(clk),
        .CE(\DataOut[31]_i_1__2_n_0 ),
        .CLR(reset_n),
        .D(\r_Counter_reg_n_0_[9] ),
        .Q(data_4[9]));
  LUT6 #(
    .INIT(64'hAAABAAAAAAAAAAAA)) 
    \FSM_sequential_mainState[0]_i_1__0 
       (.I0(\FSM_sequential_mainState[0]_i_2__0_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .I5(\FSM_sequential_mainState[0]_i_3__2_n_0 ),
        .O(nextState[0]));
  LUT6 #(
    .INIT(64'hBBBB00F000000000)) 
    \FSM_sequential_mainState[0]_i_2__0 
       (.I0(triggReg[2]),
        .I1(\triggReg_reg_n_0_[2] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(\FSM_sequential_mainState_reg[0]_0 ),
        .I5(r_Counter),
        .O(\FSM_sequential_mainState[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \FSM_sequential_mainState[0]_i_3__2 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[6]),
        .I3(sel0[7]),
        .I4(\FSM_sequential_mainState_reg[0]_0 ),
        .I5(r_Counter),
        .O(\FSM_sequential_mainState[0]_i_3__2_n_0 ));
  LUT4 #(
    .INIT(16'hBFF0)) 
    \FSM_sequential_mainState[1]_inv_i_1__2 
       (.I0(triggReg[2]),
        .I1(\triggReg_reg_n_0_[2] ),
        .I2(\FSM_sequential_mainState_reg[0]_0 ),
        .I3(r_Counter),
        .O(nextState[1]));
  (* FSM_ENCODED_STATES = "C_IDLE:00,C_COUNTING:01,C_WAIT:10,C_SENDING:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_mainState_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_n),
        .D(nextState[0]),
        .Q(\FSM_sequential_mainState_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "C_IDLE:00,C_COUNTING:01,C_WAIT:10,C_SENDING:11" *) 
  (* inverted = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_sequential_mainState_reg[1]_inv 
       (.C(clk),
        .CE(1'b1),
        .D(nextState[1]),
        .PRE(reset_n),
        .Q(r_Counter));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \dataOut[0]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[10]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_4[2]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[11]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_4[3]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[12]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_4[4]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[13]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_4[5]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[14]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_4[6]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[15]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_4[7]),
        .O(D[8]));
  (* \PinAttr:I4:HOLD_DETOUR  = "158" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[16]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_4[8]),
        .O(D[9]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[17]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_4[9]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[18]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_4[10]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[19]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_4[11]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[20]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_4[12]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[21]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_4[13]),
        .O(D[14]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[22]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_4[14]),
        .O(D[15]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[23]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_4[15]),
        .O(D[16]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[24]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_4[16]),
        .O(D[17]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[25]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_4[17]),
        .O(D[18]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[26]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_4[18]),
        .O(D[19]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[27]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_4[19]),
        .O(D[20]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[28]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_4[20]),
        .O(D[21]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[29]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_4[21]),
        .O(D[22]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[30]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_4[22]),
        .O(D[23]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[31]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_4[23]),
        .O(D[24]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[32]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_4[24]),
        .O(D[25]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[33]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_4[25]),
        .O(D[26]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[34]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_4[26]),
        .O(D[27]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[35]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_4[27]),
        .O(D[28]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[36]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_4[28]),
        .O(D[29]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[37]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_4[29]),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[38]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_4[30]),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[39]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_4[31]),
        .O(D[32]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[8]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_4[0]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \dataOut[9]_i_1 
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(data_4[1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    hasPulsed_i_1
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .O(valid_reg_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry
       (.CI(1'b0),
        .CO({r_Counter0_carry_n_0,NLW_r_Counter0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(Q),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_Counter0[3:0]),
        .S({\r_Counter_reg_n_0_[4] ,\r_Counter_reg_n_0_[3] ,\r_Counter_reg_n_0_[2] ,\r_Counter_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__0
       (.CI(r_Counter0_carry_n_0),
        .CO({r_Counter0_carry__0_n_0,NLW_r_Counter0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_Counter0[7:4]),
        .S({\r_Counter_reg_n_0_[8] ,\r_Counter_reg_n_0_[7] ,\r_Counter_reg_n_0_[6] ,\r_Counter_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__1
       (.CI(r_Counter0_carry__0_n_0),
        .CO({r_Counter0_carry__1_n_0,NLW_r_Counter0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_Counter0[11:8]),
        .S({\r_Counter_reg_n_0_[12] ,\r_Counter_reg_n_0_[11] ,\r_Counter_reg_n_0_[10] ,\r_Counter_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__2
       (.CI(r_Counter0_carry__1_n_0),
        .CO({r_Counter0_carry__2_n_0,NLW_r_Counter0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_Counter0[15:12]),
        .S({\r_Counter_reg_n_0_[16] ,\r_Counter_reg_n_0_[15] ,\r_Counter_reg_n_0_[14] ,\r_Counter_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__3
       (.CI(r_Counter0_carry__2_n_0),
        .CO({r_Counter0_carry__3_n_0,NLW_r_Counter0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_Counter0[19:16]),
        .S({\r_Counter_reg_n_0_[20] ,\r_Counter_reg_n_0_[19] ,\r_Counter_reg_n_0_[18] ,\r_Counter_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__4
       (.CI(r_Counter0_carry__3_n_0),
        .CO({r_Counter0_carry__4_n_0,NLW_r_Counter0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_Counter0[23:20]),
        .S({\r_Counter_reg_n_0_[24] ,\r_Counter_reg_n_0_[23] ,\r_Counter_reg_n_0_[22] ,\r_Counter_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__5
       (.CI(r_Counter0_carry__4_n_0),
        .CO({r_Counter0_carry__5_n_0,NLW_r_Counter0_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r_Counter0[27:24]),
        .S({\r_Counter_reg_n_0_[28] ,\r_Counter_reg_n_0_[27] ,\r_Counter_reg_n_0_[26] ,\r_Counter_reg_n_0_[25] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_Counter0_carry__6
       (.CI(r_Counter0_carry__5_n_0),
        .CO(NLW_r_Counter0_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_r_Counter0_carry__6_O_UNCONNECTED[3],r_Counter0[30:28]}),
        .S({1'b0,\r_Counter_reg_n_0_[31] ,\r_Counter_reg_n_0_[30] ,\r_Counter_reg_n_0_[29] }));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[0] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [0]),
        .Q(Q));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[10] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [10]),
        .Q(\r_Counter_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[11] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [11]),
        .Q(\r_Counter_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[12] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [12]),
        .Q(\r_Counter_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[13] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [13]),
        .Q(\r_Counter_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[14] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [14]),
        .Q(\r_Counter_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[15] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [15]),
        .Q(\r_Counter_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[16] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [16]),
        .Q(\r_Counter_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[17] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [17]),
        .Q(\r_Counter_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[18] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [18]),
        .Q(\r_Counter_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[19] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [19]),
        .Q(\r_Counter_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[1] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [1]),
        .Q(\r_Counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[20] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [20]),
        .Q(\r_Counter_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[21] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [21]),
        .Q(\r_Counter_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[22] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [22]),
        .Q(\r_Counter_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[23] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [23]),
        .Q(\r_Counter_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[24] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [24]),
        .Q(\r_Counter_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[25] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [25]),
        .Q(\r_Counter_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[26] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [26]),
        .Q(\r_Counter_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[27] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [27]),
        .Q(\r_Counter_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[28] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [28]),
        .Q(\r_Counter_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[29] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [29]),
        .Q(\r_Counter_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[2] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [2]),
        .Q(\r_Counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[30] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [30]),
        .Q(\r_Counter_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[31] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [31]),
        .Q(\r_Counter_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[3] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [3]),
        .Q(\r_Counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[4] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [4]),
        .Q(\r_Counter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[5] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [5]),
        .Q(\r_Counter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[6] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [6]),
        .Q(\r_Counter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[7] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [7]),
        .Q(\r_Counter_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[8] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [8]),
        .Q(\r_Counter_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_Counter_reg[9] 
       (.C(clk),
        .CE(r_Counter),
        .CLR(reset_n),
        .D(\r_Counter_reg[31]_0 [9]),
        .Q(\r_Counter_reg_n_0_[9] ));
  (* \PinAttr:I2:HOLD_DETOUR  = "179" *) 
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \r_delay_counter[0]_i_1__2 
       (.I0(\FSM_sequential_mainState_reg[0]_0 ),
        .I1(r_Counter),
        .I2(sel0[0]),
        .O(r_delay_counter0_in[0]));
  (* \PinAttr:I3:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT4 #(
    .INIT(16'h0110)) 
    \r_delay_counter[1]_i_1__2 
       (.I0(r_Counter),
        .I1(\FSM_sequential_mainState_reg[0]_0 ),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(r_delay_counter0_in[1]));
  (* \PinAttr:I0:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT5 #(
    .INIT(32'h00070008)) 
    \r_delay_counter[2]_i_1__2 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(\FSM_sequential_mainState_reg[0]_0 ),
        .I3(r_Counter),
        .I4(sel0[2]),
        .O(r_delay_counter0_in[2]));
  LUT6 #(
    .INIT(64'h0000007F00000080)) 
    \r_delay_counter[3]_i_1__2 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(\FSM_sequential_mainState_reg[0]_0 ),
        .I4(r_Counter),
        .I5(sel0[3]),
        .O(r_delay_counter0_in[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \r_delay_counter[4]_i_1__2 
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(\DataOut[31]_i_1__2_n_0 ),
        .I5(sel0[4]),
        .O(r_delay_counter0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT4 #(
    .INIT(16'h0102)) 
    \r_delay_counter[5]_i_1__2 
       (.I0(\r_delay_counter[5]_i_2__2_n_0 ),
        .I1(\FSM_sequential_mainState_reg[0]_0 ),
        .I2(r_Counter),
        .I3(sel0[5]),
        .O(r_delay_counter0_in[5]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_delay_counter[5]_i_2__2 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[3]),
        .O(\r_delay_counter[5]_i_2__2_n_0 ));
  (* \PinAttr:I3:HOLD_DETOUR  = "195" *) 
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT4 #(
    .INIT(16'h0102)) 
    \r_delay_counter[6]_i_1__2 
       (.I0(\r_delay_counter[7]_i_3__2_n_0 ),
        .I1(\FSM_sequential_mainState_reg[0]_0 ),
        .I2(r_Counter),
        .I3(sel0[6]),
        .O(r_delay_counter0_in[6]));
  LUT2 #(
    .INIT(4'h7)) 
    \r_delay_counter[7]_i_1__2 
       (.I0(r_Counter),
        .I1(\FSM_sequential_mainState_reg[0]_0 ),
        .O(r_delay_counter));
  (* \PinAttr:I0:HOLD_DETOUR  = "195" *) 
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT5 #(
    .INIT(32'h00070008)) 
    \r_delay_counter[7]_i_2__2 
       (.I0(sel0[6]),
        .I1(\r_delay_counter[7]_i_3__2_n_0 ),
        .I2(\FSM_sequential_mainState_reg[0]_0 ),
        .I3(r_Counter),
        .I4(sel0[7]),
        .O(r_delay_counter0_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r_delay_counter[7]_i_3__2 
       (.I0(sel0[5]),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(sel0[4]),
        .O(\r_delay_counter[7]_i_3__2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_delay_counter_reg[0] 
       (.C(clk),
        .CE(r_delay_counter),
        .CLR(reset_n),
        .D(r_delay_counter0_in[0]),
        .Q(sel0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_delay_counter_reg[1] 
       (.C(clk),
        .CE(r_delay_counter),
        .CLR(reset_n),
        .D(r_delay_counter0_in[1]),
        .Q(sel0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_delay_counter_reg[2] 
       (.C(clk),
        .CE(r_delay_counter),
        .CLR(reset_n),
        .D(r_delay_counter0_in[2]),
        .Q(sel0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_delay_counter_reg[3] 
       (.C(clk),
        .CE(r_delay_counter),
        .CLR(reset_n),
        .D(r_delay_counter0_in[3]),
        .Q(sel0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \r_delay_counter_reg[4] 
       (.C(clk),
        .CE(r_delay_counter),
        .CLR(reset_n),
        .D(r_delay_counter0_in[4]),
        .Q(sel0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \r_delay_counter_reg[5] 
       (.C(clk),
        .CE(r_delay_counter),
        .CLR(reset_n),
        .D(r_delay_counter0_in[5]),
        .Q(sel0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \r_delay_counter_reg[6] 
       (.C(clk),
        .CE(r_delay_counter),
        .CLR(reset_n),
        .D(r_delay_counter0_in[6]),
        .Q(sel0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \r_delay_counter_reg[7] 
       (.C(clk),
        .CE(r_delay_counter),
        .CLR(reset_n),
        .D(r_delay_counter0_in[7]),
        .Q(sel0[7]));
  FDPE #(
    .INIT(1'b0)) 
    \triggReg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\triggReg_reg[0]_0 ),
        .PRE(reset_n),
        .Q(triggReg[1]));
  FDPE #(
    .INIT(1'b0)) 
    \triggReg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(triggReg[1]),
        .PRE(reset_n),
        .Q(triggReg[2]));
  FDPE #(
    .INIT(1'b0)) 
    \triggReg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(triggReg[2]),
        .PRE(reset_n),
        .Q(\triggReg_reg_n_0_[2] ));
  LUT4 #(
    .INIT(16'h4744)) 
    valid_i_1__2
       (.I0(r_Counter),
        .I1(\FSM_sequential_mainState_reg[0]_0 ),
        .I2(done),
        .I3(l_valid_4),
        .O(valid_i_1__2_n_0));
  LUT5 #(
    .INIT(32'h00008000)) 
    valid_i_1__3
       (.I0(l_valid_4),
        .I1(l_valid_1),
        .I2(l_valid_2),
        .I3(l_valid_3),
        .I4(hasPulsed),
        .O(valid_reg_1));
  FDCE #(
    .INIT(1'b0)) 
    valid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_n),
        .D(valid_i_1__2_n_0),
        .Q(l_valid_4));
endmodule

module DataCombiner
   (valid,
    hasPulsed,
    Q,
    valid_reg_0,
    clk_IBUF_BUFG,
    reset_led_OBUF,
    hasPulsed_reg_0,
    D);
  output valid;
  output hasPulsed;
  output [128:0]Q;
  input valid_reg_0;
  input clk_IBUF_BUFG;
  input reset_led_OBUF;
  input hasPulsed_reg_0;
  input [128:0]D;

  wire [128:0]D;
  wire [128:0]Q;
  wire clk_IBUF_BUFG;
  wire hasPulsed;
  wire hasPulsed_reg_0;
  wire reset_led_OBUF;
  wire valid;
  wire valid_reg_0;

  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[100] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[77]),
        .Q(Q[77]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[101] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[78]),
        .Q(Q[78]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[102] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[79]),
        .Q(Q[79]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[103] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[80]),
        .Q(Q[80]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[104] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[81]),
        .Q(Q[81]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[105] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[82]),
        .Q(Q[82]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[106] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[83]),
        .Q(Q[83]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[107] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[84]),
        .Q(Q[84]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[108] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[85]),
        .Q(Q[85]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[109] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[86]),
        .Q(Q[86]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[110] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[87]),
        .Q(Q[87]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[111] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[88]),
        .Q(Q[88]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[112] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[89]),
        .Q(Q[89]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[113] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[90]),
        .Q(Q[90]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[114] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[91]),
        .Q(Q[91]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[115] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[92]),
        .Q(Q[92]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[116] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[93]),
        .Q(Q[93]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[117] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[94]),
        .Q(Q[94]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[118] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[95]),
        .Q(Q[95]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[119] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[96]),
        .Q(Q[96]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[128] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[97]),
        .Q(Q[97]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[129] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[98]),
        .Q(Q[98]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[130] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[99]),
        .Q(Q[99]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[131] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[100]),
        .Q(Q[100]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[132] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[101]),
        .Q(Q[101]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[133] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[102]),
        .Q(Q[102]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[134] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[103]),
        .Q(Q[103]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[135] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[104]),
        .Q(Q[104]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[136] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[105]),
        .Q(Q[105]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[137] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[106]),
        .Q(Q[106]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[138] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[107]),
        .Q(Q[107]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[139] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[108]),
        .Q(Q[108]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[140] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[109]),
        .Q(Q[109]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[141] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[110]),
        .Q(Q[110]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[142] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[111]),
        .Q(Q[111]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[143] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[112]),
        .Q(Q[112]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[144] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[113]),
        .Q(Q[113]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[145] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[114]),
        .Q(Q[114]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[146] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[115]),
        .Q(Q[115]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[147] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[116]),
        .Q(Q[116]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[148] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[117]),
        .Q(Q[117]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[149] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[118]),
        .Q(Q[118]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[150] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[119]),
        .Q(Q[119]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[151] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[120]),
        .Q(Q[120]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[152] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[121]),
        .Q(Q[121]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[153] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[122]),
        .Q(Q[122]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[154] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[123]),
        .Q(Q[123]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[155] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[124]),
        .Q(Q[124]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[156] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[125]),
        .Q(Q[125]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[157] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[126]),
        .Q(Q[126]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[158] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[127]),
        .Q(Q[127]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[159] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[128]),
        .Q(Q[128]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[9]),
        .Q(Q[9]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[16]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[17]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[18]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[19]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[20]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[21]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[22]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[23]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[24]),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[25]),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[26]),
        .Q(Q[26]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[27]),
        .Q(Q[27]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[28]),
        .Q(Q[28]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[29]),
        .Q(Q[29]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[30]),
        .Q(Q[30]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[31]),
        .Q(Q[31]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[32]),
        .Q(Q[32]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[33]),
        .Q(Q[33]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[34]),
        .Q(Q[34]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[35]),
        .Q(Q[35]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[36]),
        .Q(Q[36]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[37]),
        .Q(Q[37]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[38]),
        .Q(Q[38]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[39]),
        .Q(Q[39]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[40]),
        .Q(Q[40]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[41]),
        .Q(Q[41]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[42]),
        .Q(Q[42]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[43]),
        .Q(Q[43]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[44]),
        .Q(Q[44]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[45]),
        .Q(Q[45]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[46]),
        .Q(Q[46]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[47]),
        .Q(Q[47]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[48]),
        .Q(Q[48]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[64] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[49]),
        .Q(Q[49]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[65] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[50]),
        .Q(Q[50]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[66] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[51]),
        .Q(Q[51]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[67] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[52]),
        .Q(Q[52]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[68] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[53]),
        .Q(Q[53]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[69] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[54]),
        .Q(Q[54]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[70] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[55]),
        .Q(Q[55]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[71] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[56]),
        .Q(Q[56]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[72] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[57]),
        .Q(Q[57]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[73] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[58]),
        .Q(Q[58]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[74] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[59]),
        .Q(Q[59]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[75] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[60]),
        .Q(Q[60]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[76] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[61]),
        .Q(Q[61]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[77] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[62]),
        .Q(Q[62]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[78] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[63]),
        .Q(Q[63]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[79] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[64]),
        .Q(Q[64]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[88] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[65]),
        .Q(Q[65]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[89] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[66]),
        .Q(Q[66]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[90] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[67]),
        .Q(Q[67]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[91] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[68]),
        .Q(Q[68]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[92] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[69]),
        .Q(Q[69]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[93] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[70]),
        .Q(Q[70]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[94] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[71]),
        .Q(Q[71]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[95] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[72]),
        .Q(Q[72]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[96] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[73]),
        .Q(Q[73]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[97] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[74]),
        .Q(Q[74]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[98] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[75]),
        .Q(Q[75]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[99] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[76]),
        .Q(Q[76]));
  FDCE #(
    .INIT(1'b0)) 
    \dataOut_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    hasPulsed_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(hasPulsed_reg_0),
        .Q(hasPulsed));
  FDCE #(
    .INIT(1'b0)) 
    valid_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(valid_reg_0),
        .Q(valid));
endmodule

module UARTBuffer
   (l_TX_DV,
    done,
    E,
    \TX_Byte_reg[7]_0 ,
    clk_IBUF_BUFG,
    reset_led_OBUF,
    valid,
    l_TX_done,
    l_TX_active,
    Q,
    dataOut);
  output l_TX_DV;
  output done;
  output [0:0]E;
  output [7:0]\TX_Byte_reg[7]_0 ;
  input clk_IBUF_BUFG;
  input reset_led_OBUF;
  input valid;
  input l_TX_done;
  input l_TX_active;
  input [0:0]Q;
  input [128:0]dataOut;

  wire [0:0]E;
  wire [0:0]Q;
  wire \TX_Byte[0]_i_1_n_0 ;
  wire \TX_Byte[0]_i_2_n_0 ;
  wire \TX_Byte[0]_i_3_n_0 ;
  wire \TX_Byte[0]_i_4_n_0 ;
  wire \TX_Byte[0]_i_5_n_0 ;
  wire \TX_Byte[0]_i_6_n_0 ;
  wire \TX_Byte[0]_i_7_n_0 ;
  wire \TX_Byte[0]_i_8_n_0 ;
  wire \TX_Byte[0]_i_9_n_0 ;
  wire \TX_Byte[1]_i_1_n_0 ;
  wire \TX_Byte[1]_i_2_n_0 ;
  wire \TX_Byte[1]_i_3_n_0 ;
  wire \TX_Byte[1]_i_4_n_0 ;
  wire \TX_Byte[1]_i_5_n_0 ;
  wire \TX_Byte[1]_i_6_n_0 ;
  wire \TX_Byte[1]_i_7_n_0 ;
  wire \TX_Byte[1]_i_8_n_0 ;
  wire \TX_Byte[1]_i_9_n_0 ;
  wire \TX_Byte[2]_i_1_n_0 ;
  wire \TX_Byte[2]_i_2_n_0 ;
  wire \TX_Byte[2]_i_3_n_0 ;
  wire \TX_Byte[2]_i_4_n_0 ;
  wire \TX_Byte[2]_i_5_n_0 ;
  wire \TX_Byte[2]_i_6_n_0 ;
  wire \TX_Byte[2]_i_7_n_0 ;
  wire \TX_Byte[2]_i_8_n_0 ;
  wire \TX_Byte[2]_i_9_n_0 ;
  wire \TX_Byte[3]_i_1_n_0 ;
  wire \TX_Byte[3]_i_2_n_0 ;
  wire \TX_Byte[3]_i_3_n_0 ;
  wire \TX_Byte[3]_i_4_n_0 ;
  wire \TX_Byte[3]_i_5_n_0 ;
  wire \TX_Byte[3]_i_6_n_0 ;
  wire \TX_Byte[3]_i_7_n_0 ;
  wire \TX_Byte[3]_i_8_n_0 ;
  wire \TX_Byte[3]_i_9_n_0 ;
  wire \TX_Byte[4]_i_1_n_0 ;
  wire \TX_Byte[4]_i_2_n_0 ;
  wire \TX_Byte[4]_i_3_n_0 ;
  wire \TX_Byte[4]_i_4_n_0 ;
  wire \TX_Byte[4]_i_5_n_0 ;
  wire \TX_Byte[4]_i_6_n_0 ;
  wire \TX_Byte[4]_i_7_n_0 ;
  wire \TX_Byte[4]_i_8_n_0 ;
  wire \TX_Byte[4]_i_9_n_0 ;
  wire \TX_Byte[5]_i_1_n_0 ;
  wire \TX_Byte[5]_i_2_n_0 ;
  wire \TX_Byte[5]_i_3_n_0 ;
  wire \TX_Byte[5]_i_4_n_0 ;
  wire \TX_Byte[5]_i_5_n_0 ;
  wire \TX_Byte[5]_i_6_n_0 ;
  wire \TX_Byte[5]_i_7_n_0 ;
  wire \TX_Byte[5]_i_8_n_0 ;
  wire \TX_Byte[5]_i_9_n_0 ;
  wire \TX_Byte[6]_i_1_n_0 ;
  wire \TX_Byte[6]_i_2_n_0 ;
  wire \TX_Byte[6]_i_3_n_0 ;
  wire \TX_Byte[6]_i_4_n_0 ;
  wire \TX_Byte[6]_i_5_n_0 ;
  wire \TX_Byte[6]_i_6_n_0 ;
  wire \TX_Byte[6]_i_7_n_0 ;
  wire \TX_Byte[6]_i_8_n_0 ;
  wire \TX_Byte[6]_i_9_n_0 ;
  wire \TX_Byte[7]_i_10_n_0 ;
  wire \TX_Byte[7]_i_11_n_0 ;
  wire \TX_Byte[7]_i_12_n_0 ;
  wire \TX_Byte[7]_i_13_n_0 ;
  wire \TX_Byte[7]_i_1_n_0 ;
  wire \TX_Byte[7]_i_2_n_0 ;
  wire \TX_Byte[7]_i_3_n_0 ;
  wire \TX_Byte[7]_i_4_n_0 ;
  wire \TX_Byte[7]_i_5_n_0 ;
  wire \TX_Byte[7]_i_6_n_0 ;
  wire \TX_Byte[7]_i_7_n_0 ;
  wire \TX_Byte[7]_i_8_n_0 ;
  wire \TX_Byte[7]_i_9_n_0 ;
  wire [7:0]\TX_Byte_reg[7]_0 ;
  wire \byteCounter[5]_i_2_n_0 ;
  wire \byteCounter[7]_i_1_n_0 ;
  wire \byteCounter[7]_i_3_n_0 ;
  wire [7:0]byteCounter_reg;
  wire clk_IBUF_BUFG;
  wire [128:0]dataOut;
  wire dataReady;
  wire dataReady_i_1_n_0;
  wire done;
  wire done_i_1_n_0;
  wire l_TX_DV;
  wire l_TX_active;
  wire l_TX_done;
  wire lastValid;
  wire mainState;
  wire mainState_i_2_n_0;
  wire mainState_i_3_n_0;
  wire nextState;
  wire [7:0]p_0_in;
  wire [159:0]p_1_in;
  wire r_TX_DV_i_1_n_0;
  wire [1:0]r_TxActiveReg;
  wire [1:0]r_TxDoneReg;
  wire [159:0]r_dataFrame;
  wire \r_dataFrame[159]_i_1_n_0 ;
  wire reset_led_OBUF;
  wire valid;

  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \TX_Byte[0]_i_1 
       (.I0(\TX_Byte[0]_i_2_n_0 ),
        .I1(\TX_Byte[0]_i_3_n_0 ),
        .I2(\TX_Byte[0]_i_4_n_0 ),
        .I3(\TX_Byte[0]_i_5_n_0 ),
        .I4(mainState),
        .I5(dataReady),
        .O(\TX_Byte[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA888888A8A88888)) 
    \TX_Byte[0]_i_2 
       (.I0(\TX_Byte[7]_i_7_n_0 ),
        .I1(\TX_Byte[0]_i_6_n_0 ),
        .I2(r_dataFrame[104]),
        .I3(r_dataFrame[0]),
        .I4(byteCounter_reg[2]),
        .I5(byteCounter_reg[3]),
        .O(\TX_Byte[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8AA8888888888)) 
    \TX_Byte[0]_i_3 
       (.I0(\TX_Byte[7]_i_9_n_0 ),
        .I1(\TX_Byte[0]_i_7_n_0 ),
        .I2(r_dataFrame[56]),
        .I3(r_dataFrame[0]),
        .I4(byteCounter_reg[3]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA88800800)) 
    \TX_Byte[0]_i_4 
       (.I0(\byteCounter[5]_i_2_n_0 ),
        .I1(byteCounter_reg[2]),
        .I2(byteCounter_reg[3]),
        .I3(r_dataFrame[96]),
        .I4(r_dataFrame[32]),
        .I5(\TX_Byte[0]_i_8_n_0 ),
        .O(\TX_Byte[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA88800800)) 
    \TX_Byte[0]_i_5 
       (.I0(\TX_Byte[7]_i_12_n_0 ),
        .I1(byteCounter_reg[2]),
        .I2(byteCounter_reg[3]),
        .I3(r_dataFrame[112]),
        .I4(r_dataFrame[48]),
        .I5(\TX_Byte[0]_i_9_n_0 ),
        .O(\TX_Byte[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    \TX_Byte[0]_i_6 
       (.I0(r_dataFrame[72]),
        .I1(byteCounter_reg[3]),
        .I2(r_dataFrame[136]),
        .I3(r_dataFrame[8]),
        .I4(byteCounter_reg[4]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    \TX_Byte[0]_i_7 
       (.I0(r_dataFrame[88]),
        .I1(byteCounter_reg[3]),
        .I2(r_dataFrame[152]),
        .I3(r_dataFrame[24]),
        .I4(byteCounter_reg[4]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    \TX_Byte[0]_i_8 
       (.I0(r_dataFrame[64]),
        .I1(byteCounter_reg[3]),
        .I2(r_dataFrame[128]),
        .I3(r_dataFrame[0]),
        .I4(byteCounter_reg[4]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEBA5410)) 
    \TX_Byte[0]_i_9 
       (.I0(byteCounter_reg[3]),
        .I1(byteCounter_reg[4]),
        .I2(r_dataFrame[144]),
        .I3(r_dataFrame[16]),
        .I4(r_dataFrame[0]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \TX_Byte[1]_i_1 
       (.I0(\TX_Byte[1]_i_2_n_0 ),
        .I1(\TX_Byte[1]_i_3_n_0 ),
        .I2(\TX_Byte[1]_i_4_n_0 ),
        .I3(\TX_Byte[1]_i_5_n_0 ),
        .I4(mainState),
        .I5(dataReady),
        .O(\TX_Byte[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA888888A8A88888)) 
    \TX_Byte[1]_i_2 
       (.I0(\TX_Byte[7]_i_7_n_0 ),
        .I1(\TX_Byte[1]_i_6_n_0 ),
        .I2(r_dataFrame[105]),
        .I3(r_dataFrame[0]),
        .I4(byteCounter_reg[2]),
        .I5(byteCounter_reg[3]),
        .O(\TX_Byte[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8AA8888888888)) 
    \TX_Byte[1]_i_3 
       (.I0(\TX_Byte[7]_i_9_n_0 ),
        .I1(\TX_Byte[1]_i_7_n_0 ),
        .I2(r_dataFrame[57]),
        .I3(r_dataFrame[0]),
        .I4(byteCounter_reg[3]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA88800800)) 
    \TX_Byte[1]_i_4 
       (.I0(\byteCounter[5]_i_2_n_0 ),
        .I1(byteCounter_reg[2]),
        .I2(byteCounter_reg[3]),
        .I3(r_dataFrame[97]),
        .I4(r_dataFrame[33]),
        .I5(\TX_Byte[1]_i_8_n_0 ),
        .O(\TX_Byte[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA88800800)) 
    \TX_Byte[1]_i_5 
       (.I0(\TX_Byte[7]_i_12_n_0 ),
        .I1(byteCounter_reg[2]),
        .I2(byteCounter_reg[3]),
        .I3(r_dataFrame[113]),
        .I4(r_dataFrame[49]),
        .I5(\TX_Byte[1]_i_9_n_0 ),
        .O(\TX_Byte[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    \TX_Byte[1]_i_6 
       (.I0(r_dataFrame[73]),
        .I1(byteCounter_reg[3]),
        .I2(r_dataFrame[137]),
        .I3(r_dataFrame[9]),
        .I4(byteCounter_reg[4]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    \TX_Byte[1]_i_7 
       (.I0(r_dataFrame[89]),
        .I1(byteCounter_reg[3]),
        .I2(r_dataFrame[153]),
        .I3(r_dataFrame[25]),
        .I4(byteCounter_reg[4]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    \TX_Byte[1]_i_8 
       (.I0(r_dataFrame[65]),
        .I1(byteCounter_reg[3]),
        .I2(r_dataFrame[129]),
        .I3(r_dataFrame[0]),
        .I4(byteCounter_reg[4]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEBA5410)) 
    \TX_Byte[1]_i_9 
       (.I0(byteCounter_reg[3]),
        .I1(byteCounter_reg[4]),
        .I2(r_dataFrame[145]),
        .I3(r_dataFrame[17]),
        .I4(r_dataFrame[0]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \TX_Byte[2]_i_1 
       (.I0(\TX_Byte[2]_i_2_n_0 ),
        .I1(\TX_Byte[2]_i_3_n_0 ),
        .I2(\TX_Byte[2]_i_4_n_0 ),
        .I3(\TX_Byte[2]_i_5_n_0 ),
        .I4(mainState),
        .I5(dataReady),
        .O(\TX_Byte[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA888888A8A88888)) 
    \TX_Byte[2]_i_2 
       (.I0(\TX_Byte[7]_i_7_n_0 ),
        .I1(\TX_Byte[2]_i_6_n_0 ),
        .I2(r_dataFrame[106]),
        .I3(r_dataFrame[0]),
        .I4(byteCounter_reg[2]),
        .I5(byteCounter_reg[3]),
        .O(\TX_Byte[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8AA8888888888)) 
    \TX_Byte[2]_i_3 
       (.I0(\TX_Byte[7]_i_9_n_0 ),
        .I1(\TX_Byte[2]_i_7_n_0 ),
        .I2(r_dataFrame[58]),
        .I3(r_dataFrame[0]),
        .I4(byteCounter_reg[3]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA88800800)) 
    \TX_Byte[2]_i_4 
       (.I0(\byteCounter[5]_i_2_n_0 ),
        .I1(byteCounter_reg[2]),
        .I2(byteCounter_reg[3]),
        .I3(r_dataFrame[98]),
        .I4(r_dataFrame[34]),
        .I5(\TX_Byte[2]_i_8_n_0 ),
        .O(\TX_Byte[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA88800800)) 
    \TX_Byte[2]_i_5 
       (.I0(\TX_Byte[7]_i_12_n_0 ),
        .I1(byteCounter_reg[2]),
        .I2(byteCounter_reg[3]),
        .I3(r_dataFrame[114]),
        .I4(r_dataFrame[50]),
        .I5(\TX_Byte[2]_i_9_n_0 ),
        .O(\TX_Byte[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    \TX_Byte[2]_i_6 
       (.I0(r_dataFrame[74]),
        .I1(byteCounter_reg[3]),
        .I2(r_dataFrame[138]),
        .I3(r_dataFrame[10]),
        .I4(byteCounter_reg[4]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    \TX_Byte[2]_i_7 
       (.I0(r_dataFrame[90]),
        .I1(byteCounter_reg[3]),
        .I2(r_dataFrame[154]),
        .I3(r_dataFrame[26]),
        .I4(byteCounter_reg[4]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    \TX_Byte[2]_i_8 
       (.I0(r_dataFrame[66]),
        .I1(byteCounter_reg[3]),
        .I2(r_dataFrame[130]),
        .I3(r_dataFrame[0]),
        .I4(byteCounter_reg[4]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEBA5410)) 
    \TX_Byte[2]_i_9 
       (.I0(byteCounter_reg[3]),
        .I1(byteCounter_reg[4]),
        .I2(r_dataFrame[146]),
        .I3(r_dataFrame[18]),
        .I4(r_dataFrame[0]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \TX_Byte[3]_i_1 
       (.I0(\TX_Byte[3]_i_2_n_0 ),
        .I1(\TX_Byte[3]_i_3_n_0 ),
        .I2(\TX_Byte[3]_i_4_n_0 ),
        .I3(\TX_Byte[3]_i_5_n_0 ),
        .I4(mainState),
        .I5(dataReady),
        .O(\TX_Byte[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA888888A8A88888)) 
    \TX_Byte[3]_i_2 
       (.I0(\TX_Byte[7]_i_7_n_0 ),
        .I1(\TX_Byte[3]_i_6_n_0 ),
        .I2(r_dataFrame[107]),
        .I3(r_dataFrame[0]),
        .I4(byteCounter_reg[2]),
        .I5(byteCounter_reg[3]),
        .O(\TX_Byte[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8AA8888888888)) 
    \TX_Byte[3]_i_3 
       (.I0(\TX_Byte[7]_i_9_n_0 ),
        .I1(\TX_Byte[3]_i_7_n_0 ),
        .I2(r_dataFrame[59]),
        .I3(r_dataFrame[0]),
        .I4(byteCounter_reg[3]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA88800800)) 
    \TX_Byte[3]_i_4 
       (.I0(\byteCounter[5]_i_2_n_0 ),
        .I1(byteCounter_reg[2]),
        .I2(byteCounter_reg[3]),
        .I3(r_dataFrame[99]),
        .I4(r_dataFrame[35]),
        .I5(\TX_Byte[3]_i_8_n_0 ),
        .O(\TX_Byte[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA88800800)) 
    \TX_Byte[3]_i_5 
       (.I0(\TX_Byte[7]_i_12_n_0 ),
        .I1(byteCounter_reg[2]),
        .I2(byteCounter_reg[3]),
        .I3(r_dataFrame[115]),
        .I4(r_dataFrame[51]),
        .I5(\TX_Byte[3]_i_9_n_0 ),
        .O(\TX_Byte[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    \TX_Byte[3]_i_6 
       (.I0(r_dataFrame[75]),
        .I1(byteCounter_reg[3]),
        .I2(r_dataFrame[139]),
        .I3(r_dataFrame[11]),
        .I4(byteCounter_reg[4]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    \TX_Byte[3]_i_7 
       (.I0(r_dataFrame[91]),
        .I1(byteCounter_reg[3]),
        .I2(r_dataFrame[155]),
        .I3(r_dataFrame[27]),
        .I4(byteCounter_reg[4]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    \TX_Byte[3]_i_8 
       (.I0(r_dataFrame[67]),
        .I1(byteCounter_reg[3]),
        .I2(r_dataFrame[131]),
        .I3(r_dataFrame[0]),
        .I4(byteCounter_reg[4]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEBA5410)) 
    \TX_Byte[3]_i_9 
       (.I0(byteCounter_reg[3]),
        .I1(byteCounter_reg[4]),
        .I2(r_dataFrame[147]),
        .I3(r_dataFrame[19]),
        .I4(r_dataFrame[0]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \TX_Byte[4]_i_1 
       (.I0(\TX_Byte[4]_i_2_n_0 ),
        .I1(\TX_Byte[4]_i_3_n_0 ),
        .I2(\TX_Byte[4]_i_4_n_0 ),
        .I3(\TX_Byte[4]_i_5_n_0 ),
        .I4(mainState),
        .I5(dataReady),
        .O(\TX_Byte[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA888888A8A88888)) 
    \TX_Byte[4]_i_2 
       (.I0(\TX_Byte[7]_i_7_n_0 ),
        .I1(\TX_Byte[4]_i_6_n_0 ),
        .I2(r_dataFrame[108]),
        .I3(r_dataFrame[0]),
        .I4(byteCounter_reg[2]),
        .I5(byteCounter_reg[3]),
        .O(\TX_Byte[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8AA8888888888)) 
    \TX_Byte[4]_i_3 
       (.I0(\TX_Byte[7]_i_9_n_0 ),
        .I1(\TX_Byte[4]_i_7_n_0 ),
        .I2(r_dataFrame[60]),
        .I3(r_dataFrame[0]),
        .I4(byteCounter_reg[3]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA88800800)) 
    \TX_Byte[4]_i_4 
       (.I0(\byteCounter[5]_i_2_n_0 ),
        .I1(byteCounter_reg[2]),
        .I2(byteCounter_reg[3]),
        .I3(r_dataFrame[100]),
        .I4(r_dataFrame[36]),
        .I5(\TX_Byte[4]_i_8_n_0 ),
        .O(\TX_Byte[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA88800800)) 
    \TX_Byte[4]_i_5 
       (.I0(\TX_Byte[7]_i_12_n_0 ),
        .I1(byteCounter_reg[2]),
        .I2(byteCounter_reg[3]),
        .I3(r_dataFrame[116]),
        .I4(r_dataFrame[52]),
        .I5(\TX_Byte[4]_i_9_n_0 ),
        .O(\TX_Byte[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    \TX_Byte[4]_i_6 
       (.I0(r_dataFrame[76]),
        .I1(byteCounter_reg[3]),
        .I2(r_dataFrame[140]),
        .I3(r_dataFrame[12]),
        .I4(byteCounter_reg[4]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    \TX_Byte[4]_i_7 
       (.I0(r_dataFrame[92]),
        .I1(byteCounter_reg[3]),
        .I2(r_dataFrame[156]),
        .I3(r_dataFrame[28]),
        .I4(byteCounter_reg[4]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    \TX_Byte[4]_i_8 
       (.I0(r_dataFrame[68]),
        .I1(byteCounter_reg[3]),
        .I2(r_dataFrame[132]),
        .I3(r_dataFrame[0]),
        .I4(byteCounter_reg[4]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEBA5410)) 
    \TX_Byte[4]_i_9 
       (.I0(byteCounter_reg[3]),
        .I1(byteCounter_reg[4]),
        .I2(r_dataFrame[148]),
        .I3(r_dataFrame[20]),
        .I4(r_dataFrame[0]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \TX_Byte[5]_i_1 
       (.I0(\TX_Byte[5]_i_2_n_0 ),
        .I1(\TX_Byte[5]_i_3_n_0 ),
        .I2(\TX_Byte[5]_i_4_n_0 ),
        .I3(\TX_Byte[5]_i_5_n_0 ),
        .I4(mainState),
        .I5(dataReady),
        .O(\TX_Byte[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA888888A8A88888)) 
    \TX_Byte[5]_i_2 
       (.I0(\TX_Byte[7]_i_7_n_0 ),
        .I1(\TX_Byte[5]_i_6_n_0 ),
        .I2(r_dataFrame[109]),
        .I3(r_dataFrame[0]),
        .I4(byteCounter_reg[2]),
        .I5(byteCounter_reg[3]),
        .O(\TX_Byte[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8AA8888888888)) 
    \TX_Byte[5]_i_3 
       (.I0(\TX_Byte[7]_i_9_n_0 ),
        .I1(\TX_Byte[5]_i_7_n_0 ),
        .I2(r_dataFrame[61]),
        .I3(r_dataFrame[0]),
        .I4(byteCounter_reg[3]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA88800800)) 
    \TX_Byte[5]_i_4 
       (.I0(\byteCounter[5]_i_2_n_0 ),
        .I1(byteCounter_reg[2]),
        .I2(byteCounter_reg[3]),
        .I3(r_dataFrame[101]),
        .I4(r_dataFrame[37]),
        .I5(\TX_Byte[5]_i_8_n_0 ),
        .O(\TX_Byte[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA88800800)) 
    \TX_Byte[5]_i_5 
       (.I0(\TX_Byte[7]_i_12_n_0 ),
        .I1(byteCounter_reg[2]),
        .I2(byteCounter_reg[3]),
        .I3(r_dataFrame[117]),
        .I4(r_dataFrame[53]),
        .I5(\TX_Byte[5]_i_9_n_0 ),
        .O(\TX_Byte[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    \TX_Byte[5]_i_6 
       (.I0(r_dataFrame[77]),
        .I1(byteCounter_reg[3]),
        .I2(r_dataFrame[141]),
        .I3(r_dataFrame[13]),
        .I4(byteCounter_reg[4]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    \TX_Byte[5]_i_7 
       (.I0(r_dataFrame[93]),
        .I1(byteCounter_reg[3]),
        .I2(r_dataFrame[157]),
        .I3(r_dataFrame[29]),
        .I4(byteCounter_reg[4]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    \TX_Byte[5]_i_8 
       (.I0(r_dataFrame[69]),
        .I1(byteCounter_reg[3]),
        .I2(r_dataFrame[133]),
        .I3(r_dataFrame[0]),
        .I4(byteCounter_reg[4]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEBA5410)) 
    \TX_Byte[5]_i_9 
       (.I0(byteCounter_reg[3]),
        .I1(byteCounter_reg[4]),
        .I2(r_dataFrame[149]),
        .I3(r_dataFrame[21]),
        .I4(r_dataFrame[0]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \TX_Byte[6]_i_1 
       (.I0(\TX_Byte[6]_i_2_n_0 ),
        .I1(\TX_Byte[6]_i_3_n_0 ),
        .I2(\TX_Byte[6]_i_4_n_0 ),
        .I3(\TX_Byte[6]_i_5_n_0 ),
        .I4(mainState),
        .I5(dataReady),
        .O(\TX_Byte[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA888888A8A88888)) 
    \TX_Byte[6]_i_2 
       (.I0(\TX_Byte[7]_i_7_n_0 ),
        .I1(\TX_Byte[6]_i_6_n_0 ),
        .I2(r_dataFrame[110]),
        .I3(r_dataFrame[0]),
        .I4(byteCounter_reg[2]),
        .I5(byteCounter_reg[3]),
        .O(\TX_Byte[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8AA8888888888)) 
    \TX_Byte[6]_i_3 
       (.I0(\TX_Byte[7]_i_9_n_0 ),
        .I1(\TX_Byte[6]_i_7_n_0 ),
        .I2(r_dataFrame[62]),
        .I3(r_dataFrame[0]),
        .I4(byteCounter_reg[3]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA88800800)) 
    \TX_Byte[6]_i_4 
       (.I0(\byteCounter[5]_i_2_n_0 ),
        .I1(byteCounter_reg[2]),
        .I2(byteCounter_reg[3]),
        .I3(r_dataFrame[102]),
        .I4(r_dataFrame[38]),
        .I5(\TX_Byte[6]_i_8_n_0 ),
        .O(\TX_Byte[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA88800800)) 
    \TX_Byte[6]_i_5 
       (.I0(\TX_Byte[7]_i_12_n_0 ),
        .I1(byteCounter_reg[2]),
        .I2(byteCounter_reg[3]),
        .I3(r_dataFrame[118]),
        .I4(r_dataFrame[54]),
        .I5(\TX_Byte[6]_i_9_n_0 ),
        .O(\TX_Byte[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    \TX_Byte[6]_i_6 
       (.I0(r_dataFrame[78]),
        .I1(byteCounter_reg[3]),
        .I2(r_dataFrame[142]),
        .I3(r_dataFrame[14]),
        .I4(byteCounter_reg[4]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    \TX_Byte[6]_i_7 
       (.I0(r_dataFrame[94]),
        .I1(byteCounter_reg[3]),
        .I2(r_dataFrame[158]),
        .I3(r_dataFrame[30]),
        .I4(byteCounter_reg[4]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    \TX_Byte[6]_i_8 
       (.I0(r_dataFrame[70]),
        .I1(byteCounter_reg[3]),
        .I2(r_dataFrame[134]),
        .I3(r_dataFrame[0]),
        .I4(byteCounter_reg[4]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEBA5410)) 
    \TX_Byte[6]_i_9 
       (.I0(byteCounter_reg[3]),
        .I1(byteCounter_reg[4]),
        .I2(r_dataFrame[150]),
        .I3(r_dataFrame[22]),
        .I4(r_dataFrame[0]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[6]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \TX_Byte[7]_i_1 
       (.I0(mainState),
        .I1(dataReady),
        .I2(l_TX_done),
        .I3(l_TX_active),
        .O(\TX_Byte[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    \TX_Byte[7]_i_10 
       (.I0(r_dataFrame[95]),
        .I1(byteCounter_reg[3]),
        .I2(r_dataFrame[159]),
        .I3(r_dataFrame[31]),
        .I4(byteCounter_reg[4]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    \TX_Byte[7]_i_11 
       (.I0(r_dataFrame[71]),
        .I1(byteCounter_reg[3]),
        .I2(r_dataFrame[135]),
        .I3(r_dataFrame[0]),
        .I4(byteCounter_reg[4]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \TX_Byte[7]_i_12 
       (.I0(byteCounter_reg[0]),
        .I1(byteCounter_reg[1]),
        .O(\TX_Byte[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEBA5410)) 
    \TX_Byte[7]_i_13 
       (.I0(byteCounter_reg[3]),
        .I1(byteCounter_reg[4]),
        .I2(r_dataFrame[151]),
        .I3(r_dataFrame[23]),
        .I4(r_dataFrame[0]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \TX_Byte[7]_i_2 
       (.I0(\TX_Byte[7]_i_3_n_0 ),
        .I1(\TX_Byte[7]_i_4_n_0 ),
        .I2(\TX_Byte[7]_i_5_n_0 ),
        .I3(\TX_Byte[7]_i_6_n_0 ),
        .I4(mainState),
        .I5(dataReady),
        .O(\TX_Byte[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA888888A8A88888)) 
    \TX_Byte[7]_i_3 
       (.I0(\TX_Byte[7]_i_7_n_0 ),
        .I1(\TX_Byte[7]_i_8_n_0 ),
        .I2(r_dataFrame[111]),
        .I3(r_dataFrame[0]),
        .I4(byteCounter_reg[2]),
        .I5(byteCounter_reg[3]),
        .O(\TX_Byte[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8AA8888888888)) 
    \TX_Byte[7]_i_4 
       (.I0(\TX_Byte[7]_i_9_n_0 ),
        .I1(\TX_Byte[7]_i_10_n_0 ),
        .I2(r_dataFrame[63]),
        .I3(r_dataFrame[0]),
        .I4(byteCounter_reg[3]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA88800800)) 
    \TX_Byte[7]_i_5 
       (.I0(\byteCounter[5]_i_2_n_0 ),
        .I1(byteCounter_reg[2]),
        .I2(byteCounter_reg[3]),
        .I3(r_dataFrame[103]),
        .I4(r_dataFrame[39]),
        .I5(\TX_Byte[7]_i_11_n_0 ),
        .O(\TX_Byte[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA88800800)) 
    \TX_Byte[7]_i_6 
       (.I0(\TX_Byte[7]_i_12_n_0 ),
        .I1(byteCounter_reg[2]),
        .I2(byteCounter_reg[3]),
        .I3(r_dataFrame[119]),
        .I4(r_dataFrame[55]),
        .I5(\TX_Byte[7]_i_13_n_0 ),
        .O(\TX_Byte[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \TX_Byte[7]_i_7 
       (.I0(byteCounter_reg[1]),
        .I1(byteCounter_reg[0]),
        .O(\TX_Byte[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BB88B8B8)) 
    \TX_Byte[7]_i_8 
       (.I0(r_dataFrame[79]),
        .I1(byteCounter_reg[3]),
        .I2(r_dataFrame[143]),
        .I3(r_dataFrame[15]),
        .I4(byteCounter_reg[4]),
        .I5(byteCounter_reg[2]),
        .O(\TX_Byte[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \TX_Byte[7]_i_9 
       (.I0(byteCounter_reg[0]),
        .I1(byteCounter_reg[1]),
        .O(\TX_Byte[7]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \TX_Byte_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\TX_Byte[7]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(\TX_Byte[0]_i_1_n_0 ),
        .Q(\TX_Byte_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \TX_Byte_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\TX_Byte[7]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(\TX_Byte[1]_i_1_n_0 ),
        .Q(\TX_Byte_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \TX_Byte_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\TX_Byte[7]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(\TX_Byte[2]_i_1_n_0 ),
        .Q(\TX_Byte_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \TX_Byte_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\TX_Byte[7]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(\TX_Byte[3]_i_1_n_0 ),
        .Q(\TX_Byte_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \TX_Byte_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\TX_Byte[7]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(\TX_Byte[4]_i_1_n_0 ),
        .Q(\TX_Byte_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \TX_Byte_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\TX_Byte[7]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(\TX_Byte[5]_i_1_n_0 ),
        .Q(\TX_Byte_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \TX_Byte_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\TX_Byte[7]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(\TX_Byte[6]_i_1_n_0 ),
        .Q(\TX_Byte_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \TX_Byte_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\TX_Byte[7]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(\TX_Byte[7]_i_2_n_0 ),
        .Q(\TX_Byte_reg[7]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \byteCounter[0]_i_1 
       (.I0(mainState),
        .I1(byteCounter_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \byteCounter[1]_i_1 
       (.I0(mainState),
        .I1(byteCounter_reg[0]),
        .I2(byteCounter_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \byteCounter[2]_i_1 
       (.I0(byteCounter_reg[0]),
        .I1(byteCounter_reg[1]),
        .I2(mainState),
        .I3(byteCounter_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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
  (* \PinAttr:I2:HOLD_DETOUR  = "195" *) 
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
  (* \PinAttr:I0:HOLD_DETOUR  = "195" *) 
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
       (.C(clk_IBUF_BUFG),
        .CE(\byteCounter[7]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_0_in[0]),
        .Q(byteCounter_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \byteCounter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\byteCounter[7]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_0_in[1]),
        .Q(byteCounter_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \byteCounter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\byteCounter[7]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_0_in[2]),
        .Q(byteCounter_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \byteCounter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\byteCounter[7]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_0_in[3]),
        .Q(byteCounter_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \byteCounter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\byteCounter[7]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_0_in[4]),
        .Q(byteCounter_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \byteCounter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\byteCounter[7]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_0_in[5]),
        .Q(byteCounter_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \byteCounter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\byteCounter[7]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_0_in[6]),
        .Q(byteCounter_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \byteCounter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\byteCounter[7]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_0_in[7]),
        .Q(byteCounter_reg[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    dataReady_i_1
       (.I0(mainState),
        .I1(lastValid),
        .O(dataReady_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    dataReady_reg
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(dataReady_i_1_n_0),
        .Q(dataReady));
  (* \PinAttr:I3:HOLD_DETOUR  = "185" *) 
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF010)) 
    done_i_1
       (.I0(l_TX_active),
        .I1(mainState_i_2_n_0),
        .I2(mainState),
        .I3(done),
        .O(done_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    done_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(done_i_1_n_0),
        .Q(done));
  FDCE #(
    .INIT(1'b0)) 
    lastValid_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(valid),
        .Q(lastValid));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    mainState_i_1
       (.I0(mainState_i_2_n_0),
        .I1(mainState),
        .I2(valid),
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
       (.C(clk_IBUF_BUFG),
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
        .I3(l_TX_active),
        .I4(mainState_i_2_n_0),
        .O(r_TX_DV_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    r_TX_DV_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(r_TX_DV_i_1_n_0),
        .Q(l_TX_DV));
  FDCE #(
    .INIT(1'b0)) 
    \r_TxActiveReg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(l_TX_active),
        .Q(r_TxActiveReg[0]));
  (* \PinAttr:D:HOLD_DETOUR  = "192" *) 
  FDCE #(
    .INIT(1'b0)) 
    \r_TxActiveReg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(r_TxActiveReg[0]),
        .Q(r_TxActiveReg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TxDoneReg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_led_OBUF),
        .D(l_TX_done),
        .Q(r_TxDoneReg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_TxDoneReg_reg[1] 
       (.C(clk_IBUF_BUFG),
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
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[0]_i_1 
       (.I0(mainState),
        .I1(dataOut[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[100]_i_1 
       (.I0(mainState),
        .I1(dataOut[77]),
        .O(p_1_in[100]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[101]_i_1 
       (.I0(mainState),
        .I1(dataOut[78]),
        .O(p_1_in[101]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[102]_i_1 
       (.I0(mainState),
        .I1(dataOut[79]),
        .O(p_1_in[102]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[103]_i_1 
       (.I0(mainState),
        .I1(dataOut[80]),
        .O(p_1_in[103]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[104]_i_1 
       (.I0(mainState),
        .I1(dataOut[81]),
        .O(p_1_in[104]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[105]_i_1 
       (.I0(mainState),
        .I1(dataOut[82]),
        .O(p_1_in[105]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[106]_i_1 
       (.I0(mainState),
        .I1(dataOut[83]),
        .O(p_1_in[106]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[107]_i_1 
       (.I0(mainState),
        .I1(dataOut[84]),
        .O(p_1_in[107]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[108]_i_1 
       (.I0(mainState),
        .I1(dataOut[85]),
        .O(p_1_in[108]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[109]_i_1 
       (.I0(mainState),
        .I1(dataOut[86]),
        .O(p_1_in[109]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[10]_i_1 
       (.I0(mainState),
        .I1(dataOut[3]),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[110]_i_1 
       (.I0(mainState),
        .I1(dataOut[87]),
        .O(p_1_in[110]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[111]_i_1 
       (.I0(mainState),
        .I1(dataOut[88]),
        .O(p_1_in[111]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[112]_i_1 
       (.I0(mainState),
        .I1(dataOut[89]),
        .O(p_1_in[112]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[113]_i_1 
       (.I0(mainState),
        .I1(dataOut[90]),
        .O(p_1_in[113]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[114]_i_1 
       (.I0(mainState),
        .I1(dataOut[91]),
        .O(p_1_in[114]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[115]_i_1 
       (.I0(mainState),
        .I1(dataOut[92]),
        .O(p_1_in[115]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[116]_i_1 
       (.I0(mainState),
        .I1(dataOut[93]),
        .O(p_1_in[116]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[117]_i_1 
       (.I0(mainState),
        .I1(dataOut[94]),
        .O(p_1_in[117]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[118]_i_1 
       (.I0(mainState),
        .I1(dataOut[95]),
        .O(p_1_in[118]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[119]_i_1 
       (.I0(mainState),
        .I1(dataOut[96]),
        .O(p_1_in[119]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[11]_i_1 
       (.I0(mainState),
        .I1(dataOut[4]),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[128]_i_1 
       (.I0(mainState),
        .I1(dataOut[97]),
        .O(p_1_in[128]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[129]_i_1 
       (.I0(mainState),
        .I1(dataOut[98]),
        .O(p_1_in[129]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[12]_i_1 
       (.I0(mainState),
        .I1(dataOut[5]),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[130]_i_1 
       (.I0(mainState),
        .I1(dataOut[99]),
        .O(p_1_in[130]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[131]_i_1 
       (.I0(mainState),
        .I1(dataOut[100]),
        .O(p_1_in[131]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[132]_i_1 
       (.I0(mainState),
        .I1(dataOut[101]),
        .O(p_1_in[132]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[133]_i_1 
       (.I0(mainState),
        .I1(dataOut[102]),
        .O(p_1_in[133]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[134]_i_1 
       (.I0(mainState),
        .I1(dataOut[103]),
        .O(p_1_in[134]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[135]_i_1 
       (.I0(mainState),
        .I1(dataOut[104]),
        .O(p_1_in[135]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[136]_i_1 
       (.I0(mainState),
        .I1(dataOut[105]),
        .O(p_1_in[136]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[137]_i_1 
       (.I0(mainState),
        .I1(dataOut[106]),
        .O(p_1_in[137]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[138]_i_1 
       (.I0(mainState),
        .I1(dataOut[107]),
        .O(p_1_in[138]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[139]_i_1 
       (.I0(mainState),
        .I1(dataOut[108]),
        .O(p_1_in[139]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[13]_i_1 
       (.I0(mainState),
        .I1(dataOut[6]),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[140]_i_1 
       (.I0(mainState),
        .I1(dataOut[109]),
        .O(p_1_in[140]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[141]_i_1 
       (.I0(mainState),
        .I1(dataOut[110]),
        .O(p_1_in[141]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[142]_i_1 
       (.I0(mainState),
        .I1(dataOut[111]),
        .O(p_1_in[142]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[143]_i_1 
       (.I0(mainState),
        .I1(dataOut[112]),
        .O(p_1_in[143]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[144]_i_1 
       (.I0(mainState),
        .I1(dataOut[113]),
        .O(p_1_in[144]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[145]_i_1 
       (.I0(mainState),
        .I1(dataOut[114]),
        .O(p_1_in[145]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[146]_i_1 
       (.I0(mainState),
        .I1(dataOut[115]),
        .O(p_1_in[146]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[147]_i_1 
       (.I0(mainState),
        .I1(dataOut[116]),
        .O(p_1_in[147]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[148]_i_1 
       (.I0(mainState),
        .I1(dataOut[117]),
        .O(p_1_in[148]));
  (* \PinAttr:I1:HOLD_DETOUR  = "178" *) 
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[149]_i_1 
       (.I0(mainState),
        .I1(dataOut[118]),
        .O(p_1_in[149]));
  (* \PinAttr:I1:HOLD_DETOUR  = "197" *) 
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[14]_i_1 
       (.I0(mainState),
        .I1(dataOut[7]),
        .O(p_1_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[150]_i_1 
       (.I0(mainState),
        .I1(dataOut[119]),
        .O(p_1_in[150]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[151]_i_1 
       (.I0(mainState),
        .I1(dataOut[120]),
        .O(p_1_in[151]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[152]_i_1 
       (.I0(mainState),
        .I1(dataOut[121]),
        .O(p_1_in[152]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[153]_i_1 
       (.I0(mainState),
        .I1(dataOut[122]),
        .O(p_1_in[153]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[154]_i_1 
       (.I0(mainState),
        .I1(dataOut[123]),
        .O(p_1_in[154]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[155]_i_1 
       (.I0(mainState),
        .I1(dataOut[124]),
        .O(p_1_in[155]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[156]_i_1 
       (.I0(mainState),
        .I1(dataOut[125]),
        .O(p_1_in[156]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[157]_i_1 
       (.I0(mainState),
        .I1(dataOut[126]),
        .O(p_1_in[157]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[158]_i_1 
       (.I0(mainState),
        .I1(dataOut[127]),
        .O(p_1_in[158]));
  LUT2 #(
    .INIT(4'hB)) 
    \r_dataFrame[159]_i_1 
       (.I0(lastValid),
        .I1(mainState),
        .O(\r_dataFrame[159]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[159]_i_2 
       (.I0(mainState),
        .I1(dataOut[128]),
        .O(p_1_in[159]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[15]_i_1 
       (.I0(mainState),
        .I1(dataOut[8]),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[16]_i_1 
       (.I0(mainState),
        .I1(dataOut[9]),
        .O(p_1_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[17]_i_1 
       (.I0(mainState),
        .I1(dataOut[10]),
        .O(p_1_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[18]_i_1 
       (.I0(mainState),
        .I1(dataOut[11]),
        .O(p_1_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[19]_i_1 
       (.I0(mainState),
        .I1(dataOut[12]),
        .O(p_1_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[20]_i_1 
       (.I0(mainState),
        .I1(dataOut[13]),
        .O(p_1_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[21]_i_1 
       (.I0(mainState),
        .I1(dataOut[14]),
        .O(p_1_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[22]_i_1 
       (.I0(mainState),
        .I1(dataOut[15]),
        .O(p_1_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[23]_i_1 
       (.I0(mainState),
        .I1(dataOut[16]),
        .O(p_1_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[24]_i_1 
       (.I0(mainState),
        .I1(dataOut[17]),
        .O(p_1_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[25]_i_1 
       (.I0(mainState),
        .I1(dataOut[18]),
        .O(p_1_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[26]_i_1 
       (.I0(mainState),
        .I1(dataOut[19]),
        .O(p_1_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[27]_i_1 
       (.I0(mainState),
        .I1(dataOut[20]),
        .O(p_1_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[28]_i_1 
       (.I0(mainState),
        .I1(dataOut[21]),
        .O(p_1_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[29]_i_1 
       (.I0(mainState),
        .I1(dataOut[22]),
        .O(p_1_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[30]_i_1 
       (.I0(mainState),
        .I1(dataOut[23]),
        .O(p_1_in[30]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[31]_i_1 
       (.I0(mainState),
        .I1(dataOut[24]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[32]_i_1 
       (.I0(mainState),
        .I1(dataOut[25]),
        .O(p_1_in[32]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[33]_i_1 
       (.I0(mainState),
        .I1(dataOut[26]),
        .O(p_1_in[33]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[34]_i_1 
       (.I0(mainState),
        .I1(dataOut[27]),
        .O(p_1_in[34]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[35]_i_1 
       (.I0(mainState),
        .I1(dataOut[28]),
        .O(p_1_in[35]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[36]_i_1 
       (.I0(mainState),
        .I1(dataOut[29]),
        .O(p_1_in[36]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[37]_i_1 
       (.I0(mainState),
        .I1(dataOut[30]),
        .O(p_1_in[37]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[38]_i_1 
       (.I0(mainState),
        .I1(dataOut[31]),
        .O(p_1_in[38]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[39]_i_1 
       (.I0(mainState),
        .I1(dataOut[32]),
        .O(p_1_in[39]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[48]_i_1 
       (.I0(mainState),
        .I1(dataOut[33]),
        .O(p_1_in[48]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[49]_i_1 
       (.I0(mainState),
        .I1(dataOut[34]),
        .O(p_1_in[49]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[50]_i_1 
       (.I0(mainState),
        .I1(dataOut[35]),
        .O(p_1_in[50]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[51]_i_1 
       (.I0(mainState),
        .I1(dataOut[36]),
        .O(p_1_in[51]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[52]_i_1 
       (.I0(mainState),
        .I1(dataOut[37]),
        .O(p_1_in[52]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[53]_i_1 
       (.I0(mainState),
        .I1(dataOut[38]),
        .O(p_1_in[53]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[54]_i_1 
       (.I0(mainState),
        .I1(dataOut[39]),
        .O(p_1_in[54]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[55]_i_1 
       (.I0(mainState),
        .I1(dataOut[40]),
        .O(p_1_in[55]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[56]_i_1 
       (.I0(mainState),
        .I1(dataOut[41]),
        .O(p_1_in[56]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[57]_i_1 
       (.I0(mainState),
        .I1(dataOut[42]),
        .O(p_1_in[57]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[58]_i_1 
       (.I0(mainState),
        .I1(dataOut[43]),
        .O(p_1_in[58]));
  (* \PinAttr:I1:HOLD_DETOUR  = "180" *) 
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[59]_i_1 
       (.I0(mainState),
        .I1(dataOut[44]),
        .O(p_1_in[59]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[60]_i_1 
       (.I0(mainState),
        .I1(dataOut[45]),
        .O(p_1_in[60]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[61]_i_1 
       (.I0(mainState),
        .I1(dataOut[46]),
        .O(p_1_in[61]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[62]_i_1 
       (.I0(mainState),
        .I1(dataOut[47]),
        .O(p_1_in[62]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[63]_i_1 
       (.I0(mainState),
        .I1(dataOut[48]),
        .O(p_1_in[63]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[64]_i_1 
       (.I0(mainState),
        .I1(dataOut[49]),
        .O(p_1_in[64]));
  (* \PinAttr:I1:HOLD_DETOUR  = "155" *) 
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[65]_i_1 
       (.I0(mainState),
        .I1(dataOut[50]),
        .O(p_1_in[65]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[66]_i_1 
       (.I0(mainState),
        .I1(dataOut[51]),
        .O(p_1_in[66]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[67]_i_1 
       (.I0(mainState),
        .I1(dataOut[52]),
        .O(p_1_in[67]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[68]_i_1 
       (.I0(mainState),
        .I1(dataOut[53]),
        .O(p_1_in[68]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[69]_i_1 
       (.I0(mainState),
        .I1(dataOut[54]),
        .O(p_1_in[69]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[70]_i_1 
       (.I0(mainState),
        .I1(dataOut[55]),
        .O(p_1_in[70]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[71]_i_1 
       (.I0(mainState),
        .I1(dataOut[56]),
        .O(p_1_in[71]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[72]_i_1 
       (.I0(mainState),
        .I1(dataOut[57]),
        .O(p_1_in[72]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[73]_i_1 
       (.I0(mainState),
        .I1(dataOut[58]),
        .O(p_1_in[73]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[74]_i_1 
       (.I0(mainState),
        .I1(dataOut[59]),
        .O(p_1_in[74]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[75]_i_1 
       (.I0(mainState),
        .I1(dataOut[60]),
        .O(p_1_in[75]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[76]_i_1 
       (.I0(mainState),
        .I1(dataOut[61]),
        .O(p_1_in[76]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[77]_i_1 
       (.I0(mainState),
        .I1(dataOut[62]),
        .O(p_1_in[77]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[78]_i_1 
       (.I0(mainState),
        .I1(dataOut[63]),
        .O(p_1_in[78]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[79]_i_1 
       (.I0(mainState),
        .I1(dataOut[64]),
        .O(p_1_in[79]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[88]_i_1 
       (.I0(mainState),
        .I1(dataOut[65]),
        .O(p_1_in[88]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[89]_i_1 
       (.I0(mainState),
        .I1(dataOut[66]),
        .O(p_1_in[89]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[8]_i_1 
       (.I0(mainState),
        .I1(dataOut[1]),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[90]_i_1 
       (.I0(mainState),
        .I1(dataOut[67]),
        .O(p_1_in[90]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[91]_i_1 
       (.I0(mainState),
        .I1(dataOut[68]),
        .O(p_1_in[91]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[92]_i_1 
       (.I0(mainState),
        .I1(dataOut[69]),
        .O(p_1_in[92]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[93]_i_1 
       (.I0(mainState),
        .I1(dataOut[70]),
        .O(p_1_in[93]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[94]_i_1 
       (.I0(mainState),
        .I1(dataOut[71]),
        .O(p_1_in[94]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[95]_i_1 
       (.I0(mainState),
        .I1(dataOut[72]),
        .O(p_1_in[95]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[96]_i_1 
       (.I0(mainState),
        .I1(dataOut[73]),
        .O(p_1_in[96]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[97]_i_1 
       (.I0(mainState),
        .I1(dataOut[74]),
        .O(p_1_in[97]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[98]_i_1 
       (.I0(mainState),
        .I1(dataOut[75]),
        .O(p_1_in[98]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[99]_i_1 
       (.I0(mainState),
        .I1(dataOut[76]),
        .O(p_1_in[99]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_dataFrame[9]_i_1 
       (.I0(mainState),
        .I1(dataOut[2]),
        .O(p_1_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[0]),
        .Q(r_dataFrame[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[100] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[100]),
        .Q(r_dataFrame[100]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[101] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[101]),
        .Q(r_dataFrame[101]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[102] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[102]),
        .Q(r_dataFrame[102]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[103] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[103]),
        .Q(r_dataFrame[103]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[104] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[104]),
        .Q(r_dataFrame[104]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[105] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[105]),
        .Q(r_dataFrame[105]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[106] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[106]),
        .Q(r_dataFrame[106]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[107] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[107]),
        .Q(r_dataFrame[107]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[108] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[108]),
        .Q(r_dataFrame[108]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[109] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[109]),
        .Q(r_dataFrame[109]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[10]),
        .Q(r_dataFrame[10]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[110] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[110]),
        .Q(r_dataFrame[110]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[111] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[111]),
        .Q(r_dataFrame[111]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[112] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[112]),
        .Q(r_dataFrame[112]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[113] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[113]),
        .Q(r_dataFrame[113]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[114] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[114]),
        .Q(r_dataFrame[114]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[115] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[115]),
        .Q(r_dataFrame[115]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[116] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[116]),
        .Q(r_dataFrame[116]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[117] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[117]),
        .Q(r_dataFrame[117]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[118] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[118]),
        .Q(r_dataFrame[118]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[119] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[119]),
        .Q(r_dataFrame[119]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[11]),
        .Q(r_dataFrame[11]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[128] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[128]),
        .Q(r_dataFrame[128]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[129] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[129]),
        .Q(r_dataFrame[129]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[12]),
        .Q(r_dataFrame[12]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[130] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[130]),
        .Q(r_dataFrame[130]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[131] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[131]),
        .Q(r_dataFrame[131]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[132] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[132]),
        .Q(r_dataFrame[132]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[133] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[133]),
        .Q(r_dataFrame[133]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[134] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[134]),
        .Q(r_dataFrame[134]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[135] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[135]),
        .Q(r_dataFrame[135]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[136] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[136]),
        .Q(r_dataFrame[136]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[137] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[137]),
        .Q(r_dataFrame[137]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[138] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[138]),
        .Q(r_dataFrame[138]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[139] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[139]),
        .Q(r_dataFrame[139]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[13]),
        .Q(r_dataFrame[13]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[140] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[140]),
        .Q(r_dataFrame[140]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[141] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[141]),
        .Q(r_dataFrame[141]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[142] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[142]),
        .Q(r_dataFrame[142]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[143] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[143]),
        .Q(r_dataFrame[143]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[144] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[144]),
        .Q(r_dataFrame[144]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[145] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[145]),
        .Q(r_dataFrame[145]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[146] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[146]),
        .Q(r_dataFrame[146]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[147] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[147]),
        .Q(r_dataFrame[147]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[148] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[148]),
        .Q(r_dataFrame[148]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[149] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[149]),
        .Q(r_dataFrame[149]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[14]),
        .Q(r_dataFrame[14]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[150] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[150]),
        .Q(r_dataFrame[150]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[151] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[151]),
        .Q(r_dataFrame[151]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[152] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[152]),
        .Q(r_dataFrame[152]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[153] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[153]),
        .Q(r_dataFrame[153]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[154] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[154]),
        .Q(r_dataFrame[154]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[155] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[155]),
        .Q(r_dataFrame[155]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[156] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[156]),
        .Q(r_dataFrame[156]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[157] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[157]),
        .Q(r_dataFrame[157]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[158] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[158]),
        .Q(r_dataFrame[158]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[159] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[159]),
        .Q(r_dataFrame[159]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[15]),
        .Q(r_dataFrame[15]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[16]),
        .Q(r_dataFrame[16]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[17]),
        .Q(r_dataFrame[17]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[18]),
        .Q(r_dataFrame[18]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[19]),
        .Q(r_dataFrame[19]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[20]),
        .Q(r_dataFrame[20]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[21]),
        .Q(r_dataFrame[21]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[22]),
        .Q(r_dataFrame[22]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[23]),
        .Q(r_dataFrame[23]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[24]),
        .Q(r_dataFrame[24]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[25]),
        .Q(r_dataFrame[25]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[26]),
        .Q(r_dataFrame[26]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[27]),
        .Q(r_dataFrame[27]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[28]),
        .Q(r_dataFrame[28]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[29]),
        .Q(r_dataFrame[29]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[30]),
        .Q(r_dataFrame[30]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[31]),
        .Q(r_dataFrame[31]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[32]),
        .Q(r_dataFrame[32]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[33]),
        .Q(r_dataFrame[33]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[34]),
        .Q(r_dataFrame[34]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[35]),
        .Q(r_dataFrame[35]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[36]),
        .Q(r_dataFrame[36]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[37]),
        .Q(r_dataFrame[37]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[38]),
        .Q(r_dataFrame[38]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[39]),
        .Q(r_dataFrame[39]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[48]),
        .Q(r_dataFrame[48]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[49]),
        .Q(r_dataFrame[49]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[50]),
        .Q(r_dataFrame[50]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[51]),
        .Q(r_dataFrame[51]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[52]),
        .Q(r_dataFrame[52]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[53]),
        .Q(r_dataFrame[53]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[54]),
        .Q(r_dataFrame[54]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[55]),
        .Q(r_dataFrame[55]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[56]),
        .Q(r_dataFrame[56]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[57]),
        .Q(r_dataFrame[57]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[58]),
        .Q(r_dataFrame[58]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[59]),
        .Q(r_dataFrame[59]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[60]),
        .Q(r_dataFrame[60]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[61]),
        .Q(r_dataFrame[61]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[62]),
        .Q(r_dataFrame[62]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[63]),
        .Q(r_dataFrame[63]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[64] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[64]),
        .Q(r_dataFrame[64]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[65] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[65]),
        .Q(r_dataFrame[65]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[66] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[66]),
        .Q(r_dataFrame[66]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[67] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[67]),
        .Q(r_dataFrame[67]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[68] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[68]),
        .Q(r_dataFrame[68]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[69] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[69]),
        .Q(r_dataFrame[69]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[70] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[70]),
        .Q(r_dataFrame[70]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[71] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[71]),
        .Q(r_dataFrame[71]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[72] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[72]),
        .Q(r_dataFrame[72]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[73] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[73]),
        .Q(r_dataFrame[73]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[74] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[74]),
        .Q(r_dataFrame[74]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[75] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[75]),
        .Q(r_dataFrame[75]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[76] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[76]),
        .Q(r_dataFrame[76]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[77] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[77]),
        .Q(r_dataFrame[77]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[78] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[78]),
        .Q(r_dataFrame[78]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[79] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[79]),
        .Q(r_dataFrame[79]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[88] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[88]),
        .Q(r_dataFrame[88]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[89] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[89]),
        .Q(r_dataFrame[89]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[8]),
        .Q(r_dataFrame[8]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[90] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[90]),
        .Q(r_dataFrame[90]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[91] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[91]),
        .Q(r_dataFrame[91]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[92] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[92]),
        .Q(r_dataFrame[92]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[93] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[93]),
        .Q(r_dataFrame[93]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[94] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[94]),
        .Q(r_dataFrame[94]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[95] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[95]),
        .Q(r_dataFrame[95]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[96] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[96]),
        .Q(r_dataFrame[96]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[97] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[97]),
        .Q(r_dataFrame[97]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[98] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[98]),
        .Q(r_dataFrame[98]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[99] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[99]),
        .Q(r_dataFrame[99]));
  FDCE #(
    .INIT(1'b0)) 
    \r_dataFrame_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_dataFrame[159]_i_1_n_0 ),
        .CLR(reset_led_OBUF),
        .D(p_1_in[9]),
        .Q(r_dataFrame[9]));
endmodule

(* ECO_CHECKSUM = "69a0a66f" *) (* c_CLKS_PER_BIT = "868" *) 
(* NotValidForBitStream *)
module top
   (clk,
    trigg_1,
    trigg_2,
    trigg_3,
    trigg_4,
    signalSendt,
    reset_n,
    o_Tx,
    tx_led,
    reset_led);
  input clk;
  input trigg_1;
  input trigg_2;
  input trigg_3;
  input trigg_4;
  input signalSendt;
  input reset_n;
  output o_Tx;
  output tx_led;
  output reset_led;

  wire buffer_n_2;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire comb_valid;
  wire count_1_n_31;
  wire count_1_n_34;
  wire count_1_n_35;
  wire count_1_n_36;
  wire count_1_n_37;
  wire count_1_n_38;
  wire count_1_n_39;
  wire count_1_n_40;
  wire count_1_n_41;
  wire count_1_n_42;
  wire count_1_n_43;
  wire count_1_n_44;
  wire count_1_n_45;
  wire count_1_n_46;
  wire count_1_n_47;
  wire count_1_n_48;
  wire count_1_n_49;
  wire count_1_n_50;
  wire count_1_n_51;
  wire count_1_n_52;
  wire count_1_n_53;
  wire count_1_n_54;
  wire count_1_n_55;
  wire count_1_n_56;
  wire count_1_n_57;
  wire count_1_n_58;
  wire count_1_n_59;
  wire count_1_n_60;
  wire count_1_n_61;
  wire count_1_n_62;
  wire count_1_n_63;
  wire count_1_n_64;
  wire count_1_n_65;
  wire count_2_n_100;
  wire count_2_n_101;
  wire count_2_n_102;
  wire count_2_n_103;
  wire count_2_n_104;
  wire count_2_n_105;
  wire count_2_n_106;
  wire count_2_n_107;
  wire count_2_n_108;
  wire count_2_n_109;
  wire count_2_n_110;
  wire count_2_n_111;
  wire count_2_n_112;
  wire count_2_n_113;
  wire count_2_n_114;
  wire count_2_n_115;
  wire count_2_n_116;
  wire count_2_n_117;
  wire count_2_n_118;
  wire count_2_n_119;
  wire count_2_n_120;
  wire count_2_n_121;
  wire count_2_n_122;
  wire count_2_n_123;
  wire count_2_n_124;
  wire count_2_n_125;
  wire count_2_n_126;
  wire count_2_n_127;
  wire count_2_n_128;
  wire count_2_n_129;
  wire count_2_n_130;
  wire count_2_n_99;
  wire count_3_n_31;
  wire count_3_n_34;
  wire count_3_n_35;
  wire count_3_n_36;
  wire count_3_n_37;
  wire count_3_n_38;
  wire count_3_n_39;
  wire count_3_n_40;
  wire count_3_n_41;
  wire count_3_n_42;
  wire count_3_n_43;
  wire count_3_n_44;
  wire count_3_n_45;
  wire count_3_n_46;
  wire count_3_n_47;
  wire count_3_n_48;
  wire count_3_n_49;
  wire count_3_n_50;
  wire count_3_n_51;
  wire count_3_n_52;
  wire count_3_n_53;
  wire count_3_n_54;
  wire count_3_n_55;
  wire count_3_n_56;
  wire count_3_n_57;
  wire count_3_n_58;
  wire count_3_n_59;
  wire count_3_n_60;
  wire count_3_n_61;
  wire count_3_n_62;
  wire count_3_n_63;
  wire count_3_n_64;
  wire count_3_n_65;
  wire count_4_n_31;
  wire count_4_n_33;
  wire count_4_n_34;
  wire count_4_n_35;
  wire count_4_n_36;
  wire count_4_n_37;
  wire count_4_n_38;
  wire count_4_n_39;
  wire count_4_n_40;
  wire count_4_n_41;
  wire count_4_n_42;
  wire count_4_n_43;
  wire count_4_n_44;
  wire count_4_n_45;
  wire count_4_n_46;
  wire count_4_n_47;
  wire count_4_n_48;
  wire count_4_n_49;
  wire count_4_n_50;
  wire count_4_n_51;
  wire count_4_n_52;
  wire count_4_n_53;
  wire count_4_n_54;
  wire count_4_n_55;
  wire count_4_n_56;
  wire count_4_n_57;
  wire count_4_n_58;
  wire count_4_n_59;
  wire count_4_n_60;
  wire count_4_n_61;
  wire count_4_n_62;
  wire count_4_n_63;
  wire count_4_n_64;
  wire count_4_n_67;
  wire count_4_n_68;
  wire dataOut1;
  wire done;
  wire hasPulsed;
  wire [7:0]l_TX_Byte;
  wire l_TX_DV;
  wire l_TX_active;
  wire l_TX_done;
  wire l_valid_1;
  wire l_valid_2;
  wire l_valid_3;
  wire l_valid_4;
  wire lopt;
  wire [159:0]mainDataLine;
  wire [0:0]mainState;
  wire [0:0]mainState_2;
  wire [0:0]mainState_4;
  wire o_Tx;
  wire [1:0]p_0_in;
  wire [31:1]r_Counter0;
  wire [31:1]r_Counter0_3;
  wire [31:1]r_Counter0_5;
  wire [31:0]r_Counter0_in;
  wire [31:0]r_Counter0_in_0;
  wire [31:0]r_Counter0_in_1;
  wire reset_led;
  wire reset_led_OBUF;
  wire reset_n;
  wire signalSendt;
  wire signalSendt_IBUF;
  wire trigg_1;
  wire trigg_1_IBUF;
  wire trigg_2;
  wire trigg_2_IBUF;
  wire trigg_3;
  wire trigg_3_IBUF;
  wire trigg_4;
  wire trigg_4_IBUF;
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
        .\TX_Byte_reg[7]_0 (l_TX_Byte),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .dataOut({mainDataLine[159:128],mainDataLine[119:88],mainDataLine[79:48],mainDataLine[39:8],mainDataLine[0]}),
        .done(done),
        .l_TX_DV(l_TX_DV),
        .l_TX_active(l_TX_active),
        .l_TX_done(l_TX_done),
        .reset_led_OBUF(reset_led_OBUF),
        .valid(comb_valid));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  DataCombiner comb
       (.D({count_1_n_34,count_1_n_35,count_1_n_36,count_1_n_37,count_1_n_38,count_1_n_39,count_1_n_40,count_1_n_41,count_1_n_42,count_1_n_43,count_1_n_44,count_1_n_45,count_1_n_46,count_1_n_47,count_1_n_48,count_1_n_49,count_1_n_50,count_1_n_51,count_1_n_52,count_1_n_53,count_1_n_54,count_1_n_55,count_1_n_56,count_1_n_57,count_1_n_58,count_1_n_59,count_1_n_60,count_1_n_61,count_1_n_62,count_1_n_63,count_1_n_64,count_1_n_65,count_2_n_99,count_2_n_100,count_2_n_101,count_2_n_102,count_2_n_103,count_2_n_104,count_2_n_105,count_2_n_106,count_2_n_107,count_2_n_108,count_2_n_109,count_2_n_110,count_2_n_111,count_2_n_112,count_2_n_113,count_2_n_114,count_2_n_115,count_2_n_116,count_2_n_117,count_2_n_118,count_2_n_119,count_2_n_120,count_2_n_121,count_2_n_122,count_2_n_123,count_2_n_124,count_2_n_125,count_2_n_126,count_2_n_127,count_2_n_128,count_2_n_129,count_2_n_130,count_3_n_34,count_3_n_35,count_3_n_36,count_3_n_37,count_3_n_38,count_3_n_39,count_3_n_40,count_3_n_41,count_3_n_42,count_3_n_43,count_3_n_44,count_3_n_45,count_3_n_46,count_3_n_47,count_3_n_48,count_3_n_49,count_3_n_50,count_3_n_51,count_3_n_52,count_3_n_53,count_3_n_54,count_3_n_55,count_3_n_56,count_3_n_57,count_3_n_58,count_3_n_59,count_3_n_60,count_3_n_61,count_3_n_62,count_3_n_63,count_3_n_64,count_3_n_65,count_4_n_33,count_4_n_34,count_4_n_35,count_4_n_36,count_4_n_37,count_4_n_38,count_4_n_39,count_4_n_40,count_4_n_41,count_4_n_42,count_4_n_43,count_4_n_44,count_4_n_45,count_4_n_46,count_4_n_47,count_4_n_48,count_4_n_49,count_4_n_50,count_4_n_51,count_4_n_52,count_4_n_53,count_4_n_54,count_4_n_55,count_4_n_56,count_4_n_57,count_4_n_58,count_4_n_59,count_4_n_60,count_4_n_61,count_4_n_62,count_4_n_63,count_4_n_64,dataOut1}),
        .Q({mainDataLine[159:128],mainDataLine[119:88],mainDataLine[79:48],mainDataLine[39:8],mainDataLine[0]}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .hasPulsed(hasPulsed),
        .hasPulsed_reg_0(count_4_n_67),
        .reset_led_OBUF(reset_led_OBUF),
        .valid(comb_valid),
        .valid_reg_0(count_4_n_68));
  CounterModule count_1
       (.D({count_1_n_34,count_1_n_35,count_1_n_36,count_1_n_37,count_1_n_38,count_1_n_39,count_1_n_40,count_1_n_41,count_1_n_42,count_1_n_43,count_1_n_44,count_1_n_45,count_1_n_46,count_1_n_47,count_1_n_48,count_1_n_49,count_1_n_50,count_1_n_51,count_1_n_52,count_1_n_53,count_1_n_54,count_1_n_55,count_1_n_56,count_1_n_57,count_1_n_58,count_1_n_59,count_1_n_60,count_1_n_61,count_1_n_62,count_1_n_63,count_1_n_64,count_1_n_65}),
        .\FSM_sequential_mainState_reg[0]_0 (mainState),
        .Q(count_1_n_31),
        .clk(clk_IBUF_BUFG),
        .done(done),
        .l_valid_1(l_valid_1),
        .l_valid_2(l_valid_2),
        .l_valid_3(l_valid_3),
        .l_valid_4(l_valid_4),
        .p_0_in(p_0_in),
        .r_Counter0(r_Counter0),
        .\r_Counter_reg[31]_0 (r_Counter0_in),
        .reset_n(reset_led_OBUF),
        .\triggReg_reg[0]_0 (trigg_1_IBUF));
  CounterModule_0 count_2
       (.D(r_Counter0_in_1),
        .Q(mainState_4),
        .clk(clk_IBUF_BUFG),
        .done(done),
        .l_valid_1(l_valid_1),
        .l_valid_2(l_valid_2),
        .l_valid_3(l_valid_3),
        .l_valid_4(l_valid_4),
        .p_0_in(p_0_in),
        .r_Counter0(r_Counter0_5),
        .r_Counter0_0(r_Counter0_3),
        .r_Counter0_1(r_Counter0),
        .\r_Counter_reg[0]_0 (count_4_n_31),
        .\r_Counter_reg[0]_1 (mainState_2),
        .\r_Counter_reg[0]_2 (count_3_n_31),
        .\r_Counter_reg[0]_3 (mainState),
        .\r_Counter_reg[0]_4 (count_1_n_31),
        .reset_n(reset_led_OBUF),
        .\signalReg_reg[1]_0 (r_Counter0_in_0),
        .\signalReg_reg[1]_1 (r_Counter0_in),
        .signalSendt_IBUF(signalSendt_IBUF),
        .\triggReg_reg[0]_0 (trigg_2_IBUF),
        .valid_reg_0({count_2_n_99,count_2_n_100,count_2_n_101,count_2_n_102,count_2_n_103,count_2_n_104,count_2_n_105,count_2_n_106,count_2_n_107,count_2_n_108,count_2_n_109,count_2_n_110,count_2_n_111,count_2_n_112,count_2_n_113,count_2_n_114,count_2_n_115,count_2_n_116,count_2_n_117,count_2_n_118,count_2_n_119,count_2_n_120,count_2_n_121,count_2_n_122,count_2_n_123,count_2_n_124,count_2_n_125,count_2_n_126,count_2_n_127,count_2_n_128,count_2_n_129,count_2_n_130}));
  CounterModule_1 count_3
       (.D({count_3_n_34,count_3_n_35,count_3_n_36,count_3_n_37,count_3_n_38,count_3_n_39,count_3_n_40,count_3_n_41,count_3_n_42,count_3_n_43,count_3_n_44,count_3_n_45,count_3_n_46,count_3_n_47,count_3_n_48,count_3_n_49,count_3_n_50,count_3_n_51,count_3_n_52,count_3_n_53,count_3_n_54,count_3_n_55,count_3_n_56,count_3_n_57,count_3_n_58,count_3_n_59,count_3_n_60,count_3_n_61,count_3_n_62,count_3_n_63,count_3_n_64,count_3_n_65}),
        .\FSM_sequential_mainState_reg[0]_0 (mainState_2),
        .Q(count_3_n_31),
        .clk(clk_IBUF_BUFG),
        .done(done),
        .l_valid_1(l_valid_1),
        .l_valid_2(l_valid_2),
        .l_valid_3(l_valid_3),
        .l_valid_4(l_valid_4),
        .p_0_in(p_0_in),
        .r_Counter0(r_Counter0_3),
        .\r_Counter_reg[31]_0 (r_Counter0_in_0),
        .reset_n(reset_led_OBUF),
        .\triggReg_reg[0]_0 (trigg_3_IBUF));
  CounterModule_2 count_4
       (.D({count_4_n_33,count_4_n_34,count_4_n_35,count_4_n_36,count_4_n_37,count_4_n_38,count_4_n_39,count_4_n_40,count_4_n_41,count_4_n_42,count_4_n_43,count_4_n_44,count_4_n_45,count_4_n_46,count_4_n_47,count_4_n_48,count_4_n_49,count_4_n_50,count_4_n_51,count_4_n_52,count_4_n_53,count_4_n_54,count_4_n_55,count_4_n_56,count_4_n_57,count_4_n_58,count_4_n_59,count_4_n_60,count_4_n_61,count_4_n_62,count_4_n_63,count_4_n_64,dataOut1}),
        .\FSM_sequential_mainState_reg[0]_0 (mainState_4),
        .Q(count_4_n_31),
        .clk(clk_IBUF_BUFG),
        .done(done),
        .hasPulsed(hasPulsed),
        .l_valid_1(l_valid_1),
        .l_valid_2(l_valid_2),
        .l_valid_3(l_valid_3),
        .l_valid_4(l_valid_4),
        .p_0_in(p_0_in),
        .r_Counter0(r_Counter0_5),
        .\r_Counter_reg[31]_0 (r_Counter0_in_1),
        .reset_n(reset_led_OBUF),
        .\triggReg_reg[0]_0 (trigg_4_IBUF),
        .valid_reg_0(count_4_n_67),
        .valid_reg_1(count_4_n_68));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF o_Tx_OBUF_inst
       (.I(lopt),
        .O(o_Tx));
  OBUF reset_led_OBUF_inst
       (.I(reset_led_OBUF),
        .O(reset_led));
  IBUF reset_n_IBUF_inst
       (.I(reset_n),
        .O(reset_led_OBUF));
  IBUF signalSendt_IBUF_inst
       (.I(signalSendt),
        .O(signalSendt_IBUF));
  IBUF trigg_1_IBUF_inst
       (.I(trigg_1),
        .O(trigg_1_IBUF));
  IBUF trigg_2_IBUF_inst
       (.I(trigg_2),
        .O(trigg_2_IBUF));
  IBUF trigg_3_IBUF_inst
       (.I(trigg_3),
        .O(trigg_3_IBUF));
  IBUF trigg_4_IBUF_inst
       (.I(trigg_4),
        .O(trigg_4_IBUF));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF tx_led_OBUF_inst
       (.I(tx_led_OBUF),
        .O(tx_led));
  uart_tx uart
       (.D(l_TX_Byte),
        .E(buffer_n_2),
        .Q(uart_n_3),
        .clk(clk_IBUF_BUFG),
        .l_TX_DV(l_TX_DV),
        .l_TX_active(l_TX_active),
        .l_TX_done(l_TX_done),
        .lopt(lopt),
        .lopt_1(NLW_uart_lopt_1_UNCONNECTED),
        .reset_n(reset_led_OBUF),
        .tx_led_OBUF(tx_led_OBUF));
endmodule

module uart_tx
   (tx_led_OBUF,
    l_TX_active,
    l_TX_done,
    Q,
    clk,
    l_TX_DV,
    reset_n,
    E,
    D,
    lopt,
    lopt_1);
  output tx_led_OBUF;
  output l_TX_active;
  output l_TX_done;
  output [0:0]Q;
  input clk;
  input l_TX_DV;
  input reset_n;
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
  wire clk;
  wire l_TX_DV;
  wire l_TX_active;
  wire l_TX_done;
  wire o_Tx_Serial2_out;
  wire o_Tx_Serial_i_2_n_0;
  wire o_Tx_Serial_i_3_n_0;
  wire o_Tx_Serial_i_4_n_0;
  wire o_Tx_Serial_reg_lopt_replica_1;
  wire \r_Bit_Index[0]_i_1_n_0 ;
  wire \r_Bit_Index[0]_i_2_n_0 ;
  wire \r_Bit_Index[1]_i_1_n_0 ;
  wire \r_Bit_Index[2]_i_1_n_0 ;
  wire \r_Bit_Index[2]_i_2_n_0 ;
  wire \r_Bit_Index_reg_n_0_[0] ;
  wire \r_Bit_Index_reg_n_0_[1] ;
  wire \r_Bit_Index_reg_n_0_[2] ;
  (* RTL_KEEP = "true" *) wire [9:0]r_Clock_Count;
  wire \r_Clock_Count[0]_i_1_n_0 ;
  wire \r_Clock_Count[15]_i_1_n_0 ;
  wire \r_Clock_Count[1]_i_1_n_0 ;
  wire \r_Clock_Count[2]_i_1_n_0 ;
  wire \r_Clock_Count[3]_i_1_n_0 ;
  wire \r_Clock_Count[4]_i_1_n_0 ;
  wire \r_Clock_Count[5]_i_1_n_0 ;
  wire \r_Clock_Count[5]_i_2_n_0 ;
  wire \r_Clock_Count[6]_i_1_n_0 ;
  wire \r_Clock_Count[7]_i_1_n_0 ;
  wire \r_Clock_Count[8]_i_1_n_0 ;
  wire \r_Clock_Count[9]_i_1_n_0 ;
  wire \r_Clock_Count[9]_i_2_n_0 ;
  wire \r_Clock_Count[9]_i_3_n_0 ;
  wire \r_Clock_Count[9]_i_4_n_0 ;
  wire \r_Clock_Count[9]_i_5_n_0 ;
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
  wire reset_n;
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
  (* \PinAttr:I1:HOLD_DETOUR  = "179" *) 
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
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
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_r_SM_Main[1]_i_1_n_0 ),
        .Q(Q),
        .S(reset_n));
  (* FSM_ENCODED_STATES = "s_IDLE:000010,s_TX_START_BIT:000100,s_TX_DATA_BITS:001000,s_CLEANUP:100000,s_TX_STOP_BIT:010000,iSTATE:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_SM_Main_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_r_SM_Main[2]_i_1_n_0 ),
        .Q(\FSM_onehot_r_SM_Main_reg_n_0_[2] ),
        .R(reset_n));
  (* FSM_ENCODED_STATES = "s_IDLE:000010,s_TX_START_BIT:000100,s_TX_DATA_BITS:001000,s_CLEANUP:100000,s_TX_STOP_BIT:010000,iSTATE:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_SM_Main_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_r_SM_Main[3]_i_1_n_0 ),
        .Q(\FSM_onehot_r_SM_Main_reg_n_0_[3] ),
        .R(reset_n));
  (* FSM_ENCODED_STATES = "s_IDLE:000010,s_TX_START_BIT:000100,s_TX_DATA_BITS:001000,s_CLEANUP:100000,s_TX_STOP_BIT:010000,iSTATE:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_SM_Main_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_r_SM_Main[4]_i_1_n_0 ),
        .Q(\FSM_onehot_r_SM_Main_reg_n_0_[4] ),
        .R(reset_n));
  (* FSM_ENCODED_STATES = "s_IDLE:000010,s_TX_START_BIT:000100,s_TX_DATA_BITS:001000,s_CLEANUP:100000,s_TX_STOP_BIT:010000,iSTATE:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_SM_Main_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_r_SM_Main[5]_i_1_n_0 ),
        .Q(\FSM_onehot_r_SM_Main_reg_n_0_[5] ),
        .R(reset_n));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    o_Tx_Serial_i_1
       (.I0(\FSM_onehot_r_SM_Main_reg_n_0_[3] ),
        .I1(\FSM_onehot_r_SM_Main_reg_n_0_[4] ),
        .I2(\FSM_onehot_r_SM_Main_reg_n_0_[2] ),
        .I3(Q),
        .I4(reset_n),
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
       (.C(clk),
        .CE(o_Tx_Serial2_out),
        .D(o_Tx_Serial_i_2_n_0),
        .Q(tx_led_OBUF),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    o_Tx_Serial_reg_lopt_replica
       (.C(clk),
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
        .I3(reset_n),
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
        .I4(reset_n),
        .I5(Q),
        .O(\r_Bit_Index[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFA0FFEF00500010)) 
    \r_Bit_Index[2]_i_1 
       (.I0(\r_Bit_Index[2]_i_2_n_0 ),
        .I1(\FSM_onehot_r_SM_Main[5]_i_2_n_0 ),
        .I2(\FSM_onehot_r_SM_Main_reg_n_0_[3] ),
        .I3(reset_n),
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
       (.C(clk),
        .CE(1'b1),
        .D(\r_Bit_Index[0]_i_1_n_0 ),
        .Q(\r_Bit_Index_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Bit_Index_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_Bit_Index[1]_i_1_n_0 ),
        .Q(\r_Bit_Index_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Bit_Index_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_Bit_Index[2]_i_1_n_0 ),
        .Q(\r_Bit_Index_reg_n_0_[2] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \r_Clock_Count[0]_i_1 
       (.I0(\r_Clock_Count[9]_i_3_n_0 ),
        .I1(r_Clock_Count[0]),
        .O(\r_Clock_Count[0]_i_1_n_0 ));
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
        .O(\r_Clock_Count[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2A80)) 
    \r_Clock_Count[2]_i_1 
       (.I0(\r_Clock_Count[9]_i_3_n_0 ),
        .I1(r_Clock_Count[0]),
        .I2(r_Clock_Count[1]),
        .I3(r_Clock_Count[2]),
        .O(\r_Clock_Count[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \r_Clock_Count[3]_i_1 
       (.I0(\r_Clock_Count[9]_i_3_n_0 ),
        .I1(r_Clock_Count[1]),
        .I2(r_Clock_Count[0]),
        .I3(r_Clock_Count[2]),
        .I4(r_Clock_Count[3]),
        .O(\r_Clock_Count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \r_Clock_Count[4]_i_1 
       (.I0(\r_Clock_Count[9]_i_3_n_0 ),
        .I1(r_Clock_Count[2]),
        .I2(r_Clock_Count[0]),
        .I3(r_Clock_Count[1]),
        .I4(r_Clock_Count[3]),
        .I5(r_Clock_Count[4]),
        .O(\r_Clock_Count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA2AAAAAA08000000)) 
    \r_Clock_Count[5]_i_1 
       (.I0(\r_Clock_Count[9]_i_3_n_0 ),
        .I1(r_Clock_Count[3]),
        .I2(\r_Clock_Count[5]_i_2_n_0 ),
        .I3(r_Clock_Count[2]),
        .I4(r_Clock_Count[4]),
        .I5(r_Clock_Count[5]),
        .O(\r_Clock_Count[5]_i_1_n_0 ));
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
        .O(\r_Clock_Count[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7080)) 
    \r_Clock_Count[7]_i_1 
       (.I0(r_Clock_Count[6]),
        .I1(\r_Clock_Count[9]_i_2_n_0 ),
        .I2(\r_Clock_Count[9]_i_3_n_0 ),
        .I3(r_Clock_Count[7]),
        .O(\r_Clock_Count[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7F008000)) 
    \r_Clock_Count[8]_i_1 
       (.I0(r_Clock_Count[7]),
        .I1(\r_Clock_Count[9]_i_2_n_0 ),
        .I2(r_Clock_Count[6]),
        .I3(\r_Clock_Count[9]_i_3_n_0 ),
        .I4(r_Clock_Count[8]),
        .O(\r_Clock_Count[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \r_Clock_Count[9]_i_1 
       (.I0(r_Clock_Count[8]),
        .I1(r_Clock_Count[6]),
        .I2(\r_Clock_Count[9]_i_2_n_0 ),
        .I3(r_Clock_Count[7]),
        .I4(\r_Clock_Count[9]_i_3_n_0 ),
        .I5(r_Clock_Count[9]),
        .O(\r_Clock_Count[9]_i_1_n_0 ));
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
       (.C(clk),
        .CE(\r_Clock_Count[15]_i_1_n_0 ),
        .D(\r_Clock_Count[0]_i_1_n_0 ),
        .Q(r_Clock_Count[0]),
        .R(reset_n));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_Clock_Count_reg[1] 
       (.C(clk),
        .CE(\r_Clock_Count[15]_i_1_n_0 ),
        .D(\r_Clock_Count[1]_i_1_n_0 ),
        .Q(r_Clock_Count[1]),
        .R(reset_n));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_Clock_Count_reg[2] 
       (.C(clk),
        .CE(\r_Clock_Count[15]_i_1_n_0 ),
        .D(\r_Clock_Count[2]_i_1_n_0 ),
        .Q(r_Clock_Count[2]),
        .R(reset_n));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_Clock_Count_reg[3] 
       (.C(clk),
        .CE(\r_Clock_Count[15]_i_1_n_0 ),
        .D(\r_Clock_Count[3]_i_1_n_0 ),
        .Q(r_Clock_Count[3]),
        .R(reset_n));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_Clock_Count_reg[4] 
       (.C(clk),
        .CE(\r_Clock_Count[15]_i_1_n_0 ),
        .D(\r_Clock_Count[4]_i_1_n_0 ),
        .Q(r_Clock_Count[4]),
        .R(reset_n));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_Clock_Count_reg[5] 
       (.C(clk),
        .CE(\r_Clock_Count[15]_i_1_n_0 ),
        .D(\r_Clock_Count[5]_i_1_n_0 ),
        .Q(r_Clock_Count[5]),
        .R(reset_n));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_Clock_Count_reg[6] 
       (.C(clk),
        .CE(\r_Clock_Count[15]_i_1_n_0 ),
        .D(\r_Clock_Count[6]_i_1_n_0 ),
        .Q(r_Clock_Count[6]),
        .R(reset_n));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_Clock_Count_reg[7] 
       (.C(clk),
        .CE(\r_Clock_Count[15]_i_1_n_0 ),
        .D(\r_Clock_Count[7]_i_1_n_0 ),
        .Q(r_Clock_Count[7]),
        .R(reset_n));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_Clock_Count_reg[8] 
       (.C(clk),
        .CE(\r_Clock_Count[15]_i_1_n_0 ),
        .D(\r_Clock_Count[8]_i_1_n_0 ),
        .Q(r_Clock_Count[8]),
        .R(reset_n));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_Clock_Count_reg[9] 
       (.C(clk),
        .CE(\r_Clock_Count[15]_i_1_n_0 ),
        .D(\r_Clock_Count[9]_i_1_n_0 ),
        .Q(r_Clock_Count[9]),
        .R(reset_n));
  LUT6 #(
    .INIT(64'hFFFBFBFB0F000000)) 
    r_Tx_Active_i_1
       (.I0(\FSM_onehot_r_SM_Main[5]_i_2_n_0 ),
        .I1(\FSM_onehot_r_SM_Main_reg_n_0_[4] ),
        .I2(reset_n),
        .I3(Q),
        .I4(l_TX_DV),
        .I5(l_TX_active),
        .O(r_Tx_Active_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_Tx_Active_reg
       (.C(clk),
        .CE(1'b1),
        .D(r_Tx_Active_i_1_n_0),
        .Q(l_TX_active),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Tx_Data_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(\r_Tx_Data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Tx_Data_reg[1] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(\r_Tx_Data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Tx_Data_reg[2] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(\r_Tx_Data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Tx_Data_reg[3] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(\r_Tx_Data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Tx_Data_reg[4] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(\r_Tx_Data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Tx_Data_reg[5] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(\r_Tx_Data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Tx_Data_reg[6] 
       (.C(clk),
        .CE(E),
        .D(D[6]),
        .Q(\r_Tx_Data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Tx_Data_reg[7] 
       (.C(clk),
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
        .I4(reset_n),
        .I5(l_TX_done),
        .O(r_Tx_Done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_Tx_Done_reg
       (.C(clk),
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
