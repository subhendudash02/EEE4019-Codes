// Code your design here
// Code your design here
`timescale 1ns / 1ps

module onebyfourdemux (
  input in,
  input [1:0] sel,
  output reg out0,
  output reg out1,
  output reg out2,
  output reg out3
);
  
  always @ (in or sel) begin
    
    
    case(sel)
      
      2'b00 : begin
        out0 = in;
  		out1 = 0;
        out2 = 0;
        out3 = 0;
      end
      
      2'b01 : begin
        out0 = 0;
  		out1 = in;
        out2 = 0;
        out3 = 0;
      end
      
      2'b10 : begin
        out0 = 0;
  		out1 = 0;
        out2 = in;
        out3 = 0;
      end
      
      2'b11 : begin
        out0 = 0;
  		out1 = 0;
        out2 = 0;
        out3 = in;
      end
      
    endcase
  end
endmodule
      