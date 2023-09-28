module moduleName #(
    parameter SIZE
) (
    input [SIZE-1:0] in_1,in_2,
    output [SIZE-1:0] out
);

  assign out = in_1 + in_2;  
endmodule