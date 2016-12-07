module max_top ( 
    input [31:0] in1 [31:0], 
    input [31:0] in2 [31:0], 
    input [31:0] enable, 
    input clk, 

    output [31:0] out [31:0]
);

max max_0(in1[0], in2[0], max_en[0], clk, out[0]);
max max_1(in1[1], in2[1], max_en[1], clk, out[1]);
max max_2(in1[2], in2[2], max_en[2], clk, out[2]);
max max_3(in1[3], in2[3], max_en[3], clk, out[3]);
max max_4(in1[4], in2[4], max_en[4], clk, out[4]);
max max_5(in1[5], in2[5], max_en[5], clk, out[5]);
max max_6(in1[6], in2[6], max_en[6], clk, out[6]);
max max_7(in1[7], in2[7], max_en[7], clk, out[7]);
max max_8(in1[8], in2[8], max_en[8], clk, out[8]);
max max_9(in1[9], in2[9], max_en[9], clk, out[9]);
max max_10(in1[10], in2[10], max_en[10], clk, out[10]);
max max_11(in1[11], in2[11], max_en[11], clk, out[11]);
max max_12(in1[12], in2[12], max_en[12], clk, out[12]);
max max_13(in1[13], in2[13], max_en[13], clk, out[13]);
max max_14(in1[14], in2[14], max_en[14], clk, out[14]);
max max_15(in1[15], in2[15], max_en[15], clk, out[15]);
max max_16(in1[16], in2[16], max_en[16], clk, out[16]);
max max_17(in1[17], in2[17], max_en[17], clk, out[17]);
max max_18(in1[18], in2[18], max_en[18], clk, out[18]);
max max_19(in1[19], in2[19], max_en[19], clk, out[19]);
max max_20(in1[20], in2[20], max_en[20], clk, out[20]);
max max_21(in1[21], in2[21], max_en[21], clk, out[21]);
max max_22(in1[22], in2[22], max_en[22], clk, out[22]);
max max_23(in1[23], in2[23], max_en[23], clk, out[23]);
max max_24(in1[24], in2[24], max_en[24], clk, out[24]);
max max_25(in1[25], in2[25], max_en[25], clk, out[25]);
max max_26(in1[26], in2[26], max_en[26], clk, out[26]);
max max_27(in1[27], in2[27], max_en[27], clk, out[27]);
max max_28(in1[28], in2[28], max_en[28], clk, out[28]);
max max_29(in1[29], in2[29], max_en[29], clk, out[29]);
max max_30(in1[30], in2[30], max_en[30], clk, out[30]);
max max_31(in1[31], in2[31], max_en[31], clk, out[31]);

endmodule