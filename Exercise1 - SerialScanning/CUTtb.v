module CUTtb();

	//input registers to our instantiated module
	reg tb_a, tb_b, tb_c, tb_d;
	
	//bus for writing data to the inputs
	wire [3:0] tb_cut_inputs;
	
	//wires for reading the output of the instantiated module
	wire tb_i, tb_j;
	
	//the name of the instance is cutCircuitInstance
	CUT cutCircuitInstance(tb_a,tb_b,tb_c,tb_d,tb_i,tb_j);
	
	//Functional testing of the logic circuit
	
	//now we create the bus that consists of the three input registers values
	assign tb_cut_inputs = {tb_a, tb_b, tb_c, tb_d};
	
	//this block is running only at the beginning of the simulation
	initial begin
		{tb_a, tb_b, tb_c, tb_d} = 4'b0000;
  
		//the following line runs forever every 5 time units
		forever #20 {tb_a, tb_b, tb_c, tb_d} = tb_cut_inputs + 1;
  
	end
endmodule