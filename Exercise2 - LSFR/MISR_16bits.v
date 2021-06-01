`timescale 1ns/1ps

module MISR_16bits(
  input clk,
  input misr_input,
  output reg [15:0] MISR = 65535
);
	
	wire feedback = MISR[15];
	
	always @(posedge clk)
	begin
		MISR[0] <= feedback;
		MISR[1] <= MISR[0];
		MISR[2] <= MISR[1];
		MISR[3] <= MISR[2];
		MISR[4] <= MISR[3] ^  misr_input;
		MISR[5] <= MISR[4];
		MISR[6] <= MISR[5];
		MISR[7] <= MISR[6];
		MISR[8] <= MISR[7];
		MISR[9] <= MISR[8] ^ feedback;
		MISR[10] <= MISR[9];
		MISR[11] <= MISR[10];
		MISR[12] <= MISR[11];
		MISR[13] <= MISR[12];
		MISR[14] <= MISR[13] ^ feedback;
		MISR[15] <= MISR[14];
	end
endmodule
