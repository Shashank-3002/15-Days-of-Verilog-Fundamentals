module logic_gates(
    input a, b,
    output and_out, or_out, not_out, nand_out, nor_out, xor_out, xnor_out
);
    and  (and_out, a, b);
    or   (or_out, a, b);
    not  (not_out, a);
    nand (nand_out, a, b);
    nor  (nor_out, a, b);
    xor  (xor_out, a, b);
    xnor (xnor_out, a, b);
endmodule
