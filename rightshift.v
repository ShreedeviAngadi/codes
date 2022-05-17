`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:07:08 05/16/2022 
// Design Name: 
// Module Name:    rightshift 
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
module rightshift(x,pseed);
input[15:0] pseed;
output [15:0] x;
assign x = pseed>>1;
endmodule

