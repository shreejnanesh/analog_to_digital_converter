
module testbench;

	reg clk;
	reg	enable;
	wire out_flag;
	wire [7:0] digital_out;
	
	localparam clk_pd = 80; 			//*	(clock period * clock cycles) i.e:(10*8) for this code 
	localparam real step   = 1;			// stepsize
	localparam real nsteps = 100;		// Number of samples
	localparam real maxval = 11.0;		// largest input 
	localparam real minval = 0.0;		// Minimum input
	real analogsig;
	reg [63:0] analog_disc;
	
	initial begin
    	$dumpfile("traces");
    	$dumpvars;
    end
    
	//initialize the test bench stimulus
	initial begin : stimulus 
    integer i;
    real sign;
    sign = 1.0;

	//function to generate real valued signal varing from 0 -> 11
    for (i = 0; i < nsteps ; i = i + 1)
		begin
			#clk_pd;
		   analogsig = analogsig + (sign * step);
		   if (analogsig >= maxval)
			  sign = -1.0;
		   if (analogsig <= minval)
			  sign = +1.0;      
		   analog_disc = $realtobits(analogsig);
		end
	 $stop;
	end  
	
	wire cmp;
	wire [7:0] value;
	wire sample;


	// instantiate the Design module
	ADC_SAR1 uut(
				.out_flag(out_flag),
				.digital_out(digital_out),
				.clk(clk),
				.enable(enable),
				.cmp(cmp),
				.sample(sample),
				.value(value)
				);
	
	//connect sample and hold network to the design module
	sampleandhold uut1(
				.cmp(cmp),
				.analog_in(analog_disc),
				.sample(sample),
				.value(value)
				);

	//Generate clock signal
	always begin
		clk = ~clk; #5;
	end
	initial clk = 1'b0;
	
	//display required values to the output console
	initial begin 
		$monitor($time, "enable=%b out_flag=%b result=%b sample=%b uut.value=%b cmp=%b uut.state=%b mask=%b",enable,out_flag,digital_out,uut.sample,uut.value,uut.cmp,uut.state,uut.temp);

	#100; enable = 0;
	#100; enable = 1;
//	#2000;
//	$stop;
	end
endmodule