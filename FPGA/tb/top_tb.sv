`timescale 1ns / 1ps

module top_tb;

    // Testbench signals
    logic clk = 0;
    logic trigg_1 = 1;
    logic trigg_2 = 1;
    logic trigg_3 = 1;
    logic trigg_4 = 1;
    logic signalSendt = 0;
    logic reset_n = 0;

    wire TX;
    wire reset_led;
    wire trigg_led;
    wire signal_led;
    wire[7:0] w_Rx_Byte;

    // Instantiate your design
    top uut (
        .clk(clk),
        .trigg_1(trigg_1),
        .trigg_2(trigg_2),
        .trigg_3(trigg_3),
        .trigg_4(trigg_4),
        .signalSendt(signalSendt),
        .reset_n(reset_n),
        .o_Tx(TX),
        .reset_led(reset_led)
    );


    uart_rx  UART_RX_INST(
     .i_Clock(clk),
     .i_Rx_Serial(TX),
     .o_Rx_DV(),
     .o_Rx_Byte(w_Rx_Byte)
     );

    // Clock generation: 100MHz = 10ns period
    always #10 clk = ~clk;



    initial begin
        $dumpfile("waveform.vcd");    // GTKWave file
        $dumpvars(0, top_tb);         // Dump all variables

        // Initialize
        reset_n = 0;
        #40;
        reset_n = 1;
        #40;
        reset_n = 0;

         // Simulate a "signalSendt" pulse
        #100;
        signalSendt = 1;
        #40;
        signalSendt = 0;
        #80;
        signalSendt = 1;
        #40;
        signalSendt = 0;

        // Trigger a signal
        #500;
        trigg_1 = 1;
        trigg_2 = 1;
        trigg_3 = 1;
        trigg_4 = 1;
        #80;
        trigg_1 = 0;
        trigg_2 = 0;
        trigg_3 = 0;
        trigg_4 = 0;
        #40;
        trigg_1 = 1;
        trigg_2 = 1;
        trigg_3 = 1;
        trigg_4 = 1;
        

        // Run for a while
        #10000000;

         // Simulate a "signalSendt" pulse
        #100;
        signalSendt = 1;
        #40;
        signalSendt = 0;
        #80;
        signalSendt = 1;
        #40;
        signalSendt = 0;

        // Trigger a signal
        #5000;
        trigg_1 = 1;
        trigg_2 = 1;
        trigg_3 = 1;
        trigg_4 = 1;
        #80;
        trigg_1 = 0;
        trigg_2 = 0;
        trigg_3 = 0;
        trigg_4 = 0;
        #40;
        trigg_1 = 1;
        trigg_2 = 1;
        trigg_3 = 1;
        trigg_4 = 1;
        #40;
        trigg_1 = 0;
        trigg_2 = 0;
        trigg_3 = 0;
        trigg_4 = 0;
        // Run for a while
        #1000000;

        $finish;
    end

endmodule
