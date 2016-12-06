module max_cmd ( 
    input [31:0] registers [31:0] buffer, // is it like this? 
    input [7:0] src1, 
    input [7:0] src2, 
    input en, 
    output [7:0] dst    
)

reg [31:0] max_en;
reg [7:0] max_cnt; 
reg [31:0] val3;

reg [31:0] in1 [31:0] val1;
reg [31:0] in2 [31:0] val2;

max_0(in1[0], in2[0], max_en[0], val3);
max_1(in1[1], in2[1], max_en[1], val3);
max_2(in1[2], in2[2], max_en[2], val3);
max_3(in1[3], in2[3], max_en[3], val3);
max_4(in1[4], in2[4], max_en[4], val3);
max_5(in1[5], in2[5], max_en[5], val3);
max_6(in1[6], in2[6], max_en[6], val3);
max_7(in1[7], in2[7], max_en[7], val3);
max_8(in1[8], in2[8], max_en[8], val3);
max_9(in1[9], in2[9], max_en[9], val3);
max_10(in1[10], in2[10], max_en[10], val3);
max_11(in1[11], in2[11], max_en[11], val3);
max_12(in1[12], in2[12], max_en[12], val3);
max_13(in1[13], in2[13], max_en[13], val3);
max_14(in1[14], in2[14], max_en[14], val3);
max_15(in1[15], in2[15], max_en[15], val3);
max_16(in1[16], in2[16], max_en[16], val3);
max_17(in1[17], in2[17], max_en[17], val3);
max_18(in1[18], in2[18], max_en[18], val3);
max_19(in1[19], in2[19], max_en[19], val3);
max_20(in1[20], in2[20], max_en[20], val3);
max_21(in1[21], in2[21], max_en[21], val3);
max_22(in1[22], in2[22], max_en[22], val3);
max_23(in1[23], in2[23], max_en[23], val3);
max_24(in1[24], in2[24], max_en[24], val3);
max_25(in1[25], in2[25], max_en[25], val3);
max_26(in1[26], in2[26], max_en[26], val3);
max_27(in1[27], in2[27], max_en[27], val3);
max_28(in1[28], in2[28], max_en[28], val3);
max_29(in1[29], in2[29], max_en[29], val3);
max_30(in1[30], in2[30], max_en[30], val3);
max_31(in1[31], in2[31], max_en[31], val3);


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
  val3 = 8'b0;
end

always begin
    if (en) begin
        in1[max_cnt] = registers[src1];
        in2[max_cnt] = registers[src2];

        max_en[max_cnt] = 1;
        registers[dst] = val3;
    end
    
end
