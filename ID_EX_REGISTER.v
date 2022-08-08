`timescale 1ns / 1ps
module ID_EX_REGISTER(
input clk,
input rst,
input Regwritte_ctrl,
input [31:0] Data1_reg,
input [31:0] Data2_reg,
input [4:0] Rd_IF_ID,
input [3:0] ALuctrl_i,
output reg Regwritte_ctrl_o,
output reg [31:0] Data1_reg_o,
output reg [31:0] Data2_reg_o,
output reg [4:0] Rd_IF_ID_o,
output reg [3:0] ALuctrl__o
    );
 always@(posedge clk,negedge rst)
 begin
 if(rst==0)
 begin
 Regwritte_ctrl_o=0;
 ALuctrl__o=0;
 end
 else
 begin
Regwritte_ctrl_o<=Regwritte_ctrl;
 Data1_reg_o<=Data1_reg;
Data2_reg_o<=Data2_reg;
Rd_IF_ID_o<=Rd_IF_ID;
ALuctrl__o<=ALuctrl_i;
end
end
endmodule
