`timescale 1ns / 1ns
`include "sample.v"

module sample_tb;

reg A;
reg B;
reg C;

wire D;
wire E;

sample uut(A,B,C,D,E);

initial begin
    $dumpfile("sample_tb.vcd");
    $dumpvars(0,sample_tb);

    A = 0;
    B = 0;
    C = 0;
    #10;

    A = 0;
    B = 0;
    C = 1;
    #10;

    A = 0;
    B = 1;
    C = 0;
    #10;

    A = 0;
    B = 1;
    C = 1;
    #10;

    $display("Test Complete");
end

endmodule