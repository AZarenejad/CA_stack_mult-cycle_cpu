`timescale 1ns/1ns
module test_cpu();
  reg clk = 0  , rst = 0 ;
  
  always#100 clk = ~clk ;
  cpu uut(clk, rst);
  initial begin
    #100 ;
    rst = 1 ;
    #100 ;
    rst = 0;
    #10000000;
    $stop;
    
  end

endmodule
