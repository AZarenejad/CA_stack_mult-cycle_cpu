module register #(parameter integer WORD_LENGTH) (clk, rst, ld, in, out);

	input clk, rst, ld;
	input[WORD_LENGTH - 1:0] in;
	output reg [WORD_LENGTH - 1:0] out;
	
	always @(posedge clk, posedge rst)
	begin
	  if (rst)
	    out <= 0 ;
	  else if (ld)
	    out <= in ;
	 end 
endmodule
