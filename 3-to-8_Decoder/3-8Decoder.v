//3-to-8 Decoder (Structural)
module decoder3to8_struct(
    input [2:0] in,
    output [7:0] out
);
    assign out[0] = ~in[2] & ~in[1] & ~in[0];
    assign out[1] = ~in[2] & ~in[1] &  in[0];
    assign out[2] = ~in[2] &  in[1] & ~in[0];
    assign out[3] = ~in[2] &  in[1] &  in[0];
    assign out[4] =  in[2] & ~in[1] & ~in[0];
    assign out[5] =  in[2] & ~in[1] &  in[0];
    assign out[6] =  in[2] &  in[1] & ~in[0];
    assign out[7] =  in[2] &  in[1] &  in[0];
endmodule

//3-to-8 Decoder (Behavioral)
module decoder3to8_beh(
    input [2:0] in,
    output reg [7:0] out
);
    always @(*) begin
        out = 8'b00000000;
        out[in] = 1'b1;
    end
endmodule
