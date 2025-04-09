`timescale 1ns / 1ps

module top_tb;

    // Testbench signals
    logic clk = 0;
    logic trigg = 0;
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
        .trigg(trigg),
        .signalSendt(signalSendt),
        .reset_n(reset_n),
        .TX(TX),
        .reset_led(reset_led),
        .trigg_led(trigg_led),
        .signal_led(signal_led)
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
        #5000;
        trigg = 1;
        #80;
        trigg = 0;
        #40;
        trigg = 1;
        #40;
        trigg = 0;

        // Run for a while
        #1000000;

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
        trigg = 1;
        #80;
        trigg = 0;
        #40;
        trigg = 1;
        #40;
        trigg = 0;

        // Run for a while
        #1000000;

        $finish;
    end

endmodule
