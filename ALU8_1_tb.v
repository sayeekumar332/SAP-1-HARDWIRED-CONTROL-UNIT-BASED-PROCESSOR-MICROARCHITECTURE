`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:40:48 07/28/2021
// Design Name:   ALU8_1
// Module Name:   F:/SAP PROCESSOR/ALU8/ALU8_1_tb.v
// Project Name:  ALU8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU8_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU8_1_tb;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg SU;
	reg EU;

	// Outputs
	wire [7:0] ALU_OUT;

	// Instantiate the Unit Under Test (UUT)
	ALU8_1 uut (
		.A(A), 
		.B(B), 
		.SU(SU), 
		.EU(EU), 
		.ALU_OUT(ALU_OUT)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		SU = 0;
		EU = 0;

		// Wait 100 ns for global reset to finish
		#100;
      A = 8'h35;
		B = 8'h34;
		SU = 0;
		EU = 1;  
		// Add stimulus here
     #100;
      A = 8'h35;
		B = 8'h34;
		SU = 1;
		EU = 1;
	end
      
endmodule

