`timescale 1ns / 1ps



module reg_file(
    input rst,
    input [4:0] reg1,
    input [4:0] reg2,
    input [4:0] regw,
    input [31:0] wdata,
    output [31:0] data1,
    output [31:0] data2,
    input RegWrite
  
    
    );
    reg [31:0] RegMem[31:0];
    assign data1=RegMem[reg1];
    assign data2=RegMem[reg2]; 
    always@*
    begin
    if(rst==0) 
    begin
    RegMem[0]=32'h0;
    RegMem[1]=32'h1;
    RegMem[2]=32'h2;
    RegMem[3]=32'h2;
    RegMem[4]=32'h2;
    RegMem[5]=32'h2;
    RegMem[6]=32'h2;
    RegMem[7]=32'h2;
    RegMem[8]=32'h2;
    RegMem[9]=32'h2;
    RegMem[10]=32'h2;
    RegMem[11]=32'h2;
    RegMem[12]=32'h2;
    RegMem[13]=32'h2;
    RegMem[14]=32'h2;
    RegMem[15]=32'h1;
    RegMem[16]=32'h1;
    RegMem[17]=32'h1;
    RegMem[18]=32'h2;
    RegMem[19]=32'h1;
    RegMem[20]=32'h1;
    RegMem[21]=32'h1;
    RegMem[22]=32'h2;
    RegMem[23]=32'h1;
    RegMem[24]=32'h1;
    RegMem[25]=32'h1;
    RegMem[26]=32'h2;
    RegMem[27]=32'h1;
    RegMem[28]=32'h1;
    RegMem[29]=32'h1;
    RegMem[30]=32'h2;
    RegMem[31]=32'h1;
    end
    end
    
    always@*
    begin
    if(RegWrite==1) RegMem[regw]<=wdata;
    end
    
       
     
endmodule
