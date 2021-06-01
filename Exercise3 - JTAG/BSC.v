`timescale 1ns/1ps	

module BSC(Data_IN, ShiftIn, ShiftDR, ClockDR, UpdateDR, Mode, ShiftOut, Data_OUT);

	input Data_IN, ShiftIn, ShiftDR, ClockDR, UpdateDR, Mode;
	output ShiftOut, Data_OUT;
	
	wire Data_IN, ShiftIn, ShiftDR, ClockDR, UpdateDR, Mode, ShiftOut, Data_OUT;
	reg SRFFQ, LFFQ;
   wire DfromMux, DataOutFromMux;
	
	//Here we create the first multiplexer
	assign DfromMux = (ShiftDR)?ShiftIn:Data_IN;
	assign ShiftOut = SRFFQ;
	
	assign DataOutfromLatch = LFFQ;

	//here we create the SRFF
	always @ (posedge ClockDR)
	begin
		SRFFQ<=DfromMux;
	end
  
	//here we create the LFF
	always @ (posedge UpdateDR)
	begin
		LFFQ<=SRFFQ;
	end
	//Here we create the second multiplexer
	assign DataOutFromMux = (Mode)?DataOutfromLatch:Data_IN;
	assign Data_OUT = DataOutFromMux;
endmodule