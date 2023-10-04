`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2023 09:39:35 AM
// Design Name: 
// Module Name: ALU
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


module ALU(
input logic[31:0] in_1,in_2,
input logic alu_control,
output logic[31:0] out,
output logic zero_flag,overflow_flag,negative_flag,sign_flag

    );
always_comb 
    case(alu_control)
     1'b1:
       out <= in_1+in_2;
    endcase  
    
endmodule
