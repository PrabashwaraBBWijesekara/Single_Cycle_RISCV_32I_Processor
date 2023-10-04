`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2023 03:05:02 PM
// Design Name: 
// Module Name: mux
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



module mux#
(parameter DATA_WIDTH=32)(
  input logic [DATA_WIDTH:0] in_1,in_2,
  input logic sel,
  output logic out
    );
  assign out = sel ? in_1 : in_2;
endmodule
