module tb_parity;
    reg [3:0] data;
    wire parity;
    wire error;

    even_parity_gen gen (.data(data), .parity(parity));
    even_parity_check chk (.data(data), .parity(parity), .error(error));

    initial begin
        $dumpfile("Parity_tb.vcd");
        $dumpvars(0, tb_parity);
        $display("Data | Parity | Error");
        $monitor("%b |   %b    |   %b", data, parity, error);
        data = 4'b0000; #10;
        data = 4'b0010; #10;
        data = 4'b1010; #10;
        data = 4'b0111; #10;
        $finish;
    end
endmodule