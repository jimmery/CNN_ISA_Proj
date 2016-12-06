module not_gate_tb();
    wire out;
    reg clock;

    always begin
      #1 clock = !clock;
    end

    initial begin
    clock = 0;

    #10
    $finish;
    end

    not_gate notGate(clock, out);
endmodule