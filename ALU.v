`timescale 1ns / 1ps


module ALU(
input [3:0] ctrl,
input[31:0] data1,
input [31:0] data2,
output reg [31:0] write_data
    );
 always@(ctrl or data1 or  data2)
 begin 
    case(ctrl)
           1 : write_data=data1+data2;
           2 : write_data=data1-data2;
           3 : write_data=data1 & data2;
           4 : write_data=data1 | data2;
           5 : write_data=data1>>data2;
           6 : write_data=data2<<data1;
    endcase
end
endmodule
