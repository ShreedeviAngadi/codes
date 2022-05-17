`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:06:30 05/16/2022 
// Design Name: 
// Module Name:    pipo 
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
module pipo(dout,din,ld,clk);
input[15:0] din;
input ld;
input clk;
output reg [15:0] dout;
always @(posedge clk)
if(ld) dout <= din;
endmodule
