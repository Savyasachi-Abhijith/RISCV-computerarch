`timescale 1ns / 1ps

module Control(
input A,
input [2:0] B,
input [6:0] C,
output reg [3:0] ALU_op,
output reg Regw
    );
always@(A or B or C)
begin
Regw=1;
case({A,B})
4'b0000:ALU_op=1;
4'b1000:ALU_op=2;
4'b0111:ALU_op=3;
4'b0110:ALU_op=4;
4'b0001:ALU_op=6;
4'b0101:ALU_op=5;
endcase
end
endmodule
