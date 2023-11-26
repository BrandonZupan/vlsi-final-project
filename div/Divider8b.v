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


module Divider8bit(
    input [7:0] A,
    input [7:0] B,
    output [7:0] Qf,
    output [7:0] R,
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

wire Mout_01;
wire Mout_02;
wire Mout_03;
wire Mout_04;
wire Mout_05;
wire Mout_06;
wire Mout_07;
wire Mout_08;

// row 2 
wire Bout_11;
wire Bout_12;
wire Bout_13;
wire Bout_14;
wire Bout_15;
wire Bout_16;
wire Bout_17;
wire Bout_18;

wire Mout_11;
wire Mout_12;
wire Mout_13;
wire Mout_14;
wire Mout_15;
wire Mout_16;
wire Mout_17;
wire Mout_18;

// row 3 
wire Bout_21;
wire Bout_22;
wire Bout_23;
wire Bout_24;
wire Bout_25;
wire Bout_26;
wire Bout_27;
wire Bout_28;

wire Mout_21;
wire Mout_22;
wire Mout_23;
wire Mout_24;
wire Mout_25;
wire Mout_26;
wire Mout_27;
wire Mout_28;

// row 4 
wire Bout_31;
wire Bout_32;
wire Bout_33;
wire Bout_34;
wire Bout_35;
wire Bout_36;
wire Bout_37;
wire Bout_38;

wire Mout_31;
wire Mout_32;
wire Mout_33;
wire Mout_34;
wire Mout_35;
wire Mout_36;
wire Mout_37;
wire Mout_38;

// row 5 
wire Bout_41;
wire Bout_42;
wire Bout_43;
wire Bout_44;
wire Bout_45;
wire Bout_46;
wire Bout_47;
wire Bout_48;

wire Mout_41;
wire Mout_42;
wire Mout_43;
wire Mout_44;
wire Mout_45;
wire Mout_46;
wire Mout_47;
wire Mout_48;

// row 6 
wire Bout_51;
wire Bout_52;
wire Bout_53;
wire Bout_54;
wire Bout_55;
wire Bout_56;
wire Bout_57;
wire Bout_58;

wire Mout_51;
wire Mout_52;
wire Mout_53;
wire Mout_54;
wire Mout_55;
wire Mout_56;
wire Mout_57;
wire Mout_58;

// row 7 
wire Bout_61;
wire Bout_62;
wire Bout_63;
wire Bout_64;
wire Bout_65;
wire Bout_66;
wire Bout_67;
wire Bout_68;

wire Mout_61;
wire Mout_62;
wire Mout_63;
wire Mout_64;
wire Mout_65;
wire Mout_66;
wire Mout_67;
wire Mout_68;

// row 8 
wire Bout_71;
wire Bout_72;
wire Bout_73;
wire Bout_74;
wire Bout_75;
wire Bout_76;
wire Bout_77;
wire Bout_78;

wire Mout_71;
wire Mout_72;
wire Mout_73;
wire Mout_74;
wire Mout_75;
wire Mout_76;
wire Mout_77;
wire Mout_78;

//2s comp conversion
wire [7:0] Au;
wire [7:0] Bu;
wire [7:0] Aflip;
wire [7:0] Bflip;

wire [7:0] Qflip;
wire [7:0] Q;
wire sig;

assign Aflip = (~A) + 1;
assign Bflip = (~B) + 1;

assign Au = (A[7]) ? Aflip : A;
assign Bu = (B[7]) ? Bflip : B;

assign err = (Au[7] & ~Au[6] & ~Au[5] & ~Au[4] & ~Au[3] & ~Au[2] & ~Au[1] & ~Au[0] &
              Bu[7] & ~Bu[6] & ~Bu[5] & ~Bu[4] & ~Bu[3] & ~Bu[2] & ~Bu[1] & ~Bu[0] &
              ~Bu[7] & ~Bu[6] & ~Bu[5] & ~Bu[4] & ~Bu[3] & ~Bu[2] & ~Bu[1] & ~Bu[0]);

assign sig = A[7] ^ B[7];

//row 1 
FullSub_Mux fs08 ( .A(Au[7]), .B(Bu[0]), .Bin(1'b0), .Ctrl(Q[7]), .Bout(Bout_08), .Mout(Mout_08));
FullSub_Mux fs07 ( .A(1'b0), .B(Bu[1]), .Bin(Bout_08), .Ctrl(Q[7]), .Bout(Bout_07), .Mout(Mout_07));
FullSub_Mux fs06 ( .A(1'b0), .B(Bu[2]), .Bin(Bout_07), .Ctrl(Q[7]), .Bout(Bout_06), .Mout(Mout_06));
FullSub_Mux fs05 ( .A(1'b0), .B(Bu[3]), .Bin(Bout_06), .Ctrl(Q[7]), .Bout(Bout_05), .Mout(Mout_05));
FullSub_Mux fs04 ( .A(1'b0), .B(Bu[4]), .Bin(Bout_05), .Ctrl(Q[7]), .Bout(Bout_04), .Mout(Mout_04)); 
FullSub_Mux fs03 ( .A(1'b0), .B(Bu[5]), .Bin(Bout_04), .Ctrl(Q[7]), .Bout(Bout_03), .Mout(Mout_03));   
FullSub_Mux fs02 ( .A(1'b0), .B(Bu[6]), .Bin(Bout_03), .Ctrl(Q[7]), .Bout(Bout_02), .Mout(Mout_02));
FullSub_Mux fs01 ( .A(1'b0), .B(Bu[7]), .Bin(Bout_02), .Ctrl(Q[7]), .Bout(Bout_01), .Mout(Mout_01));
assign Q[7] = (~Bout_01);

//row 2 
FullSub_Mux fs18 ( .A(Au[6]), .B(Bu[0]), .Bin(1'b0), .Ctrl(Q[6]), .Bout(Bout_18), .Mout(Mout_18));
FullSub_Mux fs17 ( .A(Mout_08), .B(Bu[1]), .Bin(Bout_18), .Ctrl(Q[6]), .Bout(Bout_17), .Mout(Mout_17));
FullSub_Mux fs16 ( .A(Mout_07), .B(Bu[2]), .Bin(Bout_17), .Ctrl(Q[6]), .Bout(Bout_16), .Mout(Mout_16));
FullSub_Mux fs15 ( .A(Mout_06), .B(Bu[3]), .Bin(Bout_16), .Ctrl(Q[6]), .Bout(Bout_15), .Mout(Mout_15));
FullSub_Mux fs14 ( .A(Mout_05), .B(Bu[4]), .Bin(Bout_15), .Ctrl(Q[6]), .Bout(Bout_14), .Mout(Mout_14)); 
FullSub_Mux fs13 ( .A(Mout_04), .B(Bu[5]), .Bin(Bout_14), .Ctrl(Q[6]), .Bout(Bout_13), .Mout(Mout_13));   
FullSub_Mux fs12 ( .A(Mout_03), .B(Bu[6]), .Bin(Bout_13), .Ctrl(Q[6]), .Bout(Bout_12), .Mout(Mout_12));
FullSub_Mux fs11 ( .A(Mout_02), .B(Bu[7]), .Bin(Bout_12), .Ctrl(Q[6]), .Bout(Bout_11), .Mout(Mout_11));
assign Q[6] = (~Bout_11) | Mout_01;

//row 3
FullSub_Mux fs28 ( .A(Au[5]), .B(Bu[0]), .Bin(1'b0), .Ctrl(Q[5]), .Bout(Bout_28), .Mout(Mout_28));
FullSub_Mux fs27 ( .A(Mout_18), .B(Bu[1]), .Bin(Bout_28), .Ctrl(Q[5]), .Bout(Bout_27), .Mout(Mout_27));
FullSub_Mux fs26 ( .A(Mout_17), .B(Bu[2]), .Bin(Bout_27), .Ctrl(Q[5]), .Bout(Bout_26), .Mout(Mout_26));
FullSub_Mux fs25 ( .A(Mout_16), .B(Bu[3]), .Bin(Bout_26), .Ctrl(Q[5]), .Bout(Bout_25), .Mout(Mout_25));
FullSub_Mux fs24 ( .A(Mout_15), .B(Bu[4]), .Bin(Bout_25), .Ctrl(Q[5]), .Bout(Bout_24), .Mout(Mout_24)); 
FullSub_Mux fs23 ( .A(Mout_14), .B(Bu[5]), .Bin(Bout_24), .Ctrl(Q[5]), .Bout(Bout_23), .Mout(Mout_23));   
FullSub_Mux fs22 ( .A(Mout_13), .B(Bu[6]), .Bin(Bout_23), .Ctrl(Q[5]), .Bout(Bout_22), .Mout(Mout_22));
FullSub_Mux fs21 ( .A(Mout_12), .B(Bu[7]), .Bin(Bout_22), .Ctrl(Q[5]), .Bout(Bout_21), .Mout(Mout_21));
assign Q[5] = (~Bout_21) | Mout_11;

//row 4 
FullSub_Mux fs38 ( .A(Au[4]), .B(Bu[0]), .Bin(1'b0), .Ctrl(Q[4]), .Bout(Bout_38), .Mout(Mout_38));
FullSub_Mux fs37 ( .A(Mout_28), .B(Bu[1]), .Bin(Bout_38), .Ctrl(Q[4]), .Bout(Bout_37), .Mout(Mout_37));
FullSub_Mux fs36 ( .A(Mout_27), .B(Bu[2]), .Bin(Bout_37), .Ctrl(Q[4]), .Bout(Bout_36), .Mout(Mout_36));
FullSub_Mux fs35 ( .A(Mout_26), .B(Bu[3]), .Bin(Bout_36), .Ctrl(Q[4]), .Bout(Bout_35), .Mout(Mout_35));
FullSub_Mux fs34 ( .A(Mout_25), .B(Bu[4]), .Bin(Bout_35), .Ctrl(Q[4]), .Bout(Bout_34), .Mout(Mout_34)); 
FullSub_Mux fs33 ( .A(Mout_24), .B(Bu[5]), .Bin(Bout_34), .Ctrl(Q[4]), .Bout(Bout_33), .Mout(Mout_33));   
FullSub_Mux fs32 ( .A(Mout_23), .B(Bu[6]), .Bin(Bout_33), .Ctrl(Q[4]), .Bout(Bout_32), .Mout(Mout_32));
FullSub_Mux fs31 ( .A(Mout_22), .B(Bu[7]), .Bin(Bout_32), .Ctrl(Q[4]), .Bout(Bout_31), .Mout(Mout_31));
assign Q[4] = (~Bout_31) | Mout_21;

//row 5
FullSub_Mux fs48 ( .A(Au[3]), .B(Bu[0]), .Bin(1'b0), .Ctrl(Q[3]), .Bout(Bout_48), .Mout(Mout_48));
FullSub_Mux fs47 ( .A(Mout_38), .B(Bu[1]), .Bin(Bout_48), .Ctrl(Q[3]), .Bout(Bout_47), .Mout(Mout_47));
FullSub_Mux fs46 ( .A(Mout_37), .B(Bu[2]), .Bin(Bout_47), .Ctrl(Q[3]), .Bout(Bout_46), .Mout(Mout_46));
FullSub_Mux fs45 ( .A(Mout_36), .B(Bu[3]), .Bin(Bout_46), .Ctrl(Q[3]), .Bout(Bout_45), .Mout(Mout_45));
FullSub_Mux fs44 ( .A(Mout_35), .B(Bu[4]), .Bin(Bout_45), .Ctrl(Q[3]), .Bout(Bout_44), .Mout(Mout_44)); 
FullSub_Mux fs43 ( .A(Mout_34), .B(Bu[5]), .Bin(Bout_44), .Ctrl(Q[3]), .Bout(Bout_43), .Mout(Mout_43));   
FullSub_Mux fs42 ( .A(Mout_33), .B(Bu[6]), .Bin(Bout_43), .Ctrl(Q[3]), .Bout(Bout_42), .Mout(Mout_42));
FullSub_Mux fs41 ( .A(Mout_32), .B(Bu[7]), .Bin(Bout_42), .Ctrl(Q[3]), .Bout(Bout_41), .Mout(Mout_41));
assign Q[3] = (~Bout_41) | Mout_31;

//row 6
FullSub_Mux fs58 ( .A(Au[2]), .B(Bu[0]), .Bin(1'b0), .Ctrl(Q[2]), .Bout(Bout_58), .Mout(Mout_58));
FullSub_Mux fs57 ( .A(Mout_48), .B(Bu[1]), .Bin(Bout_58), .Ctrl(Q[2]), .Bout(Bout_57), .Mout(Mout_57));
FullSub_Mux fs56 ( .A(Mout_47), .B(Bu[2]), .Bin(Bout_57), .Ctrl(Q[2]), .Bout(Bout_56), .Mout(Mout_56));
FullSub_Mux fs55 ( .A(Mout_46), .B(Bu[3]), .Bin(Bout_56), .Ctrl(Q[2]), .Bout(Bout_55), .Mout(Mout_55));
FullSub_Mux fs54 ( .A(Mout_45), .B(Bu[4]), .Bin(Bout_55), .Ctrl(Q[2]), .Bout(Bout_54), .Mout(Mout_54)); 
FullSub_Mux fs53 ( .A(Mout_44), .B(Bu[5]), .Bin(Bout_54), .Ctrl(Q[2]), .Bout(Bout_53), .Mout(Mout_53));   
FullSub_Mux fs52 ( .A(Mout_43), .B(Bu[6]), .Bin(Bout_53), .Ctrl(Q[2]), .Bout(Bout_52), .Mout(Mout_52));
FullSub_Mux fs51 ( .A(Mout_42), .B(Bu[7]), .Bin(Bout_52), .Ctrl(Q[2]), .Bout(Bout_51), .Mout(Mout_51));
assign Q[2] = (~Bout_51) | Mout_41;

//row 7
FullSub_Mux fs68 ( .A(Au[1]), .B(Bu[0]), .Bin(1'b0), .Ctrl(Q[1]), .Bout(Bout_68), .Mout(Mout_68));
FullSub_Mux fs67 ( .A(Mout_58), .B(Bu[1]), .Bin(Bout_68), .Ctrl(Q[1]), .Bout(Bout_67), .Mout(Mout_67));
FullSub_Mux fs66 ( .A(Mout_57), .B(Bu[2]), .Bin(Bout_67), .Ctrl(Q[1]), .Bout(Bout_66), .Mout(Mout_66));
FullSub_Mux fs65 ( .A(Mout_56), .B(Bu[3]), .Bin(Bout_66), .Ctrl(Q[1]), .Bout(Bout_65), .Mout(Mout_65));
FullSub_Mux fs64 ( .A(Mout_55), .B(Bu[4]), .Bin(Bout_65), .Ctrl(Q[1]), .Bout(Bout_64), .Mout(Mout_64)); 
FullSub_Mux fs63 ( .A(Mout_54), .B(Bu[5]), .Bin(Bout_64), .Ctrl(Q[1]), .Bout(Bout_63), .Mout(Mout_63));   
FullSub_Mux fs62 ( .A(Mout_53), .B(Bu[6]), .Bin(Bout_63), .Ctrl(Q[1]), .Bout(Bout_62), .Mout(Mout_62));
FullSub_Mux fs61 ( .A(Mout_52), .B(Bu[7]), .Bin(Bout_62), .Ctrl(Q[1]), .Bout(Bout_61), .Mout(Mout_61));
assign Q[1] = (~Bout_61) | Mout_51;

//row 8
FullSub_Mux fs78 ( .A(Au[0]), .B(Bu[0]), .Bin(1'b0), .Ctrl(Q[0]), .Bout(Bout_78), .Mout(Mout_78));
FullSub_Mux fs77 ( .A(Mout_68), .B(Bu[1]), .Bin(Bout_78), .Ctrl(Q[0]), .Bout(Bout_77), .Mout(Mout_77));
FullSub_Mux fs76 ( .A(Mout_67), .B(Bu[2]), .Bin(Bout_77), .Ctrl(Q[0]), .Bout(Bout_76), .Mout(Mout_76));
FullSub_Mux fs75 ( .A(Mout_66), .B(Bu[3]), .Bin(Bout_76), .Ctrl(Q[0]), .Bout(Bout_75), .Mout(Mout_75));
FullSub_Mux fs74 ( .A(Mout_65), .B(Bu[4]), .Bin(Bout_75), .Ctrl(Q[0]), .Bout(Bout_74), .Mout(Mout_74)); 
FullSub_Mux fs73 ( .A(Mout_64), .B(Bu[5]), .Bin(Bout_74), .Ctrl(Q[0]), .Bout(Bout_73), .Mout(Mout_73));   
FullSub_Mux fs72 ( .A(Mout_63), .B(Bu[6]), .Bin(Bout_73), .Ctrl(Q[0]), .Bout(Bout_72), .Mout(Mout_72));
FullSub_Mux fs71 ( .A(Mout_62), .B(Bu[7]), .Bin(Bout_72), .Ctrl(Q[0]), .Bout(Bout_71), .Mout(Mout_71));
assign Q[0] = (~Bout_71) | Mout_61;

assign R[0] = Mout_78;
assign R[1] = Mout_77;
assign R[2] = Mout_76;
assign R[3] = Mout_75;
assign R[4] = Mout_74;
assign R[5] = Mout_73;
assign R[6] = Mout_72;
assign R[7] = Mout_71;

assign Qflip = (~Q) + 1;
assign Qf = (sig) ? Qflip : Q;
    
endmodule
