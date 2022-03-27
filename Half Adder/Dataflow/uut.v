`timescale 1ns / 1ps

module half_adder_dataflow(x, y, sum, c_out);
// I/O port declarations
input x, y;
output sum, c_out;
// specify the function of a full adder
assign {c_out, sum} = x + y;
endmodule