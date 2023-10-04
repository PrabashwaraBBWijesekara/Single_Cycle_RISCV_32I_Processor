`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2023 11:57:23 AM
// Design Name: 
// Module Name: Adder
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
module Adder#( 
    parameter adder_size=8
    )(
    input logic [adder_size-1:0] a,
    input logic [adder_size-1:0] b,
    output logic [adder_size-1:0] y);
    
    assign y = a+b;
endmodule
