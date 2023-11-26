`timescale 1ns / 1ps

module wallace_tree_unsigned(
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

wire c0, c1, c3, c6, c10, c15, c21, c28, c35, c41, c46, c50, c53, c55;
wire s0, s1, s3, s6, s10, s15, s21, s28, s35, s41, s46, s50, s53, s55;

//first row
half_adder h0(pp[1][0], pp[0][1], s0, c0);
full_adder f0(pp[2][0], pp[1][1], c0, s1, c1);
full_adder f1(pp[3][0], pp[2][1], c1, s3, c3);
full_adder f2(pp[4][0], pp[3][1], c3, s6, c6);
full_adder f3(pp[5][0], pp[4][1], c6, s10, c10);
full_adder f4(pp[6][0], pp[5][1], c10, s15, c15);
full_adder f5(pp[7][0], pp[6][1], c15, s21, c21);
full_adder f6(pp[7][1], pp[6][2], c21, s28, c28);
full_adder f7(pp[7][2], pp[6][3], c28, s35, c35);
full_adder f8(pp[7][3], pp[6][4], c35, s41, c41);
full_adder f9(pp[7][4], pp[6][5], c41, s46, c46);
full_adder f10(pp[7][5], pp[6][6], c46, s50, c50);
full_adder f11(pp[7][6], pp[6][7], c50, s53, c53);

wire c2, c4, c7, c11, c16, c22, c29, c36, c42, c47, c51, c54;
wire s2, s4, s7, s11, s16, s22, s29, s36, s42, s47, s51, s54;

//second row
half_adder h1(pp[0][2], s1, s2, c2);
full_adder f12(pp[1][2], s3, c2, s4, c4);
full_adder f13(pp[2][2], s6, c4, s7, c7);
full_adder f14(pp[3][2], s10, c7, s11, c11);
full_adder f15(pp[4][2], s15, c11, s16, c16);
full_adder f16(pp[5][2], s21, c16, s22, c22);
full_adder f17(pp[5][3], s28, c22, s29, c29);
full_adder f18(pp[5][4], s35, c29, s36, c36);
full_adder f19(pp[5][5], s41, c36, s42, c42);
full_adder f20(pp[5][6], s46, c42, s47, c47);
full_adder f21(pp[5][7], s50, c47, s51, c51);

wire c5, c8, c12, c17, c23, c30, c37, c43, c48;
wire s5, s8, s12, s17, s23, s30, s37, s43, s48;

//third row
half_adder h2(pp[0][3], s4, s5, c5);
full_adder f22(pp[1][3], s7, c5, s8, c8);
full_adder f23(pp[2][3], s11, c8, s12, c12);
full_adder f24(pp[3][3], s16, c12, s17, c17);
full_adder f25(pp[4][3], s22, c17, s23, c23);
full_adder f26(pp[4][4], s29, c23, s30, c30);
full_adder f27(pp[4][5], s36, c30, s37, c37);
full_adder f28(pp[4][6], s42, c37, s43, c43);
full_adder f29(pp[4][7], s47, c43, s48, c48);

wire c9, c13, c18, c24, c31, c38, c44;

//fourth row
half_adder h3(pp[0][4], s8, s9, c9);
full_adder f30(pp[1][4], s12, c9, s13, c13);
full_adder f31(pp[2][4], s17, c13, s18, c18);
full_adder f32(pp[3][4], s23, c18, s24, c24);
full_adder f33(pp[3][5], s30, c24, s31, c31);
full_adder f34(pp[3][6], s37, c31, s38, c38);
full_adder f35(pp[3][7], s43, c38, s44, c44);

wire c14, c19, c25, c32, c39;
wire s14, s19, s25, s32, s39;

//fifth row

half_adder h4(pp[0][5], s13, s14, c14);
full_adder f36(pp[1][5], s18, c14, s19, c19);
full_adder f37(pp[2][5], s24, c19, s25, c25);
full_adder f38(pp[2][6], s31, c25, s32, c32);
full_adder f39(pp[2][7], s38, c32, s39, c39);

wire c20, c26, c33;
wire s20, s26, s33;

//sixth row
half_adder h5(pp[0][6], s19, s20, c20);
full_adder f40(pp[1][6], s25, c20, s26, c26);
full_adder f41(pp[1][7], s32, c26, s33, c33);

//seventh row
half_adder h6(pp[0][7], s26, s27, c27);

wire c34, c40, c45, c49, c52, c54, c55;
wire s34, s40, s45, s49, s52, s54, s55;

half_adder h7(s33, c27, s34, c34);
full_adder f42(s39, c33, c34, s40, c40);
full_adder f43(s44, c39, c40, s45, c45);
full_adder f44(s48, c44, c45, s49, c49);
full_adder f45(s51, c48, c49, s52, c52);
full_adder f46(s53, c51, c52, s54, c54);
full_adder f47(pp[7][7], c53, c54, s55, c55);

assign product = {c55, s55, s54, s52, s49, s45, s40, s34, s27, s20, s14, s9, s5, s2, s0, pp[0][0]};
 
endmodule