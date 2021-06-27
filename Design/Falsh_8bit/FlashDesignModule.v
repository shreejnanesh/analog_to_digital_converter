`timescale 1ns / 1ps

module flash_8bit(
	output [8:1] dig_out,	//8 bit digital converted signal
	input [64:1] analog_in	//64 bit bits converted input signal
	);
	
	parameter conv_time =10;	//delay for output just for reference purpose
	reg [8:1] del_sig;
	
	//* Function to convert signal into its 2s complement form if negetive voltage
	//* For positive potential equivalent hexadecimal value is converted
	function[8:1] ADC_8bit_bipolar;
	
	parameter max_pos_dig_val =127;
	parameter max_in_sig = 10;
	
	input [64:1] analog_in;
	reg [8:1] dig_2s_com_sig;
	real analog_sig,analog_abs,analog_ltd;
	integer dig_sig;
		
	begin
		analog_sig = $bitstoreal (analog_in);
		
		//check if the value is in between +10 to -10
		if(analog_sig < 0) begin
			analog_abs = -analog_sig;
			
			if(analog_abs > max_in_sig)
				analog_abs = max_in_sig;
					
			analog_ltd = -analog_abs;
		end
		else begin
			analog_abs =analog_sig;
			
			if(analog_abs > max_in_sig)
				analog_abs = max_in_sig;
					
			analog_ltd = analog_abs;
		end
		//convert the values into 2's complement if it is negetive
		if (analog_ltd == max_in_sig)
			dig_sig = max_pos_dig_val;
		else if (analog_ltd == -max_in_sig)
			dig_sig = -max_pos_dig_val;
		else
				dig_sig = $rtoi (analog_ltd * 12.8);	//resolution of the ADC
				
			dig_2s_com_sig = dig_sig;
			ADC_8bit_bipolar = dig_2s_com_sig;
		end
	endfunction

	always
		# conv_time
		del_sig = ADC_8bit_bipolar(analog_in);
	//Just to compare with block and assign statements.
	assign dig_out = del_sig;
	
endmodule
