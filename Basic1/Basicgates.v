`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2025 15:27:48
// Design Name: 
// Module Name: Basicgates
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Basicgates( input wire[1:0]a,
                   input wire[1:0]b,
                   input wire clk,rst,
                   output reg[1:0]y1
);



always@(posedge clk)begin
if (rst) 
    y1<=2'b00;
else if(!rst)
    y1<= a&b;
end
endmodule
