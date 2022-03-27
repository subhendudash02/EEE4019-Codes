// Code your testbench here
// or browse Examples

`timescale 1ns / 1ps

module decodertt;

	// Inputs
	reg A1;
	reg A0;
  	reg en;

	// Outputs
	wire D3;
  	wire D2;
  	wire D1;
  	wire D0;

	// Instantiate the Unit Under Test (UUT)
	decoder uut (
      .A1(A1),
      .A0(A0),
      .en(en),
      .D3(D3),
      .D2(D2),
      .D1(D1),
      .D0(D0)
	);

	initial begin
      $dumpfile("dump.vcd");
      $dumpvars(1); // Xilinx will not generate these two lines
		// Initialize Inputs
      	A0 = 0;
		A1 = 0;
      	en = 1;
      	#100;
      
      	A0 = 0;
		A1 = 1;
      	en = 1;
      	#100;
        
      	A0 = 1;
		A1 = 0;
      	en = 1;
      	#100;
      
      	A0 = 1;
		A1 = 1;
      	en = 1;
      	#100;
	end
endmodule

