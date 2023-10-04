`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2023 11:29:00 PM
// Design Name: 
// Module Name: Instruction_memory
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
module Instruction_memory #(
    parameter ADDR_SIZE = 8,
    parameter INST_SIZE = 32
)
(
    input logic [ADDR_SIZE-1:0] addr_in,
    output logic [INST_SIZE-1:0] instruction
    );
 // instruction memory array
 logic [INST_SIZE-1:0] instructions [2**(ADDR_SIZE)-1:0];


 
 //saved instructions
assign instructions[8]   = 32'h00208433;//      add  r8,r1,r2           ALUResult = h3 = r8
// assign instructions[0]   = 32'h00007033;//      and  r0,r0,r0           ALUResult = h0 = r0          
// assign instructions[1]   = 32'h00100093;//      addi r1,r0, 1           ALUResult = h1 = r1
// assign instructions[2]   = 32'h00200113;//      addi r2,r0, 2           ALUResult = h2 = r2
// assign instructions[3]   = 32'h00308193;//      addi r3,r1, 3           ALUResult = h4 = r3
// assign instructions[4]   = 32'h00408213;//      addi r4,r1, 4           ALUResult = h5 = r4
// assign instructions[5]   = 32'h00510293;//      addi r5,r2, 5           ALUResult = h7 = r5
// assign instructions[6]   = 32'h00610313;//      addi r6,r2, 6           ALUResult = h8 = r6
// assign instructions[7]   = 32'h00718393;//      addi r7,r3, 7           ALUResult = hB = r7
 
 //return the instruction
  assign instruction = instructions[addr_in];
endmodule
 