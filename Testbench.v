`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.09.2023 10:28:56
// Design Name: 
// Module Name: Testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Testbench();
reg clk,st;
reg [7:0]A,B;
wire Done;
wire [15:0]Result;
eightbit_pipmultiplier uut (.Clk(clk),.St(st),.A(A),.B(B),.Done(Done),.Result(Result));

initial begin 
clk=0;
st=0;
A=0;
B=0;
#20 st=1;
A=10;
B=5;
#150 A=15;
B=4;
#1000 $finish;
end
always 
#5 clk=~clk;
endmodule

