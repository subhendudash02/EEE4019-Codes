// Code your design here
`timescale 1ns / 1ps

module twobyonemux(I0, I1, S0, Y);
  input I0, I1, S0;
  output Y;
  wire a, b;
  
  and and1(a, I0, !S0);
  and and2(b, I1, S0);
  or or1(Y, a, b);
endmodule