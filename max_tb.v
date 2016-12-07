module max_tb;

    reg[31:0] i1;
    reg[31:0] i2;

    initial begin
        i1 = -1;
        i2 = -2;
    end

  /* Make a regular pulsing clock. */
  reg clk = 0;
  always #5 clk = !clk;
  initial begin
    #12 i1 = 20;  // @ t = 12
    #16 i2 = 10;  // @ t = 28
    #22 i2 = 35;  // @ t = 50
    #29 i1 = 5;   // @ t = 79
    #38 i1 = -3;  // @ t = 117
    #52 i1 = 0;   // @ t = 169
    #100 $stop;   // @ t = 269
  end

  wire [31:0] value;
  reg en = 1;
  max m(i1, i2, en, clk, value);

  initial
    $monitor("At time %t, value = %h (%0d)",
      $time, value, value);

endmodule //test