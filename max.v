module max( input [31:0] i1, 
            input [31:0] i2,
            input en,  
            output reg [31:0] max); 
    initial begin
        max = 0;
    end
    always @ (en) begin
        if (i1[31]) begin
            if (i2[31])
                max = 0;
            else
                max = i2;
        end else begin
            if (i2[31])
                max = i1;
            else if (i1[30:0] > i2[30:0])
                max = i1;
            else
                max = i2;
        end
    end

endmodule