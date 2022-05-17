`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:02:25 04/06/2022 
// Design Name: 
// Module Name:    ram_tb 
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
module ram_tb;
reg [3:0] addr;
wire [3:0] data_out;
reg [3:0] data_in;
reg write, select;
integer k, myseed;
ram RAM(data_out,data_in,addr,write,select);
initial
begin
for (k=0;k<=8;k=k+1)
begin
data_in = (k+k) % 256; write = 1; select = 1;
#2 addr = k; write=0; select=0;
end
repeat (20)
begin
#2 addr = $random(myseed) % 8;
write = 0; select = 1;
$monitor ("Address: %5d, Data: %4d",addr,data_out);
end 
end
initial myseed = 35;
endmodule
