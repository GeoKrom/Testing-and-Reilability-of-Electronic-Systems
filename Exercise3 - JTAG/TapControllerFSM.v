`timescale 1ns/1ps

module TapControllerFSM(TCK, TMS, TRST, state);
	
	//--------FSM size--------//
	parameter FSM_SIZE = 4;
	
	//--------Inputs--------//
	input TCK, TMS, TRST;
	
	//--------Output--------//
	output reg [FSM_SIZE-1:0] state;
	
	//--------Wires and Regs--------//
	wire TCK, TMS, TRST;
	reg [FSM_SIZE-1:0] next_state = 4'b0000;
	
	//--------FSM States--------//
	parameter TEST_LOGIC_RESET = 0;
	parameter RUN_TEST_IDLE = 1;
	parameter SELECT_DR_SCAN = 2;
	parameter CAPTURE_DR = 3;
	parameter SHIFT_DR = 4;
	parameter EXIT1_DR = 5;
	parameter PAUSE_DR = 6;
	parameter EXIT2_DR = 7;
	parameter UPDATE_DR = 8;
	parameter SELECT_IR_SCAN = 9;
	parameter CAPTURE_IR = 10;
	parameter SHIFT_IR = 11;
	parameter EXIT1_IR = 12;
	parameter PAUSE_IR = 13;
	parameter EXIT2_IR = 14;
	parameter UPDATE_IR = 15;
	
	//--------FSM Code Starts Here--------//
	//--------For debugging purposes--------//
	reg [255:0] STATE_AS_STR;
	always @ (state)
	begin
		case(state)
			TEST_LOGIC_RESET:
				begin
					STATE_AS_STR<="Test_Logic_Reset";
				end
			RUN_TEST_IDLE:
				begin
					STATE_AS_STR<="Run_Test_Idle";
				end
			SELECT_DR_SCAN:
				begin
					STATE_AS_STR<="Select_DR_Scan";
				end
			CAPTURE_DR:
				begin
					STATE_AS_STR<="Capture_DR";
				end
			SHIFT_DR:
				begin
					STATE_AS_STR<="Shift_DR";
				end
			EXIT1_DR:
				begin
					STATE_AS_STR<="Exit1_DR";
				end
			PAUSE_DR:
				begin
					STATE_AS_STR<="Pause_DR";
				end
			EXIT2_DR:
				begin
					STATE_AS_STR<="Exit2_DR";
				end
			UPDATE_DR:
				begin
					STATE_AS_STR<="Update_DR";
				end
			SELECT_IR_SCAN:
				begin
					STATE_AS_STR<="Select_IR_Scan";
				end
			CAPTURE_IR:
				begin
					STATE_AS_STR<="Capture_IR";
				end
			SHIFT_IR:
				begin
					STATE_AS_STR<="Shift_IR";
				end
			EXIT1_IR:
				begin
					STATE_AS_STR<="Exit1_IR";
				end
			PAUSE_IR:
				begin
					STATE_AS_STR<="Pause_IR";
				end
			EXIT2_IR:
				begin
					STATE_AS_STR<="Exit2_IR";
				end
			UPDATE_IR:
				begin
					STATE_AS_STR<="Update_IR";
				end
		endcase	
	end
	//
	
	//--------Asychronous FSM--------//
	//--------For every value of TMS signal change state--------//
	always @ (state, TMS)
	begin: MAIN_FSM_ASYCHRONOUS
		case(state)
			TEST_LOGIC_RESET:
				if(TMS == 1'b1) begin
					next_state = TEST_LOGIC_RESET;
				end else begin
					next_state = RUN_TEST_IDLE;
				end
			RUN_TEST_IDLE:
				if(TMS == 1'b1) begin
					next_state = SELECT_DR_SCAN;
				end else begin
					next_state = RUN_TEST_IDLE;
				end
			SELECT_DR_SCAN:
				if(TMS == 1'b1) begin
					next_state = SELECT_IR_SCAN;
				end else begin
					next_state = CAPTURE_DR;
				end
			CAPTURE_DR:
				if(TMS == 1'b1) begin
					next_state = EXIT1_DR;
				end else begin
					next_state = SHIFT_DR;
				end
			SHIFT_DR:
				if(TMS == 1'b1) begin
					next_state = EXIT1_DR;
				end else begin
					next_state = SHIFT_DR;
				end
			EXIT1_DR:
				if(TMS == 1'b1) begin
					next_state = UPDATE_DR;
				end else begin
					next_state = PAUSE_DR;
				end
			PAUSE_DR:
				if(TMS == 1'b1) begin
					next_state = EXIT2_DR;
				end else begin
					next_state = PAUSE_DR;
				end
			EXIT2_DR:
				if(TMS == 1'b1) begin
					next_state = UPDATE_DR;
				end else begin
					next_state = SHIFT_DR;
				end
			 UPDATE_DR:
				if(TMS == 1'b1) begin
					next_state = SELECT_DR_SCAN;
				end else begin
					next_state = RUN_TEST_IDLE;
				end
			SELECT_IR_SCAN:
				if(TMS == 1'b1) begin
					next_state = TEST_LOGIC_RESET;
				end else begin
					next_state = CAPTURE_IR;
				end
			CAPTURE_IR:
				if(TMS == 1'b1) begin
					next_state = EXIT1_IR;
				end else begin
					next_state = SHIFT_IR;
				end
			SHIFT_IR:
				if(TMS == 1'b1) begin
					next_state = EXIT1_IR;
				end else begin
					next_state = SHIFT_IR;
				end
			EXIT1_IR:
				if(TMS == 1'b1) begin
					next_state = UPDATE_IR;
				end else begin
					next_state = PAUSE_IR;
				end
			PAUSE_IR:
				if(TMS == 1'b1) begin
					next_state = EXIT2_IR;
				end else begin
					next_state = PAUSE_IR;
				end
			EXIT2_IR:
				if(TMS == 1'b1) begin
					next_state = UPDATE_IR;
				end else begin
					next_state = SHIFT_IR;
				end
			UPDATE_IR:
				if(TMS == 1'b1) begin
					next_state = SELECT_DR_SCAN;
				end else begin
					next_state = RUN_TEST_IDLE;
				end
			default: next_state = TEST_LOGIC_RESET;
		endcase
	end
	//
	
   //--------Sychronous FSM--------//
	always @ (posedge TCK)
	begin
		if(TRST == 1'b1) begin
			state <= #1 TEST_LOGIC_RESET;
		end else begin
			state <= #1 next_state;
		end
	end
	//
	
endmodule