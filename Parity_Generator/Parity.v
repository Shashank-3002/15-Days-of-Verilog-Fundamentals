//Even Parity Generator
module even_parity_gen (
    input [3:0] data,
    output parity
);
    assign parity = ^data;  // Even parity (XOR of all bits)
endmodule

//Even Parity Checker
module even_parity_check (
    input [3:0] data,
    input parity,
    output error
);
    assign error = ^{data, parity};
endmodule

