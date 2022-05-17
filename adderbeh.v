`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:47:27 03/09/2022 
// Design Name: 
// Module Name:    adderbeh 
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

module adderbeh(a,b,cin,s,c);
input a,b,cin;
reg output s,c;
always@(a,b,cin)
begin
s=a^b^cin;
c=((a&b)|(b&cin)|(cin&a));
end
endmodule
