`timescale 1ns/1ps

module TRCUTwithLSFRtb();
	
	reg CLKtb, SEtb;
	wire SOtb;
	
	TRCUTwithLSFR dut(SEtb,CLKtb,SOtb);
	//Block for clock generation  
	initial begin
		CLKtb = 0;
		#20
		forever begin
			#10 CLKtb =! CLKtb;
		end
	end


	// Testbench starts here
	initial  begin
		SEtb = 1;
		#60 SEtb = 0;
		#20 SEtb = 1;
		#1200 SEtb = 0;
		#20 SEtb = 1;
		#1200 SEtb = 0;
		#20 SEtb = 1;
		#1200 SEtb = 0;
		#20 SEtb = 1;
	end

endmodule