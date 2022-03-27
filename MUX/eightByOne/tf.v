// Code your testbench here
// or browse Examples
`timescale 1ns / 1ps

module eightbymux1;

	// Inputs
	reg a;
	reg b;
  	reg c;
  	reg d;
  	reg e;
  	reg f;
  	reg g;
  	reg h;
  	reg sel;

	// Outputs
	wire yout;

	// Instantiate the Unit Under Test (UUT)
	eightbyonemux uut (
      .a(a),
      .b(b),
      .c(c),
      .d(d),
      .e(e),
      .f(f),
      .g(g),
      .h(h),
      .sel(sel)
	);

	initial begin
      $dumpfile("dump.vcd");
      $dumpvars(1); // Xilinx will not generate these two lines
		// Initialize Inputs
		sel = 3'b000;
      	a = 4'b0110;
      	b = 4'b0000;
      	c = 4'b1100;
      	d = 4'b0001;
      	e = 4'b0010;
      	f = 4'b1000;
      	g = 4'b1001;
      	h = 4'b0011;
      	#100;
      
      	sel = 3'b011;
      	a = 4'b1111;
      	b = 4'b0101;
      	c = 4'b1010;
      	d = 4'b0001;
      	e = 4'b0010;
      	f = 4'b1001;
      	g = 4'b0100;
      	h = 4'b0011;
      	#100;
      
      	sel = 3'b100;
      	a = 4'b1110;
      	b = 4'b0001;
      	c = 4'b1010;
      	d = 4'b0101;
      	e = 4'b1000;
      	f = 4'b0011;
      	g = 4'b0110;
      	h = 4'b0000;
      	#100;
	end
endmodule
