`timescale 1ns / 1ps

module full_subtractor_dataflow(x, y, c_in, diff, c_out);
// I/O port declarations
input x, y, c_in;
output diff, c_out;
// specify the function of a full adder
  assign {c_out, diff} = x - y - c_in;
endmodule