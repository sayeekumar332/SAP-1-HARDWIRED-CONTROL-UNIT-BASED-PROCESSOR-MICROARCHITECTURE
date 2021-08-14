`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:35:55 07/28/2021 
// Design Name: 
// Module Name:    ALU8_1 
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
module ALU8_1(input [7:0] A,input [7:0] B,input SU,input EU , output [7:0] ALU_OUT);
wire [7:0] ALU_OUT_w = SU ? A-B : A+B; //Let X be a variable ; Prefixing a -(minus symbol) to a variable is equivalent to taking 2's complement of the variable.
assign ALU_OUT = EU ? ALU_OUT_w : 8'hZZ;
endmodule
