module max_pool_3x3 (
    input [31:0] v1,
    input [31:0] v2,
    input [31:0] v3,
    input [31:0] v4,
    input [31:0] v5,
    input [31:0] v6,
    input [31:0] v7,
    input [31:0] v8,
    input [31:0] v9,
    input en, 
    input clk,
    output reg [31:0]selected ); // should we implement as reg?

    wire [31:0] max12;
    wire [31:0] max34;
    wire [31:0] max56;
    wire [31:0] max78;
    wire [31:0] max14;
    wire [31:0] max58;
    wire [31:0] max18;
    wire [31:0] max19;

    max_relu m12 (v1, v2, max12);
    max_relu m34 (v3, v4, max34);
    max_relu m56 (v5, v6, max56);
    max_relu m78 (v7, v8, max78);
    max_c m14 (max12, max34, max14);
    max_c m58 (max56, max78, max58);
    max_c m18 (max14, max58, max18);
    max_relu m19(max18, v9, max19);

    always @ (posedge clk)
    begin
        if (en) begin
            selected = max_all;
        end
    end
endmodule
