// Code your testbench here
// or browse Examples
`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:59:06 07/12/2019
// Design Name:   pgm1
// Module Name:   E:/COURSE DETAILS/Fall 2019/osp1/test_pgm1.v
// Project Name:  osp1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pgm1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_pgm1;

	// Inputs
	reg A;
	reg B;

	// Outputs
	wire C;

	// Instantiate the Unit Under Test (UUT)
	pgm1 uut (
		.A(A), 
		.B(B), 
		.C(C)
	);

	initial begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
      	A = 0;
		B = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
      	A = 1;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
     	A = 1;
		B = 1;
		#100;
	end
      
endmodule

