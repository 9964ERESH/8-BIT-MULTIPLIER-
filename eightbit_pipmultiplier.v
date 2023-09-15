`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.09.2023 10:19:32
// Design Name: 
// Module Name: eightbit_pipmultiplier
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


module eightbit_pipmultiplier(
    input Clk,
    input rst,
    input St,
    input [7:0]A,
    input [7:0]B,
    output reg Done,
    output reg [15:0]Result
    );
    reg St_d;
    reg [7:0]A_d, B_d;
    wire done_d;
    wire [15:0]result_d;
    eightbit_multiplier uut(.Clk(Clk),.St(St_d),.A(A_d),.B(B_d),.Done(done_d),.Result(result_d));
    always @(posedge Clk or posedge rst) begin 
    if(rst) begin 
    St_d<=0;
    A_d<=0;
    B_d<=0;
    Done<=0;
    Result<=0;
    end
    else begin 
    St_d<=St;
    A_d<=A;
    B_d<=B;
    Done<=done_d;
    Result<=result_d;
    end
    end
endmodule


