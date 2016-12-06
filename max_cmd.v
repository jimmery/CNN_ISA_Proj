module max_cmd ( 
    input [15:0] registers [31:0] buffer, // is it like this? 
    input [7:0] src1, 
    input [7:0] src2, 
    input en, 
    output [7:0] dst    
)






initial
begin
  max_en = 32'b0;
  max_cnt = 8'b0;
  in1[0] = 32'b0;
  in1[1] = 32'b0;
  in1[2] = 32'b0;
  in1[3] = 32'b0;
  in1[4] = 32'b0;
  in1[5] = 32'b0;
  in1[6] = 32'b0;
  in1[7] = 32'b0;
  in1[8] = 32'b0;
  in1[9] = 32'b0;
  in1[10] = 32'b0;
  in1[11] = 32'b0;
  in1[12] = 32'b0;
  in1[13] = 32'b0;
  in1[14] = 32'b0;
  in1[15] = 32'b0;
  in1[16] = 32'b0;
  in1[17] = 32'b0;
  in1[18] = 32'b0;
  in1[19] = 32'b0;
  in1[20] = 32'b0;
  in1[21] = 32'b0;
  in1[22] = 32'b0;
  in1[23] = 32'b0;
  in1[24] = 32'b0;
  in1[25] = 32'b0;
  in1[26] = 32'b0;
  in1[27] = 32'b0;
  in1[28] = 32'b0;
  in1[29] = 32'b0;
  in1[30] = 32'b0;
  in1[31] = 32'b0;

  in2[0] = 32'b0;
  in2[1] = 32'b0;
  in2[2] = 32'b0;
  in2[3] = 32'b0;
  in2[4] = 32'b0;
  in2[5] = 32'b0;
  in2[6] = 32'b0;
  in2[7] = 32'b0;
  in2[8] = 32'b0;
  in2[9] = 32'b0;
  in2[10] = 32'b0;
  in2[11] = 32'b0;
  in2[12] = 32'b0;
  in2[13] = 32'b0;
  in2[14] = 32'b0;
  in2[15] = 32'b0;
  in2[16] = 32'b0;
  in2[17] = 32'b0;
  in2[18] = 32'b0;
  in2[19] = 32'b0;
  in2[20] = 32'b0;
  in2[21] = 32'b0;
  in2[22] = 32'b0;
  in2[23] = 32'b0;
  in2[24] = 32'b0;
  in2[25] = 32'b0;
  in2[26] = 32'b0;
  in2[27] = 32'b0;
  in2[28] = 32'b0;
  in2[29] = 32'b0;
  in2[30] = 32'b0;
  in2[31] = 32'b0;
end

always begin
    if (en) begin
        in1[max_cnt] = registers[src1];
        in2[max_cnt] = registers[src2];

        max_en[max_cnt] = 1; 
        registers[dst] = val3;
    end
    
end
