`timescale 1ns / 1ps

module half_adder_behavioral1;

	// Inputs
	reg x;
	reg y;

	// Outputs
	wire sum;
  	wire c_out;

	// Instantiate the Unit Under Test (UUT)
	half_adder_behavioral uut (
      	.x(x), 
      	.y(y), 
      	.sum(sum),
      	.c_out(c_out)
	);

	initial begin
      $dumpfile("dump.vcd");
      $dumpvars(1); // Xilinx will not generate these two lines
		// Initialize Inputs
		x = 0;
		y = 0;
      	#100;
        
      	x = 0;
		y = 1;
      	#100;
        
      	x = 1;
		y = 0;
      	#100;
      
      	x = 1;
		y = 1;
      	#100;
	end
endmodule

