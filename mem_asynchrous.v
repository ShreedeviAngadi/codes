`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:51:59 04/08/2022 
// Design Name: 
// Module Name:    mem_asynchrous 
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
module mem_asynchronous(addr,data_in,data_out,cs,wr,rd);
input [3:0] addr;
input [3:0] data_in;
input cs,wr,rd;
output reg [3:0] data_out;
reg[3:0] mem [8:0];
assign data_in= (cs&&rd)?data_out:8'bz;
always@(addr or data_in or data_out or cs or wr or rd)
if(cs && wr && !rd)
mem[addr]=data_in;
always@(addr or data_in or data_out or cs or wr or rd)
if(cs && rd && !wr)
data_out=mem[addr];
endmodule
