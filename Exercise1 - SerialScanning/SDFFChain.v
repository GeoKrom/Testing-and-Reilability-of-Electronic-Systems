`timescale 1ns/1ps

module SDFFChain(CLK, DI1, DI2, DI3, DI4, SI, SE, SO1, SO2, SO3, SO4);

	input CLK, DI1, DI2, DI3, DI4, SI, SE;
	output SO1, SO2, SO3, SO4;
	//Input wires for each element
	wire CLK, DI1, DI2, DI3, DI4, SI, SE;
	//Output wires for each element
	wire SO1, SO2, SO3, SO4;

	// Four scan d flip-flop instances
	//Scan chain
	SDFF sdff1(CLK, DI1, SI, SE, SO1);	//Inputs: SI,  DI1 | Output: SO1
	SDFF sdff2(CLK, DI2, SO1, SE, SO2);	//Inputs: SO1, DI2 | Output: SO2
	SDFF sdff3(CLK, DI3, SO2, SE, SO3); //Inputs: SO2, DI3 | Output: SO3
	SDFF sdff4(CLK, DI4, SO3, SE, SO4); //Inputs: SO3, DI4 | Output: SO4

endmodule