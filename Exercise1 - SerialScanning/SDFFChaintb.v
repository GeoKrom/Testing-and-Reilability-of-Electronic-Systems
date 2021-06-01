`timescale 1ns/1ps	

module SDFFChaintb();

	reg CLKtb, SEtb, SItb;
	//input wires
	wire DI_1,DI_2,DI_3,DI_4;
	//output wires
	wire SO1tb, SO2tb, SO3tb, SO4tb;
	reg CUT_1,CUT_2,CUT_3,CUT_4;
	assign DI_1 = CUT_1;
	assign DI_2 = CUT_2;
	assign DI_3 = CUT_3;
	assign DI_4 = CUT_4;

	//the name of the instance is sdffInstance
	SDFFChain sdffInstance(CLKtb,DI_1, DI_2, DI_3, DI_4, SItb, SEtb, SO1tb, SO2tb, SO3tb, SO4tb);
	
	
	//Block for clock generation  
	initial begin
		CLKtb=0;
		#20
		forever begin
			#10 CLKtb=!CLKtb;
		end
	end
  
	//Block for clock generation  
	initial 
	begin
	////Testing of SE=0 (input path from DI1)
		SEtb=0;
		CUT_1=0;
		#60
		CUT_1=1;
		#60
		CUT_2=0;
		#60
		CUT_3=1;
		#60
		CUT_4=0;
		#60
		////Testing of SE=1 (input path from SI)    
		SEtb=1;
		SItb=1;
		#60
		SItb=0;
	end  
  
endmodule