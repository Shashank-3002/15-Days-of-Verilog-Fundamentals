module tb_decoder3to8;
    reg [2:0] in;
    wire [7:0] out_struct, out_beh;

    decoder3to8_struct ds (.in(in), .out(out_struct));
    decoder3to8_beh db (.in(in), .out(out_beh));

    initial begin
        $dumpfile("3-8Decoder_tb.vcd");
        $dumpvars(0, tb_decoder3to8);
        $display("In  | Out_Struct  |  Out_Beh");
        $monitor("%b | %b    |  %b", in, out_struct, out_beh);
        in = 3'b000; #10;
        in = 3'b001; #10;
        in = 3'b010; #10;
        in = 3'b011; #10;
        in = 3'b100; #10;
        in = 3'b101; #10;
        in = 3'b110; #10;
        in = 3'b111; #10;
        $finish;
    end
endmodule