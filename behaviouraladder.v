`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:06:45 03/09/2022 
// Design Name: 
// Module Name:    behaviouraladder 
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
module behaviouraladder(a,b,cin,s,c);
input a,b,cin;
output reg s,c;
always @ (a,b,cin)
begin
s=a^b^cin;
c=(a&b)|(b&cin)|(cin&a);
end
endmodule
