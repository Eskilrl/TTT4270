(* keep *) module CounterModule (
    //Inputs
    input signalSendt,
    input trigg,
    input clk,
    input reset_n,
    input done,

    //outputs
    output reg [31:0] DataOut = 0,
    output reg valid = 0
);
    

//Init registers
reg[31:0] r_Counter = 0;
reg[2:0] triggReg = 0;
reg[2:0] signalReg = 0;


//Define state variable
localparam C_IDLE      = 3'b000;
localparam C_COUNTING  = 3'b001;
localparam C_SENDING   = 3'b010;

reg [2:0] mainState = 0;
logic [2:0] nextState = 0;


always_comb begin : stateMachine
    case (mainState)
        C_IDLE:
            begin
                nextState = (signalReg[2:1] && 2'b01) ? C_COUNTING : C_IDLE;
            end 

        C_COUNTING:
            begin
                nextState = (triggReg[2:1] && 2'b10) ? C_SENDING : C_COUNTING;
            end

        C_SENDING:
            begin
                nextState = C_IDLE;
            end
        default:
            begin
                nextState = C_IDLE;
            end
    endcase
end


always_ff @(posedge clk or posedge reset_n) begin : Counter
    if(reset_n)begin
        r_Counter <= 0;
        triggReg <= 0;
        signalReg <= 0;
        valid <= 0;
        mainState <= C_IDLE;
        DataOut <= 0;
    end else begin
        
    //Handle inputs
    triggReg <= {triggReg[1:0], trigg};
    signalReg <= {signalReg[1:0], signalSendt};
    mainState <= nextState;

    if(done) begin
        valid <= 0;
    end
    
    //Handle Counting
    case (mainState)
        C_IDLE:
            begin
                r_Counter <= 0;
            end 

        C_COUNTING:
            begin
                r_Counter <= r_Counter + 1;
                valid <= 0;
            end

        C_SENDING:
            begin
                DataOut <= r_Counter;
                valid <= 1;
            end
        default:
            begin
                r_Counter <= 0;
                valid <= 0;
                triggReg <= 0;
                signalReg <= 0;
                DataOut <= 0;
            end
        
    endcase
end
end




endmodule