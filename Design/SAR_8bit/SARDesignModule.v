module ADC_SAR1(
	output reg [7:0] digital_out,	//8 bit digital output
	output out_flag,			 	//will be 1 when conversion is completed				
	output sample,
	output [7:0] value,
	input cmp,
	input [63:0] analog_in,			//64 bit real signal (converted into bits)
	input clk,						//clock input
	input enable					//enable signal which drives the module
	);
	
	//State assignment for all combinations
	parameter STATE_WAIT = 0;
	parameter STATE_SAMPLE = 1;
	parameter STATE_CONVERT = 2;
	parameter STATE_DONE = 3;
	
	//connection assignment
	
	reg [1:0] state;
	reg [7:0] temp;
	reg [7:0] result;
	
	
	//* SAR code generation
	//* Comparision of input signal
	//* updating the result and digital_out
	always@(posedge clk) begin
		if(!enable) 
			state <= STATE_WAIT;
		else begin
			case(state)
				STATE_WAIT:								//wait until enable is 1 and sample of input is aquired	
					state <= STATE_SAMPLE;
				STATE_SAMPLE:begin						//capture sampl and initialize SAR registers
					state <= STATE_CONVERT;
					temp <= 8'b10000000;
					result <= 8'b0;
				end
				STATE_CONVERT:begin						
				//compare the signal with SAR generated signal and update with respect to temp value
					if(cmp) 
						result <= result | temp;
					temp <= temp >> 1;
					if(temp[0]) 
						state <= STATE_DONE;
					end
				STATE_DONE:begin						//Tap the result ot output
					digital_out <= result;
					if(enable)
						state <= STATE_WAIT;
					end
			endcase
		end		
	end
	//update the status of flags
	assign sample = (state == STATE_SAMPLE);
	assign value = result | temp;
	assign out_flag = (state == STATE_DONE);
	
endmodule

