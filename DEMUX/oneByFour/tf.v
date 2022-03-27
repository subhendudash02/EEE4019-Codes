// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
`timescale 1ns / 1ps

module onebyfourdemux1;

	// Inputs
	reg in;
	reg sel;

	// Outputs
	wire out0;
  	wire out1;
  	wire out2;
  	wire out3;

	// Instantiate the Unit Under Test (UUT)
	onebyfourdemux uut (
      .in(in),
      .sel(sel),
      .out0(out0),
      .out1(out1),
      .out2(out2),
      .out3(out3)
	);

	initial begin
      $dumpfile("dump.vcd");
      $dumpvars(1); // Xilinx will not generate these two lines
		// Initialize Inputs
		sel = 00;
      	in = 1;
      	#100;
      
      	sel = 01;
      	in = 1;
      	#100;
      	
      	sel = 10;
      	in = 1;
      	#100;
      
      	sel = 11;
      	in = 1;
      	#100;
	end
endmodule
