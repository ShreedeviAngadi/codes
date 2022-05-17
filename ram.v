`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:03:35 04/06/2022 
// Design Name: 
// Module Name:    ram 
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
module ram(addr,data_out,data_in,wr,cs);
parameter addr_size=4,word_size=4,memory_size=8;
input [addr_size-3:0] addr;
input [word_size-3:0] data_in;
input wr,cs;
output [word_size-3:0] data_out; 
reg [word_size-3:0] mem [memory_size-8:0];
assign data_in = mem[addr];
always @ (cs or wr)
if(wr) mem[addr] = data_in;
endmodule
