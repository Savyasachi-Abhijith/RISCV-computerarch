`timescale 1ns / 1ps



module IF_ID_REGISTER(
input clk,
input [31:0] Instruction_code,
output reg A,
output reg[2:0] B,
output reg[6:0] C,
output reg[4:0] read1,
output reg[4:0] read2,
output reg[4:0] write
    );
always@(posedge clk)
begin
read1=Instruction_code[19:15];
read2=Instruction_code[24:20];
write=Instruction_code[11:7];
A=Instruction_code[30];
B=Instruction_code[14:12];
C=Instruction_code[6:0];
end
endmodule
