`timescale 1ns/1ps

module full_adder_tb;
    reg a, b, c_in;
    wire sum, c_out;

    // Instantiate the design under test (DUT)
    full_adder dut (
        .a(a),
        .b(b),
        .c_in(c_in),
        .sum(sum),
        .c_out(c_out)
    );

    initial begin

	$dumpfile("FA_tb.vcd");
	$dumpvars(0, full_adder_tb);

        $display("Testing Full Adder");
        $monitor("a=%b b=%b c_in=%b => sum=%b c_out=%b", a, b, c_in, sum, c_out);

        a = 0; b = 0; c_in = 0; #10;
        a = 0; b = 0; c_in = 1; #10;
        a = 0; b = 1; c_in = 0; #10;
        a = 0; b = 1; c_in = 1; #10;
        a = 1; b = 0; c_in = 0; #10;
        a = 1; b = 0; c_in = 1; #10;
        a = 1; b = 1; c_in = 0; #10;
        a = 1; b = 1; c_in = 1; #10;

        $finish;
    end
endmodule
