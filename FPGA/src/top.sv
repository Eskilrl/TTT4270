module top(
    //Top level inputs
    input clk,
    input trigg,
    input signalSendt,
    input reset_n,
    input sw,

    //Top level outputs
    output pmod,
    output o_Tx,
    output tx_led,
    output reset_led,
    output trigg_led,
    output signal_led
);

parameter c_CLKS_PER_BIT = 868;

wire trigg_1, trigg_2, trigg_3, trigg_4;
wire tx_led;
logic l_Tx;

assign pmod = clk;


//Define interconnects

logic [31:0] data_1;
logic [31:0] data_2;
logic [31:0] data_3;
logic [31:0] data_4;
logic [135:0] mainDataLine;


logic l_valid_1, l_valid_2, l_valid_3, l_valid_4;
logic comb_valid;

logic l_TX_active;
logic l_TX_done;
logic l_TX_DV;
logic[7:0] l_TX_Byte;
logic done;


//Init counter modules

CounterModule count_1(
    //Inputs
    .signalSendt(signalSendt),
    .trigg(trigg_1),
    .clk(clk),
    .reset_n(reset_n),
    .done(done),

    //Outputs
    .DataOut(data_1),
    .valid(l_valid_1)
);

CounterModule count_2(
    //Inputs
    .signalSendt(signalSendt),
    .trigg(trigg_1),
    .clk(clk),
    .reset_n(reset_n),
    .done(done),

    //Outputs
    .DataOut(data_2),
    .valid(l_valid_2)
);

CounterModule count_3(
    //Inputs
    .signalSendt(signalSendt),
    .trigg(trigg_1),
    .clk(clk),
    .reset_n(reset_n),
    .done(done),

    //Outputs
    .DataOut(data_3),
    .valid(l_valid_3)
);

CounterModule count_4(
    //Inputs
    .signalSendt(signalSendt),
    .trigg(trigg_1),
    .clk(clk),
    .reset_n(reset_n),
    .done(done),

    //Outputs
    .DataOut(data_4),
    .valid(l_valid_4)
);

//Init data combiner

DataCombiner comb(
    //Inputs
    .dataInn_1(data_1),
    .dataInn_2(data_2),
    .dataInn_3(data_3),
    .dataInn_4(data_4),
    .valid_1(l_valid_1),
    .valid_2(l_valid_2),
    .valid_3(l_valid_3),
    .valid_4(l_valid_4),
    .clk(clk),
    .reset_n(reset_n),

    //Outputs
    .dataOut(mainDataLine),
    .valid(comb_valid)
);



UARTBuffer buffer(
    //Inputs
    .clk(clk),
    .valid(comb_valid),
    .dataInn(mainDataLine),
    .reset_n(reset_n),

    //Output
    .done(done),

    //UART inputs
    .TX_active(l_TX_active),
    .TX_done(l_TX_done),

    //UART outputs
    .TX_DV(l_TX_DV),
    .TX_Byte(l_TX_Byte) 
);

uart_tx #(.CLKS_PER_BIT(c_CLKS_PER_BIT))uart(
    .i_Clock(clk),
    .i_Tx_DV(l_TX_DV),
    .i_Tx_Byte(l_TX_Byte),
    .i_reset(reset_n),
    .o_Tx_Active(l_TX_active),
    .o_Tx_Serial(l_Tx),
    .o_Tx_Done(l_TX_done)
);


assign trigg_1 = trigg;
assign trigg_2 = trigg;
assign trigg_3 = trigg;
assign trigg_4 = trigg;

assign reset_led = reset_n;
assign trigg_led = l_TX_active;
assign signal_led = sw;
assign tx_led = l_Tx;
assign o_Tx = l_Tx;

endmodule