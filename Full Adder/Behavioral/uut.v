`timescale 1ns / 1ps

module full_adder_behavioral(x, y, c_in, sum, c_out);
// I/O port declarations
input x, y, c_in;
output sum, c_out;
reg sum, c_out; // need to be declared as reg types
// specify the function of a full adder
always @(x, y, c_in)
{c_out, sum} = x + y + c_in;
endmodule