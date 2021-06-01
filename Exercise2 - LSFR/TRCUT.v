`timescale 1ns/1ps

module TRCUT(SI, SE, CLK, SO);

	input SI, SE, CLK;
	output SO;
	//Input wires for each element
	wire SI, SE, CLK;
	//Output wires for each element
	wire i_out, j_out;
	wire SOa, SOb, SOc, SO;
	
	//Structure of the test circuit
	SDFFChain sdffInstance(CLK, j_out, i_out, 0, 0, SI, SE, SOa, SOb, SOc, SO);
	CUT cutInstance(SOa, SOb, SOc, SO, i_out, j_out);

endmodule