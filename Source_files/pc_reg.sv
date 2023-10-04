`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2023 11:41:31 AM
// Design Name: 
// Module Name: pc_reg
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

module pc_reg#
    (parameter WIDTH = 8)
    (input logic clk, reset,
     input logic [WIDTH-1:0] in,
     output logic [WIDTH-1:0] out);

always_ff @(posedge clk, posedge reset)
    if (reset) out <= 0;
    else out <= in;
    
endmodule
