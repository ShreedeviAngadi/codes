`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:33:59 05/16/2022 
// Design Name: 
// Module Name:    and2 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module and2(y,a,b);
input[15:0] b;
input a;
output[15:0] y;
assign a=1;
assign y=a&b;
endmodule
