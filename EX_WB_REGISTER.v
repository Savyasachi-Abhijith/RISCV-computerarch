`timescale 1ns / 1ps



module EX_WB_REGISTER(
    input clk,
    input rst,
    input writei,
    input [31:0] wdatai,
    input [4:0] rdreg,
    output reg[31:0] wdatao,
    output reg writeo,
    output reg [4:0] rdrego
    );
    always@(posedge clk,negedge rst)
    begin
    if(rst==0)
    begin
    wdatao=0;
    writeo=0;
    rdrego=0;
    end
    else
    begin
    wdatao=wdatai;
    writeo=writei;
    rdrego=rdreg;
    end
    end
endmodule
