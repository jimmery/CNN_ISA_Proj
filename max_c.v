module max_c(input [31:0] i1, 
            input [31:0] i2,
            output [31:0] max); 

    assign max = (i1 > i2) ? i1 : i2;
endmodule