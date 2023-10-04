`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2023 04:45:08 PM
// Design Name: 
// Module Name: sign_extend
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


module sign_extend(
    input logic [31:0] instruction,
    output logic [31:0] extended_imm
);
    logic [4:0] srai;
    assign srai = instruction[24:20];

always_comb
    case(instruction[6:0])
          7'b0000011 /*I-type load*/     : 
              extended_imm = {instruction[31]? {20{1'b1}}:20'b0 , instruction[31:20]};
          7'b0010011 /*I-type addi*/     :
              begin 
              if((instruction[31:25]==7'b0100000&&instruction[14:12]==3'b101)||(instruction[14:12]==3'b001)||instruction[14:12]==3'b101)
                  extended_imm = {srai[4]? {27{1'b1}}:27'b0,srai};
              else
                  extended_imm = {instruction[31]? 20'b1:20'b0 , instruction[31:20]};
              end
          7'b0100011 /*S-type*/    : 
              extended_imm = {instruction[31]? 20'b1:20'b0 , instruction [31:25], instruction[11:7]};
          default                    : 
              extended_imm = {32'b0};
    endcase
endmodule
