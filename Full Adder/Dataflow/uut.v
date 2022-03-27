`timescale 1ns / 1ps

module full_adder_dataflow(x, y, c_in, sum, c_out);
// I/O port declarations
input x, y, c_in;
output sum, c_out;
// specify the function of a full adder
assign {c_out, sum} = x + y + c_in;
endmodule