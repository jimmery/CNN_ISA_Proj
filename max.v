module max( input [7:0] i1, 
            input [7:0] i2,
            input clk,  
            output reg [7:0] max); 
    initial begin
        max = 0;
    end
    always @ (posedge clk) begin
        if (i1[7]) begin
            if (i2[7])
                max = 0;
            else
                max = i2;
        end else begin
            if (i2[7])
                max = i1;
            else if (i1[6:0] > i2[6:0])
                max = i1;
            else
                max = i2;
        end
    end

endmodule