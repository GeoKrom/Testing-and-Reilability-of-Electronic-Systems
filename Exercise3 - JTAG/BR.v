`timescale 1ns/1ps	

module BR(TDI, CaptureDR, ClockDR, TDO_BR);

	input TDI, CaptureDR, ClockDR;
	output TDO_BR;
	wire TDI, CaptureDR, ClockDR, TDO_BR;
	reg DFlipFlop;
	wire and_out_gate;

	// Here we create the and gate
	assign and_out_gate = TDI & CaptureDR;
	
	//Here we create the flip-flop
	assign TDO_BR = DFlipFlop;
	
	always @  (posedge ClockDR)
	begin
		DFlipFlop<=and_out_gate;
	end
	
endmodule