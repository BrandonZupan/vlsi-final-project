`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2023 09:56:16 AM
// Design Name: 
// Module Name: 8bDivider
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Divider16bit(
    input [15:0] A,
    input [15:0] B,
    output [15:0] Qf,
    output [15:0] R,
    output err
    );
 
// row 1 
wire Bout_01;
wire Bout_02;
wire Bout_03;
wire Bout_04;
wire Bout_05;
wire Bout_06;
wire Bout_07;
wire Bout_08;
wire Bout_09;
wire Bout_0a;
wire Bout_0b;
wire Bout_0c;
wire Bout_0d;
wire Bout_0e;
wire Bout_0f;
wire Bout_10;


wire Mout_01;
wire Mout_02;
wire Mout_03;
wire Mout_04;
wire Mout_05;
wire Mout_06;
wire Mout_07;
wire Mout_08;
wire Mout_09;
wire Mout_0a;
wire Mout_0b;
wire Mout_0c;
wire Mout_0d;
wire Mout_0e;
wire Mout_0f;
wire Mout_10;

// row 2 
wire Bout_11;
wire Bout_12;
wire Bout_13;
wire Bout_14;
wire Bout_15;
wire Bout_16;
wire Bout_17;
wire Bout_18;
wire Bout_19;
wire Bout_1a;
wire Bout_1b;
wire Bout_1c;
wire Bout_1d;
wire Bout_1e;
wire Bout_1f;
wire Bout_20;

wire Mout_11;
wire Mout_12;
wire Mout_13;
wire Mout_14;
wire Mout_15;
wire Mout_16;
wire Mout_17;
wire Mout_18;
wire Mout_19;
wire Mout_1a;
wire Mout_1b;
wire Mout_1c;
wire Mout_1d;
wire Mout_1e;
wire Mout_1f;
wire Mout_20;

// row 3 
wire Bout_21;
wire Bout_22;
wire Bout_23;
wire Bout_24;
wire Bout_25;
wire Bout_26;
wire Bout_27;
wire Bout_28;
wire Bout_29;
wire Bout_2a;
wire Bout_2b;
wire Bout_2c;
wire Bout_2d;
wire Bout_2e;
wire Bout_2f;
wire Bout_30;

wire Mout_21;
wire Mout_22;
wire Mout_23;
wire Mout_24;
wire Mout_25;
wire Mout_26;
wire Mout_27;
wire Mout_28;
wire Mout_29;
wire Mout_2a;
wire Mout_2b;
wire Mout_2c;
wire Mout_2d;
wire Mout_2e;
wire Mout_2f;
wire Mout_30;

// row 4 
wire Bout_31;
wire Bout_32;
wire Bout_33;
wire Bout_34;
wire Bout_35;
wire Bout_36;
wire Bout_37;
wire Bout_38;
wire Bout_39;
wire Bout_3a;
wire Bout_3b;
wire Bout_3c;
wire Bout_3d;
wire Bout_3e;
wire Bout_3f;
wire Bout_40;

wire Mout_31;
wire Mout_32;
wire Mout_33;
wire Mout_34;
wire Mout_35;
wire Mout_36;
wire Mout_37;
wire Mout_38;
wire Mout_39;
wire Mout_3a;
wire Mout_3b;
wire Mout_3c;
wire Mout_3d;
wire Mout_3e;
wire Mout_3f;
wire Mout_40;

// row 5 
wire Bout_41;
wire Bout_42;
wire Bout_43;
wire Bout_44;
wire Bout_45;
wire Bout_46;
wire Bout_47;
wire Bout_48;
wire Bout_49;
wire Bout_4a;
wire Bout_4b;
wire Bout_4c;
wire Bout_4d;
wire Bout_4e;
wire Bout_4f;
wire Bout_50;

wire Mout_41;
wire Mout_42;
wire Mout_43;
wire Mout_44;
wire Mout_45;
wire Mout_46;
wire Mout_47;
wire Mout_48;
wire Mout_49;
wire Mout_4a;
wire Mout_4b;
wire Mout_4c;
wire Mout_4d;
wire Mout_4e;
wire Mout_4f;
wire Mout_50;

// row 6 
wire Bout_51;
wire Bout_52;
wire Bout_53;
wire Bout_54;
wire Bout_55;
wire Bout_56;
wire Bout_57;
wire Bout_58;
wire Bout_59;
wire Bout_5a;
wire Bout_5b;
wire Bout_5c;
wire Bout_5d;
wire Bout_5e;
wire Bout_5f;
wire Bout_60;

wire Mout_51;
wire Mout_52;
wire Mout_53;
wire Mout_54;
wire Mout_55;
wire Mout_56;
wire Mout_57;
wire Mout_58;
wire Mout_59;
wire Mout_5a;
wire Mout_5b;
wire Mout_5c;
wire Mout_5d;
wire Mout_5e;
wire Mout_5f;
wire Mout_60;

// row 7 
wire Bout_61;
wire Bout_62;
wire Bout_63;
wire Bout_64;
wire Bout_65;
wire Bout_66;
wire Bout_67;
wire Bout_68;
wire Bout_69;
wire Bout_6a;
wire Bout_6b;
wire Bout_6c;
wire Bout_6d;
wire Bout_6e;
wire Bout_6f;
wire Bout_70;

wire Mout_61;
wire Mout_62;
wire Mout_63;
wire Mout_64;
wire Mout_65;
wire Mout_66;
wire Mout_67;
wire Mout_68;
wire Mout_69;
wire Mout_6a;
wire Mout_6b;
wire Mout_6c;
wire Mout_6d;
wire Mout_6e;
wire Mout_6f;
wire Mout_70;

// row 8 
wire Bout_71;
wire Bout_72;
wire Bout_73;
wire Bout_74;
wire Bout_75;
wire Bout_76;
wire Bout_77;
wire Bout_78;
wire Bout_79;
wire Bout_7a;
wire Bout_7b;
wire Bout_7c;
wire Bout_7d;
wire Bout_7e;
wire Bout_7f;
wire Bout_80;

wire Mout_71;
wire Mout_72;
wire Mout_73;
wire Mout_74;
wire Mout_75;
wire Mout_76;
wire Mout_77;
wire Mout_78;
wire Mout_79;
wire Mout_7a;
wire Mout_7b;
wire Mout_7c;
wire Mout_7d;
wire Mout_7e;
wire Mout_7f;
wire Mout_80;

// row 9 
wire Bout_81;
wire Bout_82;
wire Bout_83;
wire Bout_84;
wire Bout_85;
wire Bout_86;
wire Bout_87;
wire Bout_88;
wire Bout_89;
wire Bout_8a;
wire Bout_8b;
wire Bout_8c;
wire Bout_8d;
wire Bout_8e;
wire Bout_8f;
wire Bout_90;

wire Mout_81;
wire Mout_82;
wire Mout_83;
wire Mout_84;
wire Mout_85;
wire Mout_86;
wire Mout_87;
wire Mout_88;
wire Mout_89;
wire Mout_8a;
wire Mout_8b;
wire Mout_8c;
wire Mout_8d;
wire Mout_8e;
wire Mout_8f;
wire Mout_90;

// row 10 
wire Bout_91;
wire Bout_92;
wire Bout_93;
wire Bout_94;
wire Bout_95;
wire Bout_96;
wire Bout_97;
wire Bout_98;
wire Bout_99;
wire Bout_9a;
wire Bout_9b;
wire Bout_9c;
wire Bout_9d;
wire Bout_9e;
wire Bout_9f;
wire Bout_a0;

wire Mout_91;
wire Mout_92;
wire Mout_93;
wire Mout_94;
wire Mout_95;
wire Mout_96;
wire Mout_97;
wire Mout_98;
wire Mout_99;
wire Mout_9a;
wire Mout_9b;
wire Mout_9c;
wire Mout_9d;
wire Mout_9e;
wire Mout_9f;
wire Mout_a0;

// row 11 
wire Bout_a1;
wire Bout_a2;
wire Bout_a3;
wire Bout_a4;
wire Bout_a5;
wire Bout_a6;
wire Bout_a7;
wire Bout_a8;
wire Bout_a9;
wire Bout_aa;
wire Bout_ab;
wire Bout_ac;
wire Bout_ad;
wire Bout_ae;
wire Bout_af;
wire Bout_b0;

wire Mout_a1;
wire Mout_a2;
wire Mout_a3;
wire Mout_a4;
wire Mout_a5;
wire Mout_a6;
wire Mout_a7;
wire Mout_a8;
wire Mout_a9;
wire Mout_aa;
wire Mout_ab;
wire Mout_ac;
wire Mout_ad;
wire Mout_ae;
wire Mout_af;
wire Mout_b0;

// row 12 
wire Bout_b1;
wire Bout_b2;
wire Bout_b3;
wire Bout_b4;
wire Bout_b5;
wire Bout_b6;
wire Bout_b7;
wire Bout_b8;
wire Bout_b9;
wire Bout_ba;
wire Bout_bb;
wire Bout_bc;
wire Bout_bd;
wire Bout_be;
wire Bout_bf;
wire Bout_c0;

wire Mout_b1;
wire Mout_b2;
wire Mout_b3;
wire Mout_b4;
wire Mout_b5;
wire Mout_b6;
wire Mout_b7;
wire Mout_b8;
wire Mout_b9;
wire Mout_ba;
wire Mout_bb;
wire Mout_bc;
wire Mout_bd;
wire Mout_be;
wire Mout_bf;
wire Mout_c0;

// row 13 
wire Bout_c1;
wire Bout_c2;
wire Bout_c3;
wire Bout_c4;
wire Bout_c5;
wire Bout_c6;
wire Bout_c7;
wire Bout_c8;
wire Bout_c9;
wire Bout_ca;
wire Bout_cb;
wire Bout_cc;
wire Bout_cd;
wire Bout_ce;
wire Bout_cf;
wire Bout_d0;

wire Mout_c1;
wire Mout_c2;
wire Mout_c3;
wire Mout_c4;
wire Mout_c5;
wire Mout_c6;
wire Mout_c7;
wire Mout_c8;
wire Mout_c9;
wire Mout_ca;
wire Mout_cb;
wire Mout_cc;
wire Mout_cd;
wire Mout_ce;
wire Mout_cf;
wire Mout_d0;

// row 14 
wire Bout_d1;
wire Bout_d2;
wire Bout_d3;
wire Bout_d4;
wire Bout_d5;
wire Bout_d6;
wire Bout_d7;
wire Bout_d8;
wire Bout_d9;
wire Bout_da;
wire Bout_db;
wire Bout_dc;
wire Bout_dd;
wire Bout_de;
wire Bout_df;
wire Bout_e0;

wire Mout_d1;
wire Mout_d2;
wire Mout_d3;
wire Mout_d4;
wire Mout_d5;
wire Mout_d6;
wire Mout_d7;
wire Mout_d8;
wire Mout_d9;
wire Mout_da;
wire Mout_db;
wire Mout_dc;
wire Mout_dd;
wire Mout_de;
wire Mout_df;
wire Mout_e0;

// row 15 
wire Bout_e1;
wire Bout_e2;
wire Bout_e3;
wire Bout_e4;
wire Bout_e5;
wire Bout_e6;
wire Bout_e7;
wire Bout_e8;
wire Bout_e9;
wire Bout_ea;
wire Bout_eb;
wire Bout_ec;
wire Bout_ed;
wire Bout_ee;
wire Bout_ef;
wire Bout_f0;

wire Mout_e1;
wire Mout_e2;
wire Mout_e3;
wire Mout_e4;
wire Mout_e5;
wire Mout_e6;
wire Mout_e7;
wire Mout_e8;
wire Mout_e9;
wire Mout_ea;
wire Mout_eb;
wire Mout_ec;
wire Mout_ed;
wire Mout_ee;
wire Mout_ef;
wire Mout_f0;

// row 16 
wire Bout_f1;
wire Bout_f2;
wire Bout_f3;
wire Bout_f4;
wire Bout_f5;
wire Bout_f6;
wire Bout_f7;
wire Bout_f8;
wire Bout_f9;
wire Bout_fa;
wire Bout_fb;
wire Bout_fc;
wire Bout_fd;
wire Bout_fe;
wire Bout_ff;
wire Bout_00;

wire Mout_f1;
wire Mout_f2;
wire Mout_f3;
wire Mout_f4;
wire Mout_f5;
wire Mout_f6;
wire Mout_f7;
wire Mout_f8;
wire Mout_f9;
wire Mout_fa;
wire Mout_fb;
wire Mout_fc;
wire Mout_fd;
wire Mout_fe;
wire Mout_ff;
wire Mout_00;


//2s comp conversion
wire [15:0] Au;
wire [15:0] Bu;
wire [15:0] Aflip;
wire [15:0] Bflip;

wire [15:0] Qflip;
wire [15:0] Q;
wire sig;

assign Aflip = (~A) + 1;
assign Bflip = (~B) + 1;

assign Au = (A[15]) ? Aflip : A;
assign Bu = (B[15]) ? Bflip : B;

assign err = ((Au[15] & ~Au[14] & ~Au[13] & ~Au[12] & ~Au[11] & ~Au[10] & ~Au[9] & ~Au[8] &
              ~Au[7] & ~Au[6] & ~Au[5] & ~Au[4] & ~Au[3] & ~Au[2] & ~Au[1] & ~Au[0]) |
              (Bu[15] & ~Bu[14] & ~Bu[13] & ~Bu[12] & ~Bu[11] & ~Bu[10] & ~Bu[9] & ~Bu[8] &
              ~Bu[7] & ~Bu[6] & ~Bu[5] & ~Bu[4] & ~Bu[3] & ~Bu[2] & ~Bu[1] & ~Bu[0]) |
              (~Bu[15] & ~Bu[14] & ~Bu[13] & ~Bu[12] & ~Bu[11] & ~Bu[10] & ~Bu[9] & ~Bu[8] &
              ~Bu[7] & ~Bu[6] & ~Bu[5] & ~Bu[4] & ~Bu[3] & ~Bu[2] & ~Bu[1] & ~Bu[0]));

assign sig = A[15] ^ B[15];

//row 1 
FullSub_Mux fs10 ( .A(Au[15]), .B(Bu[0]), .Bin(1'b0), .Ctrl(Q[15]), .Bout(Bout_10), .Mout(Mout_10));
FullSub_Mux fs0f ( .A(1'b0), .B(Bu[1]), .Bin(Bout_10), .Ctrl(Q[15]), .Bout(Bout_0f), .Mout(Mout_0f));
FullSub_Mux fs0e ( .A(1'b0), .B(Bu[2]), .Bin(Bout_0f), .Ctrl(Q[15]), .Bout(Bout_0e), .Mout(Mout_0e));
FullSub_Mux fs0d ( .A(1'b0), .B(Bu[3]), .Bin(Bout_0e), .Ctrl(Q[15]), .Bout(Bout_0d), .Mout(Mout_0d));
FullSub_Mux fs0c ( .A(1'b0), .B(Bu[4]), .Bin(Bout_0d), .Ctrl(Q[15]), .Bout(Bout_0c), .Mout(Mout_0c)); 
FullSub_Mux fs0b ( .A(1'b0), .B(Bu[5]), .Bin(Bout_0c), .Ctrl(Q[15]), .Bout(Bout_0b), .Mout(Mout_0b));   
FullSub_Mux fs0a ( .A(1'b0), .B(Bu[6]), .Bin(Bout_0b), .Ctrl(Q[15]), .Bout(Bout_0a), .Mout(Mout_0a));
FullSub_Mux fs09 ( .A(1'b0), .B(Bu[7]), .Bin(Bout_0a), .Ctrl(Q[15]), .Bout(Bout_09), .Mout(Mout_09));
FullSub_Mux fs08 ( .A(1'b0), .B(Bu[8]), .Bin(Bout_09), .Ctrl(Q[15]), .Bout(Bout_08), .Mout(Mout_08));
FullSub_Mux fs07 ( .A(1'b0), .B(Bu[9]), .Bin(Bout_08), .Ctrl(Q[15]), .Bout(Bout_07), .Mout(Mout_07));
FullSub_Mux fs06 ( .A(1'b0), .B(Bu[10]), .Bin(Bout_07), .Ctrl(Q[15]), .Bout(Bout_06), .Mout(Mout_06));
FullSub_Mux fs05 ( .A(1'b0), .B(Bu[11]), .Bin(Bout_06), .Ctrl(Q[15]), .Bout(Bout_05), .Mout(Mout_05));
FullSub_Mux fs04 ( .A(1'b0), .B(Bu[12]), .Bin(Bout_05), .Ctrl(Q[15]), .Bout(Bout_04), .Mout(Mout_04)); 
FullSub_Mux fs03 ( .A(1'b0), .B(Bu[13]), .Bin(Bout_04), .Ctrl(Q[15]), .Bout(Bout_03), .Mout(Mout_03));   
FullSub_Mux fs02 ( .A(1'b0), .B(Bu[14]), .Bin(Bout_03), .Ctrl(Q[15]), .Bout(Bout_02), .Mout(Mout_02));
FullSub_Mux fs01 ( .A(1'b0), .B(Bu[15]), .Bin(Bout_02), .Ctrl(Q[15]), .Bout(Bout_01), .Mout(Mout_01));
assign Q[15] = (~Bout_01);

//row 2 
FullSub_Mux fs20 ( .A(Au[14]), .B(Bu[0]), .Bin(1'b0), .Ctrl(Q[14]), .Bout(Bout_20), .Mout(Mout_20));
FullSub_Mux fs1f ( .A(Mout_10), .B(Bu[1]), .Bin(Bout_20), .Ctrl(Q[14]), .Bout(Bout_1f), .Mout(Mout_1f));
FullSub_Mux fs1e ( .A(Mout_0f), .B(Bu[2]), .Bin(Bout_1f), .Ctrl(Q[14]), .Bout(Bout_1e), .Mout(Mout_1e));
FullSub_Mux fs1d ( .A(Mout_0e), .B(Bu[3]), .Bin(Bout_1e), .Ctrl(Q[14]), .Bout(Bout_1d), .Mout(Mout_1d));
FullSub_Mux fs1c ( .A(Mout_0d), .B(Bu[4]), .Bin(Bout_1d), .Ctrl(Q[14]), .Bout(Bout_1c), .Mout(Mout_1c)); 
FullSub_Mux fs1b ( .A(Mout_0c), .B(Bu[5]), .Bin(Bout_1c), .Ctrl(Q[14]), .Bout(Bout_1b), .Mout(Mout_1b));   
FullSub_Mux fs1a ( .A(Mout_0b), .B(Bu[6]), .Bin(Bout_1b), .Ctrl(Q[14]), .Bout(Bout_1a), .Mout(Mout_1a));
FullSub_Mux fs19 ( .A(Mout_0a), .B(Bu[7]), .Bin(Bout_1a), .Ctrl(Q[14]), .Bout(Bout_19), .Mout(Mout_19));
FullSub_Mux fs18 ( .A(Mout_09), .B(Bu[8]), .Bin(Bout_19), .Ctrl(Q[14]), .Bout(Bout_18), .Mout(Mout_18));
FullSub_Mux fs17 ( .A(Mout_08), .B(Bu[9]), .Bin(Bout_18), .Ctrl(Q[14]), .Bout(Bout_17), .Mout(Mout_17));
FullSub_Mux fs16 ( .A(Mout_07), .B(Bu[10]), .Bin(Bout_17), .Ctrl(Q[14]), .Bout(Bout_16), .Mout(Mout_16));
FullSub_Mux fs15 ( .A(Mout_06), .B(Bu[11]), .Bin(Bout_16), .Ctrl(Q[14]), .Bout(Bout_15), .Mout(Mout_15));
FullSub_Mux fs14 ( .A(Mout_05), .B(Bu[12]), .Bin(Bout_15), .Ctrl(Q[14]), .Bout(Bout_14), .Mout(Mout_14)); 
FullSub_Mux fs13 ( .A(Mout_04), .B(Bu[13]), .Bin(Bout_14), .Ctrl(Q[14]), .Bout(Bout_13), .Mout(Mout_13));   
FullSub_Mux fs12 ( .A(Mout_03), .B(Bu[14]), .Bin(Bout_13), .Ctrl(Q[14]), .Bout(Bout_12), .Mout(Mout_12));
FullSub_Mux fs11 ( .A(Mout_02), .B(Bu[15]), .Bin(Bout_12), .Ctrl(Q[14]), .Bout(Bout_11), .Mout(Mout_11));
assign Q[14] = (~Bout_11) | Mout_01;

//row 3
FullSub_Mux fs30 ( .A(Au[13]), .B(Bu[0]), .Bin(1'b0), .Ctrl(Q[13]), .Bout(Bout_30), .Mout(Mout_30));
FullSub_Mux fs2f ( .A(Mout_20), .B(Bu[1]), .Bin(Bout_30), .Ctrl(Q[13]), .Bout(Bout_2f), .Mout(Mout_2f));
FullSub_Mux fs2e ( .A(Mout_1f), .B(Bu[2]), .Bin(Bout_2f), .Ctrl(Q[13]), .Bout(Bout_2e), .Mout(Mout_2e));
FullSub_Mux fs2d ( .A(Mout_1e), .B(Bu[3]), .Bin(Bout_2e), .Ctrl(Q[13]), .Bout(Bout_2d), .Mout(Mout_2d));
FullSub_Mux fs2c ( .A(Mout_1d), .B(Bu[4]), .Bin(Bout_2d), .Ctrl(Q[13]), .Bout(Bout_2c), .Mout(Mout_2c)); 
FullSub_Mux fs2b ( .A(Mout_1c), .B(Bu[5]), .Bin(Bout_2c), .Ctrl(Q[13]), .Bout(Bout_2b), .Mout(Mout_2b));   
FullSub_Mux fs2a ( .A(Mout_1b), .B(Bu[6]), .Bin(Bout_2b), .Ctrl(Q[13]), .Bout(Bout_2a), .Mout(Mout_2a));
FullSub_Mux fs29 ( .A(Mout_1a), .B(Bu[7]), .Bin(Bout_2a), .Ctrl(Q[13]), .Bout(Bout_29), .Mout(Mout_29));
FullSub_Mux fs28 ( .A(Mout_19), .B(Bu[8]), .Bin(Bout_29), .Ctrl(Q[13]), .Bout(Bout_28), .Mout(Mout_28));
FullSub_Mux fs27 ( .A(Mout_18), .B(Bu[9]), .Bin(Bout_28), .Ctrl(Q[13]), .Bout(Bout_27), .Mout(Mout_27));
FullSub_Mux fs26 ( .A(Mout_17), .B(Bu[10]), .Bin(Bout_27), .Ctrl(Q[13]), .Bout(Bout_26), .Mout(Mout_26));
FullSub_Mux fs25 ( .A(Mout_16), .B(Bu[11]), .Bin(Bout_26), .Ctrl(Q[13]), .Bout(Bout_25), .Mout(Mout_25));
FullSub_Mux fs24 ( .A(Mout_15), .B(Bu[12]), .Bin(Bout_25), .Ctrl(Q[13]), .Bout(Bout_24), .Mout(Mout_24)); 
FullSub_Mux fs23 ( .A(Mout_14), .B(Bu[13]), .Bin(Bout_24), .Ctrl(Q[13]), .Bout(Bout_23), .Mout(Mout_23));   
FullSub_Mux fs22 ( .A(Mout_13), .B(Bu[14]), .Bin(Bout_23), .Ctrl(Q[13]), .Bout(Bout_22), .Mout(Mout_22));
FullSub_Mux fs21 ( .A(Mout_12), .B(Bu[15]), .Bin(Bout_22), .Ctrl(Q[13]), .Bout(Bout_21), .Mout(Mout_21));
assign Q[13] = (~Bout_21) | Mout_11;

//row 4  
FullSub_Mux fs40 ( .A(Au[12]), .B(Bu[0]), .Bin(1'b0), .Ctrl(Q[12]), .Bout(Bout_40), .Mout(Mout_40));
FullSub_Mux fs3f ( .A(Mout_30), .B(Bu[1]), .Bin(Bout_40), .Ctrl(Q[12]), .Bout(Bout_3f), .Mout(Mout_3f));
FullSub_Mux fs3e ( .A(Mout_2f), .B(Bu[2]), .Bin(Bout_3f), .Ctrl(Q[12]), .Bout(Bout_3e), .Mout(Mout_3e));
FullSub_Mux fs3d ( .A(Mout_2e), .B(Bu[3]), .Bin(Bout_3e), .Ctrl(Q[12]), .Bout(Bout_3d), .Mout(Mout_3d));
FullSub_Mux fs3c ( .A(Mout_2d), .B(Bu[4]), .Bin(Bout_3d), .Ctrl(Q[12]), .Bout(Bout_3c), .Mout(Mout_3c)); 
FullSub_Mux fs3b ( .A(Mout_2c), .B(Bu[5]), .Bin(Bout_3c), .Ctrl(Q[12]), .Bout(Bout_3b), .Mout(Mout_3b));   
FullSub_Mux fs3a ( .A(Mout_2b), .B(Bu[6]), .Bin(Bout_3b), .Ctrl(Q[12]), .Bout(Bout_3a), .Mout(Mout_3a));
FullSub_Mux fs39 ( .A(Mout_2a), .B(Bu[7]), .Bin(Bout_3a), .Ctrl(Q[12]), .Bout(Bout_39), .Mout(Mout_39));
FullSub_Mux fs38 ( .A(Mout_29), .B(Bu[8]), .Bin(Bout_39), .Ctrl(Q[12]), .Bout(Bout_38), .Mout(Mout_38));
FullSub_Mux fs37 ( .A(Mout_28), .B(Bu[9]), .Bin(Bout_38), .Ctrl(Q[12]), .Bout(Bout_37), .Mout(Mout_37));
FullSub_Mux fs36 ( .A(Mout_27), .B(Bu[10]), .Bin(Bout_37), .Ctrl(Q[12]), .Bout(Bout_36), .Mout(Mout_36));
FullSub_Mux fs35 ( .A(Mout_26), .B(Bu[11]), .Bin(Bout_36), .Ctrl(Q[12]), .Bout(Bout_35), .Mout(Mout_35));
FullSub_Mux fs34 ( .A(Mout_25), .B(Bu[12]), .Bin(Bout_35), .Ctrl(Q[12]), .Bout(Bout_34), .Mout(Mout_34)); 
FullSub_Mux fs33 ( .A(Mout_24), .B(Bu[13]), .Bin(Bout_34), .Ctrl(Q[12]), .Bout(Bout_33), .Mout(Mout_33));   
FullSub_Mux fs32 ( .A(Mout_23), .B(Bu[14]), .Bin(Bout_33), .Ctrl(Q[12]), .Bout(Bout_32), .Mout(Mout_32));
FullSub_Mux fs31 ( .A(Mout_22), .B(Bu[15]), .Bin(Bout_32), .Ctrl(Q[12]), .Bout(Bout_31), .Mout(Mout_31));
assign Q[12] = (~Bout_31) | Mout_21;

//row 5
FullSub_Mux fs50 ( .A(Au[11]), .B(Bu[0]), .Bin(1'b0), .Ctrl(Q[11]), .Bout(Bout_50), .Mout(Mout_50));
FullSub_Mux fs4f ( .A(Mout_40), .B(Bu[1]), .Bin(Bout_50), .Ctrl(Q[11]), .Bout(Bout_4f), .Mout(Mout_4f));
FullSub_Mux fs4e ( .A(Mout_3f), .B(Bu[2]), .Bin(Bout_4f), .Ctrl(Q[11]), .Bout(Bout_4e), .Mout(Mout_4e));
FullSub_Mux fs4d ( .A(Mout_3e), .B(Bu[3]), .Bin(Bout_4e), .Ctrl(Q[11]), .Bout(Bout_4d), .Mout(Mout_4d));
FullSub_Mux fs4c ( .A(Mout_3d), .B(Bu[4]), .Bin(Bout_4d), .Ctrl(Q[11]), .Bout(Bout_4c), .Mout(Mout_4c)); 
FullSub_Mux fs4b ( .A(Mout_3c), .B(Bu[5]), .Bin(Bout_4c), .Ctrl(Q[11]), .Bout(Bout_4b), .Mout(Mout_4b));   
FullSub_Mux fs4a ( .A(Mout_3b), .B(Bu[6]), .Bin(Bout_4b), .Ctrl(Q[11]), .Bout(Bout_4a), .Mout(Mout_4a));
FullSub_Mux fs49 ( .A(Mout_3a), .B(Bu[7]), .Bin(Bout_4a), .Ctrl(Q[11]), .Bout(Bout_49), .Mout(Mout_49));
FullSub_Mux fs48 ( .A(Mout_39), .B(Bu[8]), .Bin(Bout_49), .Ctrl(Q[11]), .Bout(Bout_48), .Mout(Mout_48));
FullSub_Mux fs47 ( .A(Mout_38), .B(Bu[9]), .Bin(Bout_48), .Ctrl(Q[11]), .Bout(Bout_47), .Mout(Mout_47));
FullSub_Mux fs46 ( .A(Mout_37), .B(Bu[10]), .Bin(Bout_47), .Ctrl(Q[11]), .Bout(Bout_46), .Mout(Mout_46));
FullSub_Mux fs45 ( .A(Mout_36), .B(Bu[11]), .Bin(Bout_46), .Ctrl(Q[11]), .Bout(Bout_45), .Mout(Mout_45));
FullSub_Mux fs44 ( .A(Mout_35), .B(Bu[12]), .Bin(Bout_45), .Ctrl(Q[11]), .Bout(Bout_44), .Mout(Mout_44)); 
FullSub_Mux fs43 ( .A(Mout_34), .B(Bu[13]), .Bin(Bout_44), .Ctrl(Q[11]), .Bout(Bout_43), .Mout(Mout_43));   
FullSub_Mux fs42 ( .A(Mout_33), .B(Bu[14]), .Bin(Bout_43), .Ctrl(Q[11]), .Bout(Bout_42), .Mout(Mout_42));
FullSub_Mux fs41 ( .A(Mout_32), .B(Bu[15]), .Bin(Bout_42), .Ctrl(Q[11]), .Bout(Bout_41), .Mout(Mout_41));
assign Q[11] = (~Bout_41) | Mout_31;

//row 6
FullSub_Mux fs60 ( .A(Au[10]), .B(Bu[0]), .Bin(1'b0), .Ctrl(Q[10]), .Bout(Bout_60), .Mout(Mout_60));
FullSub_Mux fs5f ( .A(Mout_50), .B(Bu[1]), .Bin(Bout_60), .Ctrl(Q[10]), .Bout(Bout_5f), .Mout(Mout_5f));
FullSub_Mux fs5e ( .A(Mout_4f), .B(Bu[2]), .Bin(Bout_5f), .Ctrl(Q[10]), .Bout(Bout_5e), .Mout(Mout_5e));
FullSub_Mux fs5d ( .A(Mout_4e), .B(Bu[3]), .Bin(Bout_5e), .Ctrl(Q[10]), .Bout(Bout_5d), .Mout(Mout_5d));
FullSub_Mux fs5c ( .A(Mout_4d), .B(Bu[4]), .Bin(Bout_5d), .Ctrl(Q[10]), .Bout(Bout_5c), .Mout(Mout_5c)); 
FullSub_Mux fs5b ( .A(Mout_4c), .B(Bu[5]), .Bin(Bout_5c), .Ctrl(Q[10]), .Bout(Bout_5b), .Mout(Mout_5b));   
FullSub_Mux fs5a ( .A(Mout_4b), .B(Bu[6]), .Bin(Bout_5b), .Ctrl(Q[10]), .Bout(Bout_5a), .Mout(Mout_5a));
FullSub_Mux fs59 ( .A(Mout_4a), .B(Bu[7]), .Bin(Bout_5a), .Ctrl(Q[10]), .Bout(Bout_59), .Mout(Mout_59));
FullSub_Mux fs58 ( .A(Mout_49), .B(Bu[8]), .Bin(Bout_59), .Ctrl(Q[10]), .Bout(Bout_58), .Mout(Mout_58));
FullSub_Mux fs57 ( .A(Mout_48), .B(Bu[9]), .Bin(Bout_58), .Ctrl(Q[10]), .Bout(Bout_57), .Mout(Mout_57));
FullSub_Mux fs56 ( .A(Mout_47), .B(Bu[10]), .Bin(Bout_57), .Ctrl(Q[10]), .Bout(Bout_56), .Mout(Mout_56));
FullSub_Mux fs55 ( .A(Mout_46), .B(Bu[11]), .Bin(Bout_56), .Ctrl(Q[10]), .Bout(Bout_55), .Mout(Mout_55));
FullSub_Mux fs54 ( .A(Mout_45), .B(Bu[12]), .Bin(Bout_55), .Ctrl(Q[10]), .Bout(Bout_54), .Mout(Mout_54)); 
FullSub_Mux fs53 ( .A(Mout_44), .B(Bu[13]), .Bin(Bout_54), .Ctrl(Q[10]), .Bout(Bout_53), .Mout(Mout_53));   
FullSub_Mux fs52 ( .A(Mout_43), .B(Bu[14]), .Bin(Bout_53), .Ctrl(Q[10]), .Bout(Bout_52), .Mout(Mout_52));
FullSub_Mux fs51 ( .A(Mout_42), .B(Bu[15]), .Bin(Bout_52), .Ctrl(Q[10]), .Bout(Bout_51), .Mout(Mout_51));
assign Q[10] = (~Bout_51) | Mout_41;

//row 7
FullSub_Mux fs70 ( .A(Au[9]), .B(Bu[0]), .Bin(1'b0), .Ctrl(Q[9]), .Bout(Bout_70), .Mout(Mout_70));
FullSub_Mux fs6f ( .A(Mout_60), .B(Bu[1]), .Bin(Bout_70), .Ctrl(Q[9]), .Bout(Bout_6f), .Mout(Mout_6f));
FullSub_Mux fs6e ( .A(Mout_5f), .B(Bu[2]), .Bin(Bout_6f), .Ctrl(Q[9]), .Bout(Bout_6e), .Mout(Mout_6e));
FullSub_Mux fs6d ( .A(Mout_5e), .B(Bu[3]), .Bin(Bout_6e), .Ctrl(Q[9]), .Bout(Bout_6d), .Mout(Mout_6d));
FullSub_Mux fs6c ( .A(Mout_5d), .B(Bu[4]), .Bin(Bout_6d), .Ctrl(Q[9]), .Bout(Bout_6c), .Mout(Mout_6c)); 
FullSub_Mux fs6b ( .A(Mout_5c), .B(Bu[5]), .Bin(Bout_6c), .Ctrl(Q[9]), .Bout(Bout_6b), .Mout(Mout_6b));   
FullSub_Mux fs6a ( .A(Mout_5b), .B(Bu[6]), .Bin(Bout_6b), .Ctrl(Q[9]), .Bout(Bout_6a), .Mout(Mout_6a));
FullSub_Mux fs69 ( .A(Mout_5a), .B(Bu[7]), .Bin(Bout_6a), .Ctrl(Q[9]), .Bout(Bout_69), .Mout(Mout_69));
FullSub_Mux fs68 ( .A(Mout_59), .B(Bu[8]), .Bin(Bout_69), .Ctrl(Q[9]), .Bout(Bout_68), .Mout(Mout_68));
FullSub_Mux fs67 ( .A(Mout_58), .B(Bu[9]), .Bin(Bout_68), .Ctrl(Q[9]), .Bout(Bout_67), .Mout(Mout_67));
FullSub_Mux fs66 ( .A(Mout_57), .B(Bu[10]), .Bin(Bout_67), .Ctrl(Q[9]), .Bout(Bout_66), .Mout(Mout_66));
FullSub_Mux fs65 ( .A(Mout_56), .B(Bu[11]), .Bin(Bout_66), .Ctrl(Q[9]), .Bout(Bout_65), .Mout(Mout_65));
FullSub_Mux fs64 ( .A(Mout_55), .B(Bu[12]), .Bin(Bout_65), .Ctrl(Q[9]), .Bout(Bout_64), .Mout(Mout_64)); 
FullSub_Mux fs63 ( .A(Mout_54), .B(Bu[13]), .Bin(Bout_64), .Ctrl(Q[9]), .Bout(Bout_63), .Mout(Mout_63));   
FullSub_Mux fs62 ( .A(Mout_53), .B(Bu[14]), .Bin(Bout_63), .Ctrl(Q[9]), .Bout(Bout_62), .Mout(Mout_62));
FullSub_Mux fs61 ( .A(Mout_52), .B(Bu[15]), .Bin(Bout_62), .Ctrl(Q[9]), .Bout(Bout_61), .Mout(Mout_61));
assign Q[9] = (~Bout_61) | Mout_51;

//row 8
FullSub_Mux fs80 ( .A(Au[8]), .B(Bu[0]), .Bin(1'b0), .Ctrl(Q[8]), .Bout(Bout_80), .Mout(Mout_80));
FullSub_Mux fs7f ( .A(Mout_70), .B(Bu[1]), .Bin(Bout_80), .Ctrl(Q[8]), .Bout(Bout_7f), .Mout(Mout_7f));
FullSub_Mux fs7e ( .A(Mout_6f), .B(Bu[2]), .Bin(Bout_7f), .Ctrl(Q[8]), .Bout(Bout_7e), .Mout(Mout_7e));
FullSub_Mux fs7d ( .A(Mout_6e), .B(Bu[3]), .Bin(Bout_7e), .Ctrl(Q[8]), .Bout(Bout_7d), .Mout(Mout_7d));
FullSub_Mux fs7c ( .A(Mout_6d), .B(Bu[4]), .Bin(Bout_7d), .Ctrl(Q[8]), .Bout(Bout_7c), .Mout(Mout_7c)); 
FullSub_Mux fs7b ( .A(Mout_6c), .B(Bu[5]), .Bin(Bout_7c), .Ctrl(Q[8]), .Bout(Bout_7b), .Mout(Mout_7b));   
FullSub_Mux fs7a ( .A(Mout_6b), .B(Bu[6]), .Bin(Bout_7b), .Ctrl(Q[8]), .Bout(Bout_7a), .Mout(Mout_7a));
FullSub_Mux fs79 ( .A(Mout_6a), .B(Bu[7]), .Bin(Bout_7a), .Ctrl(Q[8]), .Bout(Bout_79), .Mout(Mout_79));
FullSub_Mux fs78 ( .A(Mout_69), .B(Bu[8]), .Bin(Bout_79), .Ctrl(Q[8]), .Bout(Bout_78), .Mout(Mout_78));
FullSub_Mux fs77 ( .A(Mout_68), .B(Bu[9]), .Bin(Bout_78), .Ctrl(Q[8]), .Bout(Bout_77), .Mout(Mout_77));
FullSub_Mux fs76 ( .A(Mout_67), .B(Bu[10]), .Bin(Bout_77), .Ctrl(Q[8]), .Bout(Bout_76), .Mout(Mout_76));
FullSub_Mux fs75 ( .A(Mout_66), .B(Bu[11]), .Bin(Bout_76), .Ctrl(Q[8]), .Bout(Bout_75), .Mout(Mout_75));
FullSub_Mux fs74 ( .A(Mout_65), .B(Bu[12]), .Bin(Bout_75), .Ctrl(Q[8]), .Bout(Bout_74), .Mout(Mout_74)); 
FullSub_Mux fs73 ( .A(Mout_64), .B(Bu[13]), .Bin(Bout_74), .Ctrl(Q[8]), .Bout(Bout_73), .Mout(Mout_73));   
FullSub_Mux fs72 ( .A(Mout_63), .B(Bu[14]), .Bin(Bout_73), .Ctrl(Q[8]), .Bout(Bout_72), .Mout(Mout_72));
FullSub_Mux fs71 ( .A(Mout_62), .B(Bu[15]), .Bin(Bout_72), .Ctrl(Q[8]), .Bout(Bout_71), .Mout(Mout_71));
assign Q[8] = (~Bout_71) | Mout_61;

//row 9
FullSub_Mux fs90 ( .A(Au[7]), .B(Bu[0]), .Bin(1'b0), .Ctrl(Q[7]), .Bout(Bout_90), .Mout(Mout_90));
FullSub_Mux fs8f ( .A(Mout_80), .B(Bu[1]), .Bin(Bout_90), .Ctrl(Q[7]), .Bout(Bout_8f), .Mout(Mout_8f));
FullSub_Mux fs8e ( .A(Mout_7f), .B(Bu[2]), .Bin(Bout_8f), .Ctrl(Q[7]), .Bout(Bout_8e), .Mout(Mout_8e));
FullSub_Mux fs8d ( .A(Mout_7e), .B(Bu[3]), .Bin(Bout_8e), .Ctrl(Q[7]), .Bout(Bout_8d), .Mout(Mout_8d));
FullSub_Mux fs8c ( .A(Mout_7d), .B(Bu[4]), .Bin(Bout_8d), .Ctrl(Q[7]), .Bout(Bout_8c), .Mout(Mout_8c)); 
FullSub_Mux fs8b ( .A(Mout_7c), .B(Bu[5]), .Bin(Bout_8c), .Ctrl(Q[7]), .Bout(Bout_8b), .Mout(Mout_8b));   
FullSub_Mux fs8a ( .A(Mout_7b), .B(Bu[6]), .Bin(Bout_8b), .Ctrl(Q[7]), .Bout(Bout_8a), .Mout(Mout_8a));
FullSub_Mux fs89 ( .A(Mout_7a), .B(Bu[7]), .Bin(Bout_8a), .Ctrl(Q[7]), .Bout(Bout_89), .Mout(Mout_89));
FullSub_Mux fs88 ( .A(Mout_79), .B(Bu[8]), .Bin(Bout_89), .Ctrl(Q[7]), .Bout(Bout_88), .Mout(Mout_88));
FullSub_Mux fs87 ( .A(Mout_78), .B(Bu[9]), .Bin(Bout_88), .Ctrl(Q[7]), .Bout(Bout_87), .Mout(Mout_87));
FullSub_Mux fs86 ( .A(Mout_77), .B(Bu[10]), .Bin(Bout_87), .Ctrl(Q[7]), .Bout(Bout_86), .Mout(Mout_86));
FullSub_Mux fs85 ( .A(Mout_76), .B(Bu[11]), .Bin(Bout_86), .Ctrl(Q[7]), .Bout(Bout_85), .Mout(Mout_85));
FullSub_Mux fs84 ( .A(Mout_75), .B(Bu[12]), .Bin(Bout_85), .Ctrl(Q[7]), .Bout(Bout_84), .Mout(Mout_84)); 
FullSub_Mux fs83 ( .A(Mout_74), .B(Bu[13]), .Bin(Bout_84), .Ctrl(Q[7]), .Bout(Bout_83), .Mout(Mout_83));   
FullSub_Mux fs82 ( .A(Mout_73), .B(Bu[14]), .Bin(Bout_83), .Ctrl(Q[7]), .Bout(Bout_82), .Mout(Mout_82));
FullSub_Mux fs81 ( .A(Mout_72), .B(Bu[15]), .Bin(Bout_82), .Ctrl(Q[7]), .Bout(Bout_81), .Mout(Mout_81));
assign Q[7] = (~Bout_81) | Mout_71;

//row 10
FullSub_Mux fsa0 ( .A(Au[6]), .B(Bu[0]), .Bin(1'b0), .Ctrl(Q[6]), .Bout(Bout_a0), .Mout(Mout_a0));
FullSub_Mux fs9f ( .A(Mout_90), .B(Bu[1]), .Bin(Bout_a0), .Ctrl(Q[6]), .Bout(Bout_9f), .Mout(Mout_9f));
FullSub_Mux fs9e ( .A(Mout_8f), .B(Bu[2]), .Bin(Bout_9f), .Ctrl(Q[6]), .Bout(Bout_9e), .Mout(Mout_9e));
FullSub_Mux fs9d ( .A(Mout_8e), .B(Bu[3]), .Bin(Bout_9e), .Ctrl(Q[6]), .Bout(Bout_9d), .Mout(Mout_9d));
FullSub_Mux fs9c ( .A(Mout_8d), .B(Bu[4]), .Bin(Bout_9d), .Ctrl(Q[6]), .Bout(Bout_9c), .Mout(Mout_9c)); 
FullSub_Mux fs9b ( .A(Mout_8c), .B(Bu[5]), .Bin(Bout_9c), .Ctrl(Q[6]), .Bout(Bout_9b), .Mout(Mout_9b));   
FullSub_Mux fs9a ( .A(Mout_8b), .B(Bu[6]), .Bin(Bout_9b), .Ctrl(Q[6]), .Bout(Bout_9a), .Mout(Mout_9a));
FullSub_Mux fs99 ( .A(Mout_8a), .B(Bu[7]), .Bin(Bout_9a), .Ctrl(Q[6]), .Bout(Bout_99), .Mout(Mout_99));
FullSub_Mux fs98 ( .A(Mout_89), .B(Bu[8]), .Bin(Bout_99), .Ctrl(Q[6]), .Bout(Bout_98), .Mout(Mout_98));
FullSub_Mux fs97 ( .A(Mout_88), .B(Bu[9]), .Bin(Bout_98), .Ctrl(Q[6]), .Bout(Bout_97), .Mout(Mout_97));
FullSub_Mux fs96 ( .A(Mout_87), .B(Bu[10]), .Bin(Bout_97), .Ctrl(Q[6]), .Bout(Bout_96), .Mout(Mout_96));
FullSub_Mux fs95 ( .A(Mout_86), .B(Bu[11]), .Bin(Bout_96), .Ctrl(Q[6]), .Bout(Bout_95), .Mout(Mout_95));
FullSub_Mux fs94 ( .A(Mout_85), .B(Bu[12]), .Bin(Bout_95), .Ctrl(Q[6]), .Bout(Bout_94), .Mout(Mout_94)); 
FullSub_Mux fs93 ( .A(Mout_84), .B(Bu[13]), .Bin(Bout_94), .Ctrl(Q[6]), .Bout(Bout_93), .Mout(Mout_93));   
FullSub_Mux fs92 ( .A(Mout_83), .B(Bu[14]), .Bin(Bout_93), .Ctrl(Q[6]), .Bout(Bout_92), .Mout(Mout_92));
FullSub_Mux fs91 ( .A(Mout_82), .B(Bu[15]), .Bin(Bout_92), .Ctrl(Q[6]), .Bout(Bout_91), .Mout(Mout_91));
assign Q[6] = (~Bout_91) | Mout_81;

//row 11
FullSub_Mux fsb0 ( .A(Au[5]), .B(Bu[0]), .Bin(1'b0), .Ctrl(Q[5]), .Bout(Bout_b0), .Mout(Mout_b0));
FullSub_Mux fsaf ( .A(Mout_a0), .B(Bu[1]), .Bin(Bout_b0), .Ctrl(Q[5]), .Bout(Bout_af), .Mout(Mout_af));
FullSub_Mux fsae ( .A(Mout_9f), .B(Bu[2]), .Bin(Bout_af), .Ctrl(Q[5]), .Bout(Bout_ae), .Mout(Mout_ae));
FullSub_Mux fsad ( .A(Mout_9e), .B(Bu[3]), .Bin(Bout_ae), .Ctrl(Q[5]), .Bout(Bout_ad), .Mout(Mout_ad));
FullSub_Mux fsac ( .A(Mout_9d), .B(Bu[4]), .Bin(Bout_ad), .Ctrl(Q[5]), .Bout(Bout_ac), .Mout(Mout_ac)); 
FullSub_Mux fsab ( .A(Mout_9c), .B(Bu[5]), .Bin(Bout_ac), .Ctrl(Q[5]), .Bout(Bout_ab), .Mout(Mout_ab));   
FullSub_Mux fsaa ( .A(Mout_9b), .B(Bu[6]), .Bin(Bout_ab), .Ctrl(Q[5]), .Bout(Bout_aa), .Mout(Mout_aa));
FullSub_Mux fsa9 ( .A(Mout_9a), .B(Bu[7]), .Bin(Bout_aa), .Ctrl(Q[5]), .Bout(Bout_a9), .Mout(Mout_a9));
FullSub_Mux fsa8 ( .A(Mout_99), .B(Bu[8]), .Bin(Bout_a9), .Ctrl(Q[5]), .Bout(Bout_a8), .Mout(Mout_a8));
FullSub_Mux fsa7 ( .A(Mout_98), .B(Bu[9]), .Bin(Bout_a8), .Ctrl(Q[5]), .Bout(Bout_a7), .Mout(Mout_a7));
FullSub_Mux fsa6 ( .A(Mout_97), .B(Bu[10]), .Bin(Bout_a7), .Ctrl(Q[5]), .Bout(Bout_a6), .Mout(Mout_a6));
FullSub_Mux fsa5 ( .A(Mout_96), .B(Bu[11]), .Bin(Bout_a6), .Ctrl(Q[5]), .Bout(Bout_a5), .Mout(Mout_a5));
FullSub_Mux fsa4 ( .A(Mout_95), .B(Bu[12]), .Bin(Bout_a5), .Ctrl(Q[5]), .Bout(Bout_a4), .Mout(Mout_a4)); 
FullSub_Mux fsa3 ( .A(Mout_94), .B(Bu[13]), .Bin(Bout_a4), .Ctrl(Q[5]), .Bout(Bout_a3), .Mout(Mout_a3));   
FullSub_Mux fsa2 ( .A(Mout_93), .B(Bu[14]), .Bin(Bout_a3), .Ctrl(Q[5]), .Bout(Bout_a2), .Mout(Mout_a2));
FullSub_Mux fsa1 ( .A(Mout_92), .B(Bu[15]), .Bin(Bout_a2), .Ctrl(Q[5]), .Bout(Bout_a1), .Mout(Mout_a1));
assign Q[5] = (~Bout_a1) | Mout_91;

//row 12
FullSub_Mux fsc0 ( .A(Au[4]), .B(Bu[0]), .Bin(1'b0), .Ctrl(Q[4]), .Bout(Bout_c0), .Mout(Mout_c0));
FullSub_Mux fsbf ( .A(Mout_b0), .B(Bu[1]), .Bin(Bout_c0), .Ctrl(Q[4]), .Bout(Bout_bf), .Mout(Mout_bf));
FullSub_Mux fsbe ( .A(Mout_af), .B(Bu[2]), .Bin(Bout_bf), .Ctrl(Q[4]), .Bout(Bout_be), .Mout(Mout_be));
FullSub_Mux fsbd ( .A(Mout_ae), .B(Bu[3]), .Bin(Bout_be), .Ctrl(Q[4]), .Bout(Bout_bd), .Mout(Mout_bd));
FullSub_Mux fsbc ( .A(Mout_ad), .B(Bu[4]), .Bin(Bout_bd), .Ctrl(Q[4]), .Bout(Bout_bc), .Mout(Mout_bc)); 
FullSub_Mux fsbb ( .A(Mout_ac), .B(Bu[5]), .Bin(Bout_bc), .Ctrl(Q[4]), .Bout(Bout_bb), .Mout(Mout_bb));   
FullSub_Mux fsba ( .A(Mout_ab), .B(Bu[6]), .Bin(Bout_bb), .Ctrl(Q[4]), .Bout(Bout_ba), .Mout(Mout_ba));
FullSub_Mux fsb9 ( .A(Mout_aa), .B(Bu[7]), .Bin(Bout_ba), .Ctrl(Q[4]), .Bout(Bout_b9), .Mout(Mout_b9));
FullSub_Mux fsb8 ( .A(Mout_a9), .B(Bu[8]), .Bin(Bout_b9), .Ctrl(Q[4]), .Bout(Bout_b8), .Mout(Mout_b8));
FullSub_Mux fsb7 ( .A(Mout_a8), .B(Bu[9]), .Bin(Bout_b8), .Ctrl(Q[4]), .Bout(Bout_b7), .Mout(Mout_b7));
FullSub_Mux fsb6 ( .A(Mout_a7), .B(Bu[10]), .Bin(Bout_b7), .Ctrl(Q[4]), .Bout(Bout_b6), .Mout(Mout_b6));
FullSub_Mux fsb5 ( .A(Mout_a6), .B(Bu[11]), .Bin(Bout_b6), .Ctrl(Q[4]), .Bout(Bout_b5), .Mout(Mout_b5));
FullSub_Mux fsb4 ( .A(Mout_a5), .B(Bu[12]), .Bin(Bout_b5), .Ctrl(Q[4]), .Bout(Bout_b4), .Mout(Mout_b4)); 
FullSub_Mux fsb3 ( .A(Mout_a4), .B(Bu[13]), .Bin(Bout_b4), .Ctrl(Q[4]), .Bout(Bout_b3), .Mout(Mout_b3));   
FullSub_Mux fsb2 ( .A(Mout_a3), .B(Bu[14]), .Bin(Bout_b3), .Ctrl(Q[4]), .Bout(Bout_b2), .Mout(Mout_b2));
FullSub_Mux fsb1 ( .A(Mout_a2), .B(Bu[15]), .Bin(Bout_b2), .Ctrl(Q[4]), .Bout(Bout_b1), .Mout(Mout_b1));
assign Q[4] = (~Bout_b1) | Mout_a1;

//row 13
FullSub_Mux fsd0 ( .A(Au[3]), .B(Bu[0]), .Bin(1'b0), .Ctrl(Q[3]), .Bout(Bout_d0), .Mout(Mout_d0));
FullSub_Mux fscf ( .A(Mout_c0), .B(Bu[1]), .Bin(Bout_d0), .Ctrl(Q[3]), .Bout(Bout_cf), .Mout(Mout_cf));
FullSub_Mux fsce ( .A(Mout_bf), .B(Bu[2]), .Bin(Bout_cf), .Ctrl(Q[3]), .Bout(Bout_ce), .Mout(Mout_ce));
FullSub_Mux fscd ( .A(Mout_be), .B(Bu[3]), .Bin(Bout_ce), .Ctrl(Q[3]), .Bout(Bout_cd), .Mout(Mout_cd));
FullSub_Mux fscc ( .A(Mout_bd), .B(Bu[4]), .Bin(Bout_cd), .Ctrl(Q[3]), .Bout(Bout_cc), .Mout(Mout_cc)); 
FullSub_Mux fscb ( .A(Mout_bc), .B(Bu[5]), .Bin(Bout_cc), .Ctrl(Q[3]), .Bout(Bout_cb), .Mout(Mout_cb));   
FullSub_Mux fsca ( .A(Mout_bb), .B(Bu[6]), .Bin(Bout_cb), .Ctrl(Q[3]), .Bout(Bout_ca), .Mout(Mout_ca));
FullSub_Mux fsc9 ( .A(Mout_ba), .B(Bu[7]), .Bin(Bout_ca), .Ctrl(Q[3]), .Bout(Bout_c9), .Mout(Mout_c9));
FullSub_Mux fsc8 ( .A(Mout_b9), .B(Bu[8]), .Bin(Bout_c9), .Ctrl(Q[3]), .Bout(Bout_c8), .Mout(Mout_c8));
FullSub_Mux fsc7 ( .A(Mout_b8), .B(Bu[9]), .Bin(Bout_c8), .Ctrl(Q[3]), .Bout(Bout_c7), .Mout(Mout_c7));
FullSub_Mux fsc6 ( .A(Mout_b7), .B(Bu[10]), .Bin(Bout_c7), .Ctrl(Q[3]), .Bout(Bout_c6), .Mout(Mout_c6));
FullSub_Mux fsc5 ( .A(Mout_b6), .B(Bu[11]), .Bin(Bout_c6), .Ctrl(Q[3]), .Bout(Bout_c5), .Mout(Mout_c5));
FullSub_Mux fsc4 ( .A(Mout_b5), .B(Bu[12]), .Bin(Bout_c5), .Ctrl(Q[3]), .Bout(Bout_c4), .Mout(Mout_c4)); 
FullSub_Mux fsc3 ( .A(Mout_b4), .B(Bu[13]), .Bin(Bout_c4), .Ctrl(Q[3]), .Bout(Bout_c3), .Mout(Mout_c3));   
FullSub_Mux fsc2 ( .A(Mout_b3), .B(Bu[14]), .Bin(Bout_c3), .Ctrl(Q[3]), .Bout(Bout_c2), .Mout(Mout_c2));
FullSub_Mux fsc1 ( .A(Mout_b2), .B(Bu[15]), .Bin(Bout_c2), .Ctrl(Q[3]), .Bout(Bout_c1), .Mout(Mout_c1));
assign Q[3] = (~Bout_c1) | Mout_b1;

//row 14
FullSub_Mux fse0 ( .A(Au[2]), .B(Bu[0]), .Bin(1'b0), .Ctrl(Q[2]), .Bout(Bout_e0), .Mout(Mout_e0));
FullSub_Mux fsdf ( .A(Mout_d0), .B(Bu[1]), .Bin(Bout_e0), .Ctrl(Q[2]), .Bout(Bout_df), .Mout(Mout_df));
FullSub_Mux fsde ( .A(Mout_cf), .B(Bu[2]), .Bin(Bout_df), .Ctrl(Q[2]), .Bout(Bout_de), .Mout(Mout_de));
FullSub_Mux fsdd ( .A(Mout_ce), .B(Bu[3]), .Bin(Bout_de), .Ctrl(Q[2]), .Bout(Bout_dd), .Mout(Mout_dd));
FullSub_Mux fsdc ( .A(Mout_cd), .B(Bu[4]), .Bin(Bout_dd), .Ctrl(Q[2]), .Bout(Bout_dc), .Mout(Mout_dc)); 
FullSub_Mux fsdb ( .A(Mout_cc), .B(Bu[5]), .Bin(Bout_dc), .Ctrl(Q[2]), .Bout(Bout_db), .Mout(Mout_db));   
FullSub_Mux fsda ( .A(Mout_cb), .B(Bu[6]), .Bin(Bout_db), .Ctrl(Q[2]), .Bout(Bout_da), .Mout(Mout_da));
FullSub_Mux fsd9 ( .A(Mout_ca), .B(Bu[7]), .Bin(Bout_da), .Ctrl(Q[2]), .Bout(Bout_d9), .Mout(Mout_d9));
FullSub_Mux fsd8 ( .A(Mout_c9), .B(Bu[8]), .Bin(Bout_d9), .Ctrl(Q[2]), .Bout(Bout_d8), .Mout(Mout_d8));
FullSub_Mux fsd7 ( .A(Mout_c8), .B(Bu[9]), .Bin(Bout_d8), .Ctrl(Q[2]), .Bout(Bout_d7), .Mout(Mout_d7));
FullSub_Mux fsd6 ( .A(Mout_c7), .B(Bu[10]), .Bin(Bout_d7), .Ctrl(Q[2]), .Bout(Bout_d6), .Mout(Mout_d6));
FullSub_Mux fsd5 ( .A(Mout_c6), .B(Bu[11]), .Bin(Bout_d6), .Ctrl(Q[2]), .Bout(Bout_d5), .Mout(Mout_d5));
FullSub_Mux fsd4 ( .A(Mout_c5), .B(Bu[12]), .Bin(Bout_d5), .Ctrl(Q[2]), .Bout(Bout_d4), .Mout(Mout_d4)); 
FullSub_Mux fsd3 ( .A(Mout_c4), .B(Bu[13]), .Bin(Bout_d4), .Ctrl(Q[2]), .Bout(Bout_d3), .Mout(Mout_d3));   
FullSub_Mux fsd2 ( .A(Mout_c3), .B(Bu[14]), .Bin(Bout_d3), .Ctrl(Q[2]), .Bout(Bout_d2), .Mout(Mout_d2));
FullSub_Mux fsd1 ( .A(Mout_c2), .B(Bu[15]), .Bin(Bout_d2), .Ctrl(Q[2]), .Bout(Bout_d1), .Mout(Mout_d1));
assign Q[2] = (~Bout_d1) | Mout_c1;

//row 15
FullSub_Mux fsf0 ( .A(Au[1]), .B(Bu[0]), .Bin(1'b0), .Ctrl(Q[1]), .Bout(Bout_f0), .Mout(Mout_f0));
FullSub_Mux fsef ( .A(Mout_e0), .B(Bu[1]), .Bin(Bout_f0), .Ctrl(Q[1]), .Bout(Bout_ef), .Mout(Mout_ef));
FullSub_Mux fsee ( .A(Mout_df), .B(Bu[2]), .Bin(Bout_ef), .Ctrl(Q[1]), .Bout(Bout_ee), .Mout(Mout_ee));
FullSub_Mux fsed ( .A(Mout_de), .B(Bu[3]), .Bin(Bout_ee), .Ctrl(Q[1]), .Bout(Bout_ed), .Mout(Mout_ed));
FullSub_Mux fsec ( .A(Mout_dd), .B(Bu[4]), .Bin(Bout_ed), .Ctrl(Q[1]), .Bout(Bout_ec), .Mout(Mout_ec)); 
FullSub_Mux fseb ( .A(Mout_dc), .B(Bu[5]), .Bin(Bout_ec), .Ctrl(Q[1]), .Bout(Bout_eb), .Mout(Mout_eb));   
FullSub_Mux fsea ( .A(Mout_db), .B(Bu[6]), .Bin(Bout_eb), .Ctrl(Q[1]), .Bout(Bout_ea), .Mout(Mout_ea));
FullSub_Mux fse9 ( .A(Mout_da), .B(Bu[7]), .Bin(Bout_ea), .Ctrl(Q[1]), .Bout(Bout_e9), .Mout(Mout_e9));
FullSub_Mux fse8 ( .A(Mout_d9), .B(Bu[8]), .Bin(Bout_e9), .Ctrl(Q[1]), .Bout(Bout_e8), .Mout(Mout_e8));
FullSub_Mux fse7 ( .A(Mout_d8), .B(Bu[9]), .Bin(Bout_e8), .Ctrl(Q[1]), .Bout(Bout_e7), .Mout(Mout_e7));
FullSub_Mux fse6 ( .A(Mout_d7), .B(Bu[10]), .Bin(Bout_e7), .Ctrl(Q[1]), .Bout(Bout_e6), .Mout(Mout_e6));
FullSub_Mux fse5 ( .A(Mout_d6), .B(Bu[11]), .Bin(Bout_e6), .Ctrl(Q[1]), .Bout(Bout_e5), .Mout(Mout_e5));
FullSub_Mux fse4 ( .A(Mout_d5), .B(Bu[12]), .Bin(Bout_e5), .Ctrl(Q[1]), .Bout(Bout_e4), .Mout(Mout_e4)); 
FullSub_Mux fse3 ( .A(Mout_d4), .B(Bu[13]), .Bin(Bout_e4), .Ctrl(Q[1]), .Bout(Bout_e3), .Mout(Mout_e3));   
FullSub_Mux fse2 ( .A(Mout_d3), .B(Bu[14]), .Bin(Bout_e3), .Ctrl(Q[1]), .Bout(Bout_e2), .Mout(Mout_e2));
FullSub_Mux fse1 ( .A(Mout_d2), .B(Bu[15]), .Bin(Bout_e2), .Ctrl(Q[1]), .Bout(Bout_e1), .Mout(Mout_e1));
assign Q[1] = (~Bout_e1) | Mout_d1;

//row 16
FullSub_Mux fs00 ( .A(Au[0]), .B(Bu[0]), .Bin(1'b0), .Ctrl(Q[0]), .Bout(Bout_00), .Mout(Mout_00));
FullSub_Mux fsff ( .A(Mout_f0), .B(Bu[1]), .Bin(Bout_00), .Ctrl(Q[0]), .Bout(Bout_ff), .Mout(Mout_ff));
FullSub_Mux fsfe ( .A(Mout_ef), .B(Bu[2]), .Bin(Bout_ff), .Ctrl(Q[0]), .Bout(Bout_fe), .Mout(Mout_fe));
FullSub_Mux fsfd ( .A(Mout_ee), .B(Bu[3]), .Bin(Bout_fe), .Ctrl(Q[0]), .Bout(Bout_fd), .Mout(Mout_fd));
FullSub_Mux fsfc ( .A(Mout_ed), .B(Bu[4]), .Bin(Bout_fd), .Ctrl(Q[0]), .Bout(Bout_fc), .Mout(Mout_fc)); 
FullSub_Mux fsfb ( .A(Mout_ec), .B(Bu[5]), .Bin(Bout_fc), .Ctrl(Q[0]), .Bout(Bout_fb), .Mout(Mout_fb));   
FullSub_Mux fsfa ( .A(Mout_eb), .B(Bu[6]), .Bin(Bout_fb), .Ctrl(Q[0]), .Bout(Bout_fa), .Mout(Mout_fa));
FullSub_Mux fsf9 ( .A(Mout_ea), .B(Bu[7]), .Bin(Bout_fa), .Ctrl(Q[0]), .Bout(Bout_f9), .Mout(Mout_f9));
FullSub_Mux fsf8 ( .A(Mout_e9), .B(Bu[8]), .Bin(Bout_f9), .Ctrl(Q[0]), .Bout(Bout_f8), .Mout(Mout_f8));
FullSub_Mux fsf7 ( .A(Mout_e8), .B(Bu[9]), .Bin(Bout_f8), .Ctrl(Q[0]), .Bout(Bout_f7), .Mout(Mout_f7));
FullSub_Mux fsf6 ( .A(Mout_e7), .B(Bu[10]), .Bin(Bout_f7), .Ctrl(Q[0]), .Bout(Bout_f6), .Mout(Mout_f6));
FullSub_Mux fsf5 ( .A(Mout_e6), .B(Bu[11]), .Bin(Bout_f6), .Ctrl(Q[0]), .Bout(Bout_f5), .Mout(Mout_f5));
FullSub_Mux fsf4 ( .A(Mout_e5), .B(Bu[12]), .Bin(Bout_f5), .Ctrl(Q[0]), .Bout(Bout_f4), .Mout(Mout_f4)); 
FullSub_Mux fsf3 ( .A(Mout_e4), .B(Bu[13]), .Bin(Bout_f4), .Ctrl(Q[0]), .Bout(Bout_f3), .Mout(Mout_f3));   
FullSub_Mux fsf2 ( .A(Mout_e3), .B(Bu[14]), .Bin(Bout_f3), .Ctrl(Q[0]), .Bout(Bout_f2), .Mout(Mout_f2));
FullSub_Mux fsf1 ( .A(Mout_e2), .B(Bu[15]), .Bin(Bout_f2), .Ctrl(Q[0]), .Bout(Bout_f1), .Mout(Mout_f1));
assign Q[0] = (~Bout_f1) | Mout_e1;

assign R[0] = Mout_00;
assign R[1] = Mout_ff;
assign R[2] = Mout_fe;
assign R[3] = Mout_fd;
assign R[4] = Mout_fc;
assign R[5] = Mout_fb;
assign R[6] = Mout_fa;
assign R[7] = Mout_f9;
assign R[8] = Mout_f8;
assign R[9] = Mout_f7;
assign R[10] = Mout_f6;
assign R[11] = Mout_f5;
assign R[12] = Mout_f4;
assign R[13] = Mout_f3;
assign R[14] = Mout_f2;
assign R[15] = Mout_f1;

assign Qflip = (~Q) + 1;
assign Qf = (sig) ? Qflip : Q;
    
endmodule
