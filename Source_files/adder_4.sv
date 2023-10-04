`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2023 10:02:40 PM
// Design Name: 
// Module Name: adder_4
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

module adder_4 #
   ( parameter SIZE = 8) 
   (
    input logic [SIZE-1:0] in_1,in_2,
    output logic [SIZE-1:0] out
);

  assign out = in_1 + in_2;  
endmodule
