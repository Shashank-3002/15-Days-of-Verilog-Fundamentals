module tb_gray_converter;
    reg [3:0] bin;
    wire [3:0] gray;

    binary_to_gray conv (.bin(bin), .gray(gray));

    initial begin
        $dumpfile("BinarytoGray_tb.vcd");
        $dumpvars(0, tb_gray_converter);
        $display("Binary | Gray");
        $monitor("%b   | %b", bin, gray);
        bin = 4'b0000; #10;
        bin = 4'b0001; #10;
        bin = 4'b0011; #10;
        bin = 4'b0100; #10;
        bin = 4'b1111; #10;
        $finish;
    end
endmodule
