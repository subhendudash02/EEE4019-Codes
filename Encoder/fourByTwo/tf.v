`timescale 1ns / 1ps

module encodertt;

	// Inputs
	reg D3;
	reg D2;
  	reg D1;
  	reg D0;

	// Outputs
	wire A1;
  	wire A0;

	// Instantiate the Unit Under Test (UUT)
	encoder uut (
      	.D0(D0),
      	.D1(D1),
      	.D2(D2),
      	.D3(D3),
      	.A1(A1), 
      	.A0(A0)
	);

	initial begin
      $dumpfile("dump.vcd");
      $dumpvars(1); // Xilinx will not generate these two lines
		// Initialize Inputs
      D3 = 0; D2 = 0; D1 = 0; D0 = 1; #100;
      D3 = 0; D2 = 0; D1 = 1; D0 = 0; #100;
	  D3 = 1; D2 = 0; D1 = 0; D0 = 0; #100;
	end
endmodule
