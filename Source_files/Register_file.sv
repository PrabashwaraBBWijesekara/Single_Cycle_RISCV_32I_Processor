`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2023 11:26:03 PM
// Design Name: 
// Module Name: Register_file
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


module Register_file#
(parameter REG_ADDR=5,
 parameter REG_DATA=32)(
    input logic clk,  //clock
    input logic [REG_ADDR-1:0] reg_1,reg_2,reg_write, //addresses of 2 read registers and write register
    input logic [REG_DATA-1:0] reg_write_data,        //data for write register
    input logic reg_write_control,                    //control signal for write
    output logic [REG_DATA-1:0] reg_1_data,reg_2_data //read output data
    );
    //register array 32 x 32
    logic [REG_DATA-1:0] registers [(2**REG_ADDR)-1:0];
    
    //default values
    assign registers[1]=32'd20;
    assign registers[2]=32'd24;
    
    //write to a register
    always_ff @(posedge clk)
    begin
    if (reg_write_control== 1'b1)
    begin
        registers[reg_write]<=reg_write_data;
    end
    end
    
    //read registers
    assign reg_1_data = registers[reg_1];
    assign reg_2_data = registers[reg_2];
    
endmodule
