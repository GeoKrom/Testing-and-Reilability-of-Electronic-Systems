`timescale 1ns/1ps

module TRCUTwithLSFR(SE,CLK,SO);

	// input signals
	input SE, CLK;
	
	// output signal
	output SO;
	
	// Necessary wires for connections between instances
	wire SE, CLK, SO;
	
	// Bus wire for lsfr circuit
	wire [7:0] lsfr_out;
	
	// LSFR instance
	LFSR_8bit lsfrInstance(CLK, lsfr_out);
	
	// Single output from the LSFR as a serial input in TRCUT circuit
	wire lsfr_output = lsfr_out[3];
	
	// TRCUT instance
	TRCUT trcutInstance(lsfr_output, SE, CLK, SO);
	
endmodule