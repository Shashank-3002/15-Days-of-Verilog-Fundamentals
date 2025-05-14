module tb_comparator;
    reg [3:0] A, B;
    wire gt, eq, lt;

    comparator #(4) cmp (.A(A), .B(B), .A_gt_B(gt), .A_eq_B(eq), .A_lt_B(lt));

    initial begin
        $dumpfile("comparator_tb.vcd");
        $dumpvars(0, tb_comparator);
        $display("A    B    | A>B A=B A<B");
        $monitor("%b %b |  %b   %b   %b", A, B, gt, eq, lt);
        A = 4'b0011; B = 4'b0001; #10;
        A = 4'b1000; B = 4'b1010; #10;
        A = 4'b0101; B = 4'b1111; #10;
        $finish;
    end
endmodule
