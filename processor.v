`timescale 1ns / 1ps



module processor(
input clk,
input rst
    );
wire [31:0] Instruction_code;
wire A;
wire [2:0] B;
wire [6:0] C;
wire[4:0] read1_if_id;
wire[4:0] read2_if_id;
wire [4:0] write_if_id;
wire [4:0] write_ex_wb;
wire [4:0] write_id_ex;
wire [31:0] wdata_ex_wb;
wire Regwrite;
wire Regwrite_id_ex;
wire Regwrite_ex_wb;
wire [31:0] data1;
wire [31:0] data2;
wire [31:0] data1_id_ex;
wire [31:0] data2_id_ex;
wire[31:0] wdata_ALU;
wire  [3:0] ALU_op;
wire  [3:0] ALU_op_id_ex;


Instruction_Fetch X1(clk,rst,Instruction_code);
IF_ID_REGISTER X2(clk,Instruction_code,A,B,C,read1_if_id,read2_if_id,write_if_id);
Control X3(A,B,C,ALU_op,Regwrite);
reg_file X4(rst,read1_if_id,read2_if_id,write_ex_wb,wdata_ex_wb, data1,data2,Regwrite_ex_wb);
ID_EX_REGISTER X5(clk,rst,Regwrite,data1,data2,write_if_id,ALU_op,Regwrite_id_ex,data1_id_ex,data2_id_ex,write_id_ex,ALU_op_id_ex);
ALU X6(ALU_op_id_ex,data1_id_ex,data2_id_ex,wdata_ALU);
EX_WB_REGISTER X7(clk,rst,Regwrite_id_ex,wdata_ALU,write_id_ex,wdata_ex_wb,Regwrite_ex_wb,write_ex_wb);
endmodule
