// Code your design here
`timescale 1ns / 1ps

module encoder(D3, D2, D1, D0, A1, A0);
  // 4:2 encoder
  input D3, D2, D1, D0;
  output A1, A0;
  
  or or1(A1, D3, D2);
  or or2(A0, D3, D1);
endmodule