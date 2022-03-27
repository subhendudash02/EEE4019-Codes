// Code your design here
`timescale 1ns / 1ps

module eightbyonemux (
  input [3:0] a,
  input [3:0] b,
  input [3:0] c,
  input [3:0] d,
  input [3:0] e,
  input [3:0] f,
  input [3:0] g,
  input [3:0] h,
  input [3:0] sel,
  output reg [3:0] yout
);
  
  always @ (a or b or c or d or e or f or g or h or sel) begin
    
    
    case(sel)
      3'b000 : yout <= a;
      3'b001 : yout <= b;
      3'b010 : yout <= c;
      3'b011 : yout <= d;
      3'b100 : yout <= e;
      3'b101 : yout <= f;
      3'b110 : yout <= g;
      3'b111 : yout <= h;
    endcase
  end
endmodule
      