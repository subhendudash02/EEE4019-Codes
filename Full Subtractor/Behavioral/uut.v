`timescale 1ns / 1ps

module full_subtractor_behavioral(x, y, c_in, diff, c_out);
// I/O port declarations
input x, y, c_in;
output diff, c_out;
reg diff, c_out; // need to be declared as reg types
// specify the function of a full adder
always @(x, y, c_in)
{c_out, diff} = x - y - c_in;
endmodule