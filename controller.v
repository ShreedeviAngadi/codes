`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:58:24 05/16/2022 
// Design Name: 
// Module Name:    controller 
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
module controller(lda,ldb,decb,done,clk,eq,start);
input clk;
input eq,start;
output reg lda,ldb,done;
output reg decb;
reg[2:0] state;
parameter s0=3'b000,s1=3'b001,s2=3'b010,s3=3'b011,s4=3'b100,s5=3'b101;
always @ (posedge clk)
begin
case(state)
s0:if(start)state<=s1;
s1:state<=s2;
s2:state<=s3;
s3:#2 if(eq)state<=s4;
else if(!eq)state<=s3; 
s4:state<=s5;
s5:state<=s5;
default:state<=s0;
endcase
end
always @(state)
 begin
case(state)
s0:begin lda=0;ldb=0;decb=0;end
s1:begin lda=1;end
s2:begin lda=0;ldb=1;end
s3:if (eq) done=1;
else if(!eq) begin
lda=0;ldb=1;decb=1;
end
s4:begin lda=0;ldb=1;decb=0;end
s5:begin done=1;lda=0;ldb=0;decb=0;end
default:begin lda=0;ldb=0;end
endcase
end
endmodule
