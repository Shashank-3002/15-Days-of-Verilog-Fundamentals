module tb_alu_4bit;
    reg [3:0] A, B;
    reg [2:0] sel;
    wire [3:0] result;

    alu_4bit alu (.A(A), .B(B), .sel(sel), .result(result));

    initial begin
        $dumpfile("4bit_ALU_tb.vcd");
        $dumpvars(0,tb_alu_4bit);
        $display(" A    B   Sel | Result");
        $monitor("%b %b %b | %b", A, B, sel, result);
        A = 4'b0101; B = 4'b0011; 
        sel = 3'b000; #10;
        sel = 3'b001; #10;
        sel = 3'b010; #10;
        sel = 3'b011; #10;
        sel = 3'b100; #10;
        $finish;
    end
endmodule