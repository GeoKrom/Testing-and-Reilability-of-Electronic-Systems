`timescale 1ns/1ps

module TRCUTwithMISRtb();

	reg CLKtb, SEtb;
	wire signtb;
	
	TRCUTwithMISR dut(SEtb,CLKtb,signtb);
	//Block for clock generation  
	initial begin
		CLKtb = 0;
		#100
		forever begin
			#50 CLKtb =! CLKtb;
		end
	end


	// Testbench starts here
	initial  begin
		SEtb = 0;
		#400 SEtb = 1;
		#1400 SEtb = 0;
		#100 SEtb = 1;
		#1400 SEtb = 0;
		#100 SEtb = 1;
		#1400 SEtb = 0;
		#100 SEtb = 1;
	end

endmodule