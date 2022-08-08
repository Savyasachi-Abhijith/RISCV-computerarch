`timescale 1ns / 1ps

module Instruction_Fetch(
input clk,
input reset,
output [31:0] Instruction_code
    );
reg [31:0] PC;
reg[7:0] Mem[35:0];
assign Instruction_code={Mem[PC+3],Mem[PC+2],Mem[PC+1],Mem [PC]};
always @ (reset)
begin
if (reset==0) //if reset is equal to logic 0
    begin
    {Mem[3],Mem[2],Mem[1],Mem[0]}=32'h007302b3;//add t0,t1,t2//5
    {Mem[7],Mem[6],Mem[5],Mem[4]}=32'h41248433;//sub so,s1,s2//8
    {Mem[11],Mem[10],Mem[9],Mem[8]}=32'h01ac9c33;//sll s8,s9,10//24
    {Mem[15],Mem[14],Mem[13],Mem[12]}=32'h01eede33;//srl t3,t4,t5//28
    {Mem[19],Mem[18],Mem[17],Mem[16]}=32'h016aea33;//or s4,s5,s6//20
    {Mem[23],Mem[22],Mem[21],Mem[20]}=32'h013975b3;//and a1,s2,s3
    {Mem[27],Mem[26],Mem[25],Mem[24]}=32'h00d675b3;
    {Mem[31],Mem[30],Mem[29],Mem[28]}=32'h007302b3;
    {Mem[35],Mem[34],Mem[33],Mem[32]}=32'h00d675b3;//and a1,a2,a3
    end
end

always@(posedge clk, negedge reset)
begin
if(reset==0)
    PC<=0;
else
    PC<=PC+4;
end 

endmodule