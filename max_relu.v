module max_relu( input [31:0] i1, 
            input [31:0] i2,
            output [31:0] max); 

    assign max = (~i1[31]) ? 
                        ((~i2[31]) ? 
                                ((i1[30:0] > i2[30:0]) ? 
                                        i1 
                                        : i2) 
                                : i1) 
                        : ((~i2[31]) ? 
                                i2 
                                : 0);

endmodule