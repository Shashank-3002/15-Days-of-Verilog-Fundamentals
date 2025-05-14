module tb_mux4to1;
    reg [1:0] sel;
    reg [3:0] in;
    wire out_df, out_beh;

    mux4to1_df df (.sel(sel), .in(in), .out(out_df));
    mux4to1_beh beh (.sel(sel), .in(in), .out(out_beh));

    initial begin
        $dumpfile("4-1Mux_tb.vcd");
        $dumpvars(0, tb_mux4to1);
        $display("Sel | In   |  DF_Out | Beh_Out");
        $monitor("%b  | %b |    %b    |   %b", sel, in, out_df, out_beh);
        in = 4'b1010;
        sel = 2'b00; #10;
        sel = 2'b01; #10;
        sel = 2'b10; #10;
        sel = 2'b11; #10;
        $finish;
    end
endmodule