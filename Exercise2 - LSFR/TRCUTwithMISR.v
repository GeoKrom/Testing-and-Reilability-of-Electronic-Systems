`timescale 1ns/1ps

module TRCUTwithMISR(SE,CLK,sign);

	// input signals
	input SE, CLK;
	
	// output signal
	output sign;
	
	// Necessary wires for connections between instances
	wire SE, CLK, SO, sign;
	
	// Bus wire for lsfr circuit and misr circuit
	wire [7:0] lsfr_out;
	wire [15:0] misr_output;
	
	// LSFR instance
	LFSR_8bit lsfrInstance(CLK, lsfr_out);
	
	// Single output from the LSFR as a serial input in TRCUT circuit
	wire lsfr_output = lsfr_out[3];
	
	// TRCUT instance
	TRCUT trcutInstance(lsfr_output, SE, CLK, SO);
	
	// MISR instance
	MISR_16bits misrInstance(CLK, SO, misr_output);
	
	wire misr_out = misr_output[7];
	assign sign = misr_out;
	
endmodule