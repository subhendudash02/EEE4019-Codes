`timescale 1ns / 1ps

module twobymux;

	// Inputs
	reg I0;
	reg I1;
  	reg S0;

	// Outputs
	wire Y;

	// Instantiate the Unit Under Test (UUT)
	twobyonemux uut (
      	.I0(I0), 
      	.I1(I1), 
      	.S0(S0),
      	.Y(Y)
	);

	initial begin
      $dumpfile("dump.vcd");
      $dumpvars(1); // Xilinx will not generate these two lines
		// Initialize Inputs
		I0 = 0; I1 = 0; S0 = 0; #100;
     	I0 = 0; I1 = 0; S0 = 1; #100;
      	I0 = 0; I1 = 1; S0 = 0; #100;
      	I0 = 0; I1 = 1; S0 = 1; #100;
      	I0 = 1; I1 = 0; S0 = 0; #100;
      	I0 = 1; I1 = 0; S0 = 1; #100;
      	I0 = 1; I1 = 1; S0 = 0; #100;
      	I0 = 1; I1 = 1; S0 = 1; #100;
	end
endmodule
