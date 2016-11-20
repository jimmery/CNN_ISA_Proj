module max_pool_tb;

  /* Make a regular pulsing clock. */
  reg clk = 0;
  always #5 clk = !clk;

  reg [7:0] in1;
  reg [7:0] in2;
  reg [7:0] in3;
  reg [7:0] in4;
  reg en;

  initial begin
    in1 = 2;
    in2 = -2;
    in3 = 0;
    in4 = 4;
    en = 1;
  end

  wire [7:0] value;
  max_pool m(in1, in2, in3, in4, en, clk, value);

  initial
    $monitor("At time %t, value = %h (%0d)",
      $time, value, value);

endmodule //test