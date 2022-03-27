`timescale 1ns / 1ps

module half_subtractor_behavioral(x, y, diff, c_out);
// I/O port declarations
input x, y;
output diff, c_out;
reg diff, c_out; // need to be declared as reg types
// specify the function of a full adder
always @(x, y)
{c_out, diff} = x - y;
endmodule