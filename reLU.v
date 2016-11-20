module relu (output [31:0] pos, 
            input [31:0] in);

    assign pos = (in[31]) ? 0 : in;