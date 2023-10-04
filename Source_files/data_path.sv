`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2023 11:52:57 PM
// Design Name: 
// Module Name: data_path
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
module data_path(
    input logic clk,reset,
    input logic reg_write_control,alu_control,mux_alu_control, // control signal for the register write
    input logic [31:0] reg_write_data, // temporary writing data for the reg file
    output logic[31:0] alu_out
    
    );
    //program counter 
    logic [7:0] pc_4,pc_value;
    logic [31:0] instruction;
    logic [31:0] reg_1_data,reg_2_data;
    logic[31:0] extended_imm;
    logic[31:0] mux_alu_out;
   
    adder_4 adder_4_pc(.in_1(pc_value),.in_2(8'b1),.out(pc_4));
    pc_reg   pc(.in(pc_4),.clk(clk),.reset(reset),.out(pc_value));
    Instruction_memory ins_mem(.addr_in(pc_value),.instruction(instruction));
    Register_file reg_file(.clk(clk),.reg_1(instruction[19:15]),.reg_2(instruction[24:20]),.reg_write(instruction[11:7]),.reg_write_data(reg_write_data),.reg_write_control(reg_write_control),.reg_1_data(reg_1_data),.reg_2_data(reg_2_data));
    sign_extend sign_ext(.instruction(instruction),.extended_imm(extended_imm));
    mux mux_alu(.in_1(extended_imm),.in_2(reg_2_data),.sel(mux_alu_control),.out(mux_alu_out));
    ALU alu(.in_1(reg_1_data),.in_2(mux_alu_out),.alu_control(alu_control),.out(alu_out));
    
endmodule
