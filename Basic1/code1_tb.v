`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2025 08:52:40
// Design Name: 
// Module Name: code1_tb
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


module code1_tb;

    reg  [2:0] a, b; 
    wire [2:0] c;      

    code1 uut(.a(a), .b(b), .c(c));

    initial begin
        a = 3'b001; b = 3'b000;
        #10;  
        a = 3'b001; b = 3'b100;
        #10;
        a = 3'b101; b = 3'b001;
        #10;
        $finish; // end simulation
    end

endmodule
