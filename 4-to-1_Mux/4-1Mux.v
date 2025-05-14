//Data Flow Modeling
module mux4to1_df (
    input [1:0] sel,
    input [3:0] in,
    output out
);
    assign out = (sel == 2'b00) ? in[0] :
                 (sel == 2'b01) ? in[1] :
                 (sel == 2'b10) ? in[2] : in[3];
endmodule

//Behavioral Modeling
module mux4to1_beh (
    input [1:0] sel,
    input [3:0] in,
    output reg out
);
    always @(*) begin
        case(sel)
            2'b00: out = in[0];
            2'b01: out = in[1];
            2'b10: out = in[2];
            2'b11: out = in[3];
        endcase
    end
endmodule

