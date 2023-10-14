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
input logic[3:0] alu_control,

output logic[31:0] out,
output logic zero_flag,negative_flag,positive_flag
);

always_comb
        begin
            out = 'd0;
            negative_flag = 'b0;
            positive_flag = 'b0;
            zero_flag = 'b0;
            case(alu_control)
            4'b0010:        // ADD
                   out = in_1 + in_2;
            4'b0110:    //Subtract      
                begin       
                out = $signed(in_1) - $signed(in_2);
                negative_flag = ($signed(out) < $signed(1'd0));
                positive_flag = ($signed(out) > $signed(1'd0));
                zero_flag = ($signed(out) == $signed(1'd0));
                end
            4'b0100:        //SLL
                    out = in_1 << in_2;
            4'b1010:        //SLT
                    out = $signed(in_1) < $signed(in_2);
            4'b0101:        //SLTU
                    out = in_1 < in_2;
            4'b0101:        //XOR
                    out = in_1 ^ in_2;
            4'b1000:        //SRL
                    out = in_1 >> in_2;
            4'b1100:        //SRA
                    out = $signed(in_1) >>> in_2;
            4'b1000:
                    out = in_1 | in_2;
            4'b1001:
                    out = in_1 & in_2;
            4'b0111:
                    begin       //unsigned branch
                    out = in_1- in_2;
                    negative_flag = in_1 < in_2;
                    positive_flag = in_1 > in_2;
                    zero_flag = (out == 1'd0);
                    end
            default: 
                    out = 'b0;
            endcase
        end
   
    
endmodule
