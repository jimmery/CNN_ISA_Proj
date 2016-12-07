// no simulations run. 
module max_decode(
    input clk, 
    input en, // turn on the max_decode.
    input [31:0] buffer [511:0], // is this how to do it? 
    input [11:0] inst, 

    
)；

wire [3:0] in1_reg;
wire [3:0] in2_reg;
wire [3:0] dst_reg;

// represents the 32 max modules. 
reg [31:0] max_en;
reg [5:0] iterator;

assign in1_reg = inst[11:8];
assign in2_reg = inst[7:4];
assign dst_reg = inst[3:0];

reg [15:0] buffer [31:0] val;

reg [31:0] in1 [31:0];
reg [31:0] in2 [31:0];
wire [31:0] out [31:0];

max_top( in1, in2, max_en, clk, out );

always @(posedge clk)
begin
    iterator = 0; 
    max_en = 0;
    if (en) begin
        if (max_en[iterator])
            iterator = iterator + 1;
        end else begin
            in1[iterator] = buffer[in1_reg];
            in2[iterator] = buffer[in2_reg];
            max_en[iterator] = 1;

            buffer[dst_reg] = out[iterator];
            iterator = iterator + 1;
        end
    end
end
