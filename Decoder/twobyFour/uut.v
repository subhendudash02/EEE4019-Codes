// Code your design here
`timescale 1ns / 1ps

module decoder(A1, A0, en, D3, D2, D1, D0);
  // 2:4 decoder
  input A1, A0, en;
  output D3, D2, D1, D0;
 
  assign D0 = (~A0) & (~A1) & en;
  assign D1 = (~A0) & A1 & en;
  assign D2 = A0 & (~ A1) & en;
  assign D3 = A0 & A1 & en;
endmodule