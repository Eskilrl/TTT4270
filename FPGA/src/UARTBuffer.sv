(* keep *) module UARTBuffer (
    //Data Inputs
    input valid,
    input clk,
    input [8*20-1:0] dataInn,
    input reset_n,

    //Data outputs
    output reg done = 0,


    //UART inputs
    input TX_active,
    input TX_done,


    //UART outputs
    output  TX_DV,
    output reg [7:0] TX_Byte = 0
);

//Init controll registers

reg[7:0] byteCounter = 0;
reg[8*20-1:0] r_dataFrame = 0;

localparam B_IDLE = 1'b0;
localparam B_WRITE = 1'b1;

localparam BytesToSend = 20 ;

reg dataReady = 0;
reg mainState = 0; 
logic nextState;

reg lastValid = 0;
reg r_TX_DV = 0;

reg[1:0] r_TxDoneReg = 0;
reg[1:0] r_TxActiveReg = 0;

assign TX_DV = r_TX_DV;


always_comb begin : FSM
    case (mainState)
        B_IDLE:
             nextState = (valid)? B_WRITE : B_IDLE;
        B_WRITE:
            nextState = (TX_done && byteCounter == BytesToSend -1)? B_IDLE : B_WRITE;
        default: 
            nextState = B_IDLE;
    endcase
end



always_ff @(posedge clk or posedge reset_n) begin : UART_Writer
    if(reset_n)begin
        byteCounter <= 0;
        r_dataFrame <= 0;
        r_TX_DV <= 0;
        TX_Byte <= 0;
        mainState <= B_IDLE;
        lastValid <= 0;
        dataReady <= 0;
        r_TxActiveReg <= 0;
        r_TxDoneReg <= 0;
        done <= 0;
    end else begin
        
    lastValid <= valid;
    //Handle inputs
    mainState <= nextState;
    if(lastValid)begin
        r_dataFrame <= dataInn;
        dataReady <= 1;
    end

    r_TxActiveReg <= {r_TxActiveReg[0], TX_active };
    r_TxDoneReg <= {r_TxDoneReg[0], TX_done};
    
    //Create outputs
    case (mainState)
        B_IDLE: 
            begin
                done <= 0;
                r_dataFrame <= 0;
                byteCounter <= 0;
                r_TX_DV <= 0;
                TX_Byte <= 0;
                dataReady <= 0;
            end

        B_WRITE:
            begin
                if((r_TxActiveReg == 2'b10) && (r_TxDoneReg == 2'b01))begin
                    byteCounter <= byteCounter + 1;
                    r_TX_DV <= 0;
                end
                if(dataReady)begin
                    //Insert byte ()
                    if(~TX_active && TX_done)begin
                        r_TX_DV <= 0;
                    end else begin
                        r_TX_DV <= 1;
                        TX_Byte <= r_dataFrame[(BytesToSend -1 - byteCounter) * 8 +: 8];
                    end
                end else begin
                    TX_Byte <= 0;
                    r_TX_DV <= 0;
                end
                if(~TX_active && TX_done && (byteCounter == BytesToSend -1))begin
                    done <= 1;
                    r_TX_DV <= 0;
                end
            end

        default: 
            begin
                r_dataFrame <= 0;
                byteCounter <= 0;
                r_TX_DV <= 0;
                TX_Byte <= 0;
                dataReady <= 0;
            end
    endcase
end

end

endmodule