`timescale 1ns / 1ps

module half_subtractor_dataflow(x, y, diff, c_out);
// I/O port declarations
	input x, y;
	output diff, c_out;
// specify the function of a full adder
  	assign {c_out, diff} = x - y;
endmodule