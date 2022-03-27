`timescale 1ns / 1ps

module TestModule;
  // Inputs
  reg a;
  reg b;
  reg c;

  // Outputs
  wire d0;
  wire d1;
  wire d2;
  wire d3;
  wire d4;
  wire d5;
  wire d6;
  wire d7;

  // Instantiate the Unit Under Test (UUT)
  Decoder uut (
  .a(a),
  .b(b),
  .c(c),
  .d0(d0),
  .d1(d1),
  .d2(d2),
  .d3(d3),
  .d4(d4),
  .d5(d5),
  .d6(d6),
  .d7(d7)
  );
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1); // Xilinx will not generate these two lines
    // Initialize Inputs
    a = 0;
    b = 0;
    c = 0;
    // Wait 100 ns for global reset to finish
    #100;
    a = 1;
    b = 0;
    c = 1;
    // Wait 100 ns for global reset to finish
    #100;
  end
endmodule
