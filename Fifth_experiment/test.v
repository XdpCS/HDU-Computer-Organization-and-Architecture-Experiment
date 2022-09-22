`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:29:34 12/17/2020
// Design Name:   RAM
// Module Name:   F:/Desktop/FPGA/Fifth_experiment/test.v
// Project Name:  Fifth_experiment
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RAM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg [7:2] Mem_Addr;
	reg [1:0] MUX;
	reg Mem_Write;
	reg Clk;

	// Outputs
	wire [7:0] LED;

	// Instantiate the Unit Under Test (UUT)
	RAM uut (
		.Mem_Addr(Mem_Addr), 
		.MUX(MUX), 
		.Mem_Write(Mem_Write), 
		.Clk(Clk), 
		.LED(LED)
	);
	always #20 Clk=~Clk;
	initial begin
		// Initialize Inputs
		Mem_Addr = 0;
		MUX = 0;
		Mem_Write = 1;
		Clk = 0;
		
		// Wait 100 ns for global reset to finish
		#100;
		Mem_Addr = 6'b000000;
		MUX = 0;
		Mem_Write = 0;
        
		// Add stimulus here

	end
      
endmodule

