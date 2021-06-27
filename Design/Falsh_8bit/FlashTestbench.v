`timescale 1 ns / 1 ps
`default_nettype none

module ADC_8bit_tf;
  localparam real step   = 0.1;      // stepsize
  localparam real nsteps = 1000;     // Number of samples
  localparam real maxval = 11.0;     // largest input 
  localparam real minval = -11.0;
  
  real analog_in_real;
  
  reg [64:1] analog_in;
  wire [8:1] digital_out;
  
	// initialize the stimulus
   initial begin : stimulus 
    integer i;
    real sign;
    sign = 1.0;
    
	//create the stimulus for the input voltage from 11 -> -11 volts
    for (i = 0; i < nsteps ; i = i + 1)
     begin
       #10;
       analog_in_real = analog_in_real + (sign * step);
       if (analog_in_real >= maxval)
          sign = -1.0;
       if (analog_in_real <= minval)
          sign = +1.0;      
       
       analog_in = $realtobits(analog_in_real);
       
     end
     $stop;
  end  
  
  //initialise the module
  flash_8bit DUT ( .analog_in(analog_in), .dig_out(digital_out)); 
  
  //output the values as per to the variation of input voltage
  initial  
    $monitor($time,,$bitstoreal(analog_in),,digital_out);

endmodule