`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:11:38 05/16/2022 
// Design Name: 
// Module Name:    cntr 
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
module cntr(bout,din,ldb,decb,clk);
input [15:0] din;
input clk,decb,ldb;
output reg [15:0] bout;
always @(posedge clk)
if(ldb) bout <= din;
else if(decb) bout <= bout-1;
endmodule

