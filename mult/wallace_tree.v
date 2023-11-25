`timescale 1ns / 1ps

module wallace_tree(
    input [7:0] a, //8-bit multiplicand
    input [7:0] b, //8 -bit multiplier
    output [15:0] product //16-bit prodcut
);


// Step 1: generate partial products
wire [7:0] pp[7:0]; //8x8 2D array 

genvar i, j;
generate
    for (i = 0; i < 8; i = i + 1) begin : gen_pp
        for (j = 0; j < 8; j = j + 1) begin : gen_pp_row
            assign pp[i][j] = a[i] & b[j];
        end
    end
endgenerate

wire s1_0, s1_1, s1_2, s1_3, s1_4, s1_5, s1_6, s1_7, s1_8, s1_9, s1_10, s1_11, s1_12, s1_13, s1_14, s1_15, s1_16, s1_17, s1_18, s1_19;
wire c1_0, c1_1, c1_2, c1_3, c1_4, c1_5, c1_6, c1_7, c1_8, c1_9, c1_10, c1_11, c1_12, c1_13, c1_14, c1_15, c1_16, c1_17, c1_18, c1_19;

//first reduction stage
half_adder ha0(pp[2][0], pp[1][1], s1_0, c1_0);
full_adder fa0(pp[3][0], pp[2][1], pp[1][2], s1_1, c1_1);
full_adder fa1(pp[4][0], pp[3][1], pp[2][2], s1_2, c1_2);
half_adder ha1(pp[1][3], pp[0][4], s1_3, c1_3);
full_adder fa2(pp[5][0], pp[4][1], pp[3][2], s1_4, c1_4);
full_adder fa3(pp[2][3], pp[1][4], pp[6][5], s1_5, c1_5);
full_adder fa4(pp[6][0], pp[5][1], pp[4][2], s1_6, c1_6);
full_adder fa5(pp[3][3], pp[2][4], pp[1][5], s1_7, c1_7);
full_adder fa6(pp[7][0], pp[6][1], pp[5][2], s1_8, c1_8);
full_adder fa7(pp[4][3], pp[3][4], pp[2][5], s1_9, c1_9);
half_adder ha2(pp[1][6], pp[0][7], s1_10, c1_10);
full_adder fa8(pp[7][1], pp[6][2], pp[5][3], s1_11, c1_11);
full_adder fa9(pp[4][4], pp[3][5], pp[2][6], s1_12, c1_12);
full_adder fa10(pp[7][2], pp[6][3], pp[5][4], s1_13, c1_13);
full_adder fa11(pp[4][5], pp[3][6], pp[2][7], s1_14, c1_14);
full_adder fa12(pp[7][3], pp[6][4], pp[5][5], s1_15, c1_15);
half_adder ha3(pp[4][6], pp[3][7], s1_16, c1_16);
full_adder fa13(pp[7][4], pp[6][5], pp[5][6], s1_17, c1_17);
half_adder ha4(pp[7][5], pp[6][6], s1_18, c1_18);
half_adder ha5(pp[7][6], pp[6][7], s1_19, c1_19);

wire s2_0, s2_1, s2_2, s2_3, s2_4, s2_5, s2_6, s2_7, s2_8, s2_9, s2_10, s2_11, s2_12, s2_13, s2_14;
wire c2_0, c2_1, c2_2, c2_3, c2_4, c2_5, c2_6, c2_7, c2_8, c2_9, c2_10, c2_11, c2_12, c2_13, c2_14;

//second reduction stage
half_adder ha6(s1_1, c1_0, s2_0, c2_0);
full_adder fa14(s1_2, s1_3, c1_1, s2_1, c2_1);
full_adder fa15(s1_4, c1_2, c1_3, s2_2, c2_2);
full_adder fa16(s1_6, c1_4, c1_5, s2_3, c2_3);
half_adder ha7(s1_7, pp[0][6], s2_4, c2_4);
full_adder fa17(s1_8, c1_6, c1_7, s2_5, c2_5);
half_adder ha8(s1_9, s1_10, s2_6, c2_6);
full_adder fa18(s1_11, c1_8, c1_9, s2_7, c2_7);
full_adder fa19(c1_10, s1_12, pp[1][7], s2_8, c2_8);
full_adder fa20(s1_13, c1_11, c1_12, s2_9, c2_9);
full_adder fa21(s1_15, c1_13, c1_14, s2_10, c2_10);
full_adder fa22(s1_17, c1_15, c1_16, s2_11, c2_11);
full_adder fa23(s1_18, c1_17, pp[3][7], s2_12, c2_12);
half_adder ha9(s1_19, c1_18, s2_13, c2_13);
half_adder ha10(pp[7][7], c1_19, s2_14, c2_14);

wire s3_0, s3_1, s3_2, s3_3, s3_4, s3_5, s3_6, s3_7, s3_8, s3_9;
wire c3_0, c3_1, c3_2, c3_3, c3_4, c3_5, c3_6, c3_7, c3_8, c3_9;

//third reduction stage
half_adder ha11(s2_2, c2_1, s3_0, c3_0);
full_adder fa24(s2_3, c2_2, s2_4, s3_1, c3_1);
full_adder fa25(s2_5, c2_3, c2_4, s3_2, c3_2);
full_adder fa26(s2_7, c2_5, c2_6, s3_3, c3_3);
full_adder fa27(s2_9, c2_7, c2_8, s3_4, c3_4);
full_adder fa28(s2_10, c2_9, s1_16, s3_5, c3_5);
full_adder fa29(s2_11, c2_10, pp[4][7], s3_6, c3_6);
half_adder ha12(s2_12, c2_11, s3_7, c3_7);
half_adder ha13(s2_13, c2_12, s3_8, c3_8);
half_adder ha14(s2_14, c2_13, s3_9, c3_9);


wire s4_0, s4_1, s4_2, s4_3, s4_4, s4_5, s4_6, s4_7;
wire c4_0, c4_1, c4_2, c4_3, c4_4, c4_5, c4_6, c4_7;

//fourth reduction stage
half_adder ha15(s3_2, c3_1, s4_0, c4_0);
full_adder fa30(s3_3, c3_2, s2_8, s4_1, c4_1);
full_adder fa31(s3_4, c3_3, s1_14, s4_2, c4_2);
half_adder ha16(s3_5, c3_4, s4_3, c4_3);
half_adder ha17(s3_6, c3_5, s4_4, c4_4);
half_adder ha18(s3_7, c3_6, s4_5, c4_5);
half_adder ha19(s3_8, c3_7, s4_6, c4_6);
half_adder ha20(s3_9, c3_8, s4_7, c4_7);

wire [15:0] ca;
wire [15:0] cb; 

assign ca = {c3_9, s4_7, s4_6, s4_5, s4_4, s4_3, s4_2, s4_1, s4_0, s3_1, s3_0, s2_1, s2_0, s1_0, pp[1][0], pp[0][0]};
assign cb = {c4_7, c4_6, c4_5, c4_4, c4_3, c4_2, c4_1, c4_0, s2_6, c3_0, s1_5, c2_0, pp[0][3], pp[0][2], pp[0][1], 0};

wire [15:0] sum;
wire cout;
wire [15:0] product;

//fast adder
CLA c0(ca, cb, 0, sum, cout);

assign product = sum;


//final adder 
endmodule