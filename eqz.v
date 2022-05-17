`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:10:19 05/16/2022 
// Design Name: 
// Module Name:    eqz 
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
module eqz(eq,bout);
input [15:0] bout;
output  eq;
assign eq = (bout==0);
endmodule

