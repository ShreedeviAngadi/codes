`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:08:53 05/16/2022 
// Design Name: 
// Module Name:    add 
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
module add(z,nseed,pseed);
input [15:0] nseed,pseed;
output reg [15:0] z;
always @(*)
assign z = nseed + pseed;
assign pseed=z;
endmodule

