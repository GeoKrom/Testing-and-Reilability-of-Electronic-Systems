`timescale 1ns/1ps

module TapControllerFSMtb();

	parameter FSM_SIZE = 4;
	reg TCKtb, TMStb, TRSTtb;
	wire [FSM_SIZE-1:0] statetb;
	TapControllerFSM FSMInstance(TCKtb, TMStb, TRSTtb, statetb);
	
	//Block for clock generation  
	initial begin
		TCKtb = 0;
		#100
		forever begin
			#50 TCKtb =! TCKtb;
		end
	end
	//
	always begin
		TRSTtb = 1;
		#100 TRSTtb = 0;
		#100 TMStb = 1;
		#100 TMStb = 0;
		#100 TMStb = 1;
		#100 TMStb = 1;
		#100 TMStb = 0;
	   #100 TMStb = 0;
		#100 TMStb = 1;
		#100 TMStb = 1;
		#100 TMStb = 0;
	end
endmodule