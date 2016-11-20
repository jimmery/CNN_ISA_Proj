module max_tb;

    reg[7:0] i1;
    reg[7:0] i2;

    initial begin
        i1 = -1;
        i2 = -2;
    end

  /* Make a regular pulsing clock. */
  reg clk = 0;
  always #5 clk = !clk;
  always #20 i1 = 20;

  wire [7:0] value;
  max_relu m(i1, i2, value);

  initial
    $monitor("At time %t, value = %h (%0d)",
      $time, value, value);

endmodule //test