module max_pool_2x2 (
    input [31:0] v1,
    input [31:0] v2,
    input [31:0] v3,
    input [31:0] v4,
    input en, 
    input clk,
    output reg [31:0]selected ); // should we implement as reg?

    wire [31:0] max12;
    wire [31:0] max34;
    wire [31:0] max_all;

    max_relu m1 (v1, v2, max12);
    max_relu m2 (v3, v4, max34);
    max_c m3 (max12, max34, max_all); 

    always @ (posedge clk)
    begin
        if (en) begin
            selected = max_all;
        end
    end
endmodule
