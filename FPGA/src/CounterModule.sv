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
localparam C_WAIT      = 3'b010;
localparam C_SENDING   = 3'b100;

reg [2:0] mainState = 0;
logic [2:0] nextState = 0;
reg[7:0] r_delay_counter = 0;


always_comb begin : stateMachine
    case (mainState)
        C_IDLE:
            begin
                nextState = (signalReg[2:1] == 2'b01) ? C_COUNTING : C_IDLE;
            end 

        C_COUNTING:
            begin
                nextState = (triggReg[2:1] == 2'b10) ? C_WAIT : C_COUNTING;
            end

        C_WAIT:
            begin
                nextState = (r_delay_counter == 20) ? C_SENDING : C_WAIT;
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
        triggReg <= 3'b111;
        signalReg <= 0;
        valid <= 0;
        mainState <= C_IDLE;
        DataOut <= 0;
        r_delay_counter <= 0;
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
                r_delay_counter <=0;
            end 

        C_COUNTING:
            begin
                if(signalReg[2:1] != 2'b01)begin
                    r_Counter <= r_Counter + 1;
                    valid <= 0;
                end else begin
                    r_Counter <= 0;
                    valid <= 0;
                end
            end

        C_WAIT:
            begin
                DataOut <= r_Counter;
                r_delay_counter <= r_delay_counter + 1;
            end

        C_SENDING:
            begin
                valid <= 1;
                r_delay_counter <= 0;
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