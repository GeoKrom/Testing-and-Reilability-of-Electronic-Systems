`timescale 1ns/1ps

module TRCUTtb();
	
	reg CLKtb, SEtb, SItb;
	wire SOtb;
	TRCUT trcutInstance(SItb, SEtb, CLKtb, SOtb);

	//Block for clock generation  
	initial begin
		CLKtb = 0;
		#20
		forever begin
			#10 CLKtb =! CLKtb;
		end
	end
	
	//Block for functional testing of logic circuit CUT 
	initial 
	begin
		///Serial Input(SE=1)
		SEtb = 1;
		#60 SItb = 0;#60 SItb = 0;#60 SItb = 0;#60 SItb = 0; //SI = <0000>	
		#60 SEtb = 0;///Capture Mode for one cycle
		#20 SEtb = 1;SItb = 1;#60 SItb = 0;#60 SItb = 0;#60 SItb = 0;//SI = <0001>
		#60 SEtb = 0;///Capture Mode for one cycle
		#20 SEtb = 1;SItb = 0;#60 SItb = 1;#60 SItb = 0;#60 SItb = 0;//SI = <0010>
		#60 SEtb = 0;///Capture Mode for one cycle
		#20 SEtb = 1;SItb = 1;#60 SItb = 1;#60 SItb = 0;#60 SItb = 0;//SI = <0011>
		#60 SEtb = 0;///Capture Mode for one cycle
		#20 SEtb = 1;SItb = 0;#60 SItb = 0;#60 SItb = 1;#60 SItb = 0;//SI = <0100>
		#60 SEtb = 0;///Capture Mode for one cycle
		#20 SEtb = 1;SItb = 1;#60 SItb = 0;#60 SItb = 1;#60 SItb = 0;//SI = <0101>
		#60 SEtb = 0;///Capture Mode for one cycle
		#20 SEtb = 1;SItb = 0;#60 SItb = 1;#60 SItb = 1;#60 SItb = 0;//SI = <0110>
		#60 SEtb = 0;///Capture Mode for one cycle
		#20 SEtb = 1;SItb = 1;#60 SItb = 1;#60 SItb = 1;#60 SItb = 0;//SI = <0111>
		#60 SEtb = 0;///Capture Mode for one cycle
		#20 SEtb = 1;SItb = 0;#60 SItb = 0;#60 SItb = 0;#60 SItb = 1;//SI = <1000>
		#60 SEtb = 0;///Capture Mode for one cycle
		#20 SEtb = 1;SItb = 1;#60 SItb = 0;#60 SItb = 0;#60 SItb = 1;//SI = <1001>
		#60 SEtb = 0;///Capture Mode for one cycle
		#20 SEtb = 1;SItb = 0;#60 SItb = 1;#60 SItb = 0;#60 SItb = 1;//SI = <1010>
		#60 SEtb = 0;///Capture Mode for one cycle
		#20 SEtb = 1;SItb = 1;#60 SItb = 1;#60 SItb = 0;#60 SItb = 1;//SI = <1011>
		#60 SEtb = 0;///Capture Mode for one cycle
		#20 SEtb = 1;SItb = 0;#60 SItb = 0;#60 SItb = 1;#60 SItb = 1;//SI = <1100>
		#60 SEtb = 0;///Capture Mode for one cycle
		#20 SEtb = 1;SItb = 1;#60 SItb = 0;#60 SItb = 1;#60 SItb = 1;//SI = <1101>
		#60 SEtb = 0;///Capture Mode for one cycle
		#20 SEtb = 1;SItb = 0;#60 SItb = 1;#60 SItb = 1;#60 SItb = 1;//SI = <1110>
		#60 SEtb = 0;///Capture Mode for one cycle
		#20 SEtb = 1;SItb = 1;#60 SItb = 1;#60 SItb = 1;#60 SItb = 1;//SI = <1111>
		//END
	end  

endmodule