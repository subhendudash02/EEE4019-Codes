`timescale 1ns / 1ps

module half_adder_behavioral(x, y, sum, c_out);
// I/O port declarations
input x, y;
output sum, c_out;
reg sum, c_out; // need to be declared as reg types
// specify the function of a full adder
always @(x, y)
{c_out, sum} = x + y;
endmodule