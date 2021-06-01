`timescale 1ns/1ps

module LFSR_8bittb();

	reg CLKtb;
	wire [7:0] LSFR_output;

	// Testbench starts here
	//Block for clock generation  
	initial begin
		CLKtb=0;
		#20
		forever begin
			#10 CLKtb=!CLKtb;
		end
	end
	
	//Instance model for lsfr
	LFSR_8bit lsfrInstance(CLKtb, LSFR_output);

endmodule