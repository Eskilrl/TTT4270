(* keep *) module DataCombiner (
    //Inputs
    input [31:0] dataInn_1, dataInn_2, dataInn_3, dataInn_4,
    input valid_1, valid_2, valid_3, valid_4,
    input clk,
    input done,
    input reset_n,

    //Outputs
    output reg valid = 0,
    output reg [8*20-1:0] dataOut = 0
);

reg hasPulsed = 0;


always_ff @(posedge clk or posedge reset_n) begin : blockName
    if(reset_n) begin
        dataOut <= 0;
        valid <= 0;
        hasPulsed <= 0;
    end else begin
    if(valid_1 && valid_2 && valid_3 && valid_4) begin
        //Combine all four into one 
        dataOut <= {dataInn_1, 8'hff , dataInn_2, 8'hff,  dataInn_3, 8'hff, dataInn_4, 8'hff};
        if(hasPulsed == 0)begin
            valid <= 1;
            hasPulsed <= 1;
        end else begin
            valid <= 0;
        end
    end
    else begin
        dataOut <= 0;
        valid <= 0;
        hasPulsed <= 0;
    end
end
end

endmodule