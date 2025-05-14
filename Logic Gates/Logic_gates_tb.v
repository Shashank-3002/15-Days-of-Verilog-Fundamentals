`timescale 1ns / 1ps

module logic_gates_tb;

    // Testbench signals
    reg a, b;
    wire and_out, or_out, not_out, nand_out, nor_out, xor_out, xnor_out;

    // Instantiate the DUT (Device Under Test)
    logic_gates dut (
        .a(a),
        .b(b),
        .and_out(and_out),
        .or_out(or_out),
        .not_out(not_out),
        .nand_out(nand_out),
        .nor_out(nor_out),
        .xor_out(xor_out),
        .xnor_out(xnor_out)
    );

    initial begin
        // Set up waveform dump
        $dumpfile("Logic_gates_tb.vcd");
        $dumpvars(0, logic_gates_tb);

        $display("a b | AND OR NOT NAND NOR XOR XNOR");
        $monitor("%b %b |  %b   %b   %b    %b    %b   %b    %b", a, b, and_out, or_out, not_out, nand_out, nor_out, xor_out, xnor_out);

        // Test all combinations
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end

endmodule
