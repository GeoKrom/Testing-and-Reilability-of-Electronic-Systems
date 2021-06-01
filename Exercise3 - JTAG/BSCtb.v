`timescale 1ns/1ps	

module BSCtb();

	reg Data_INtb, ShiftIntb, ShiftDRtb, ClockDRtb, UpdateDRtb, Modetb;
	wire ShiftOuttb, Data_OUTtb;
	
	// BSC circuit instance for the testbench
	BSC bscInstance(Data_INtb, ShiftIntb, ShiftDRtb, ClockDRtb, UpdateDRtb, Modetb, ShiftOuttb, Data_OUTtb);
	
	//testbench starts here
	//Clock Generation for D flip-flop component
	initial begin
		ClockDRtb = 0;
		#20
		forever begin
			#10 ClockDRtb =! ClockDRtb;
		end
	end
	//
	
	//Clock Generation for Latch component
	initial begin
		UpdateDRtb = 0;
		#20
		forever begin
			#10 UpdateDRtb =! UpdateDRtb;
		end
	end
	//
	
	initial begin
	
		//initiallazation of multiplexers
		Modetb = 0;
		ShiftDRtb = 0;
		//Bellow begins the checking of every functionality of the circuit and its components
		//A
		ShiftIntb = 0;
		Data_INtb = 1;
		#40 Data_INtb = 0;
		#40 Data_INtb = 1;
		//B
		#20 ShiftIntb = 1;
		#20 ShiftDRtb = 1;
		#40 ShiftIntb = 0;
		#40 ShiftIntb = 1;
		//C
		// Every positive edge of the clock a bit passes from a bit passes from SRFF to LFF
		//D
		// Normal mode, from internal logic input to internal logic output
		#20 Modetb = 0; 
		#20 Data_INtb = 0;
		#60 Data_INtb = 1;
		//E
		// Test mode, data from LFF to internal logic outpu
		#20 Modetb = 1; 
		#20 ShiftIntb = 0;
		#40 ShiftIntb = 1;
		
	end
	//end of testbench
endmodule