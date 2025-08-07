`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2025 15:49:32
// Design Name: 
// Module Name: basicgates_tb
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


module basicgates_tb;

    reg clk, rst;
    reg [1:0] a, b;
    wire [1:0] y1;

Basicgates uut(    
                .a(a),
                .b(b),     
                .clk(clk),
                .rst(rst),
                .y1(y1));

always #5 clk = ~clk;
initial begin
        // Initialize signals
        clk = 0;
        rst = 1;      // Start with reset asserted
        a = 2'b00;
        b = 2'b00;

        #10 rst = 0;  // Deassert reset to allow operation

        // Apply test vectors
        #10 a = 2'b00; b = 2'b11;
        #10 a = 2'b00; b = 2'b01;
        #10 a = 2'b01; b = 2'b10;
        #10 a = 2'b10; b = 2'b11;

        #20 $finish;  // End simulation
    end


endmodule
