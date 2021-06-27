module sampleandhold(
	output cmp,
	input [63:0] analog_in,
	input sample,
	input [7:0] value
	);

	//Sample and hold
	real hold;
	always@(posedge sample) 
		hold = $bitstoreal(analog_in);
	
	// compare the generated signal with the input
	assign cmp = (hold >= value);	


endmodule