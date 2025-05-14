module tb_ripple_adder;
    reg [3:0] A, B;
    reg Cin;
    wire [3:0] Sum;
    wire Cout;

    ripple_carry_adder_4bit RCA (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));

    initial begin

        $dumpfile("HA_tb.vcd");
        $dumpvars(0, tb_ripple_adder);

        $display("A     B     Cin  | Sum   | Cout");
        $monitor("%b %b    %b   | %b  |  %b", A, B, Cin, Sum, Cout);
        A = 4'b0001; B = 4'b0010; Cin = 0; #10;
        A = 4'b1111; B = 4'b0001; Cin = 0; #10;
        A = 4'b0101; B = 4'b0011; Cin = 1; #10;
        $finish;
    end
endmodule
