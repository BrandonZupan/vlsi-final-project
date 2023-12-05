`timescale 1ns / 1ps

module wallace_tree_signed(
    input [15:0] a, //8-bit multiplicand
    input [15:0] b, //8 -bit multiplier
    output [31:0] product //16-bit prodcut
);

reg [15:0] unsigned_a;
reg [15:0] unsigned_b;
wire cout_a;
wire cout_b;

wire [15:0] not_a;
assign not_a = ~a;

wire [15:0] a_neg;
kogge_stone_16 ks_a (not_a, 16'b1, 1'b0, a_neg, cout_a);

wire [15:0] not_b;
assign not_b = ~b;

wire [15:0] b_neg;
kogge_stone_16 ks_b (not_b, 16'b1, 1'b0, b_neg, cout_b);

//convert the negative number to unsigned magnitude
always@(a, b)begin
    if(a[15] == 1)begin 
        // unsigned_a = ~(a) + 1;
        unsigned_a = a_neg;
    end
    else if(a[15] == 0)begin
        unsigned_a = a;
    end
    
    if(b[15] == 1)begin
        // unsigned_b = ~(b) + 1;
        unsigned_b = b_neg;
    end
    else if(b[15] == 0)begin
        unsigned_b = b;
    end
end


// Step 1: generate partial products
wire [15:0] pp[15:0]; //8x8 2D array 

genvar i, j;
generate
    for (i = 0; i < 16; i = i + 1) begin : gen_pp
        for (j = 0; j < 16; j = j + 1) begin : gen_pp_row
            assign pp[i][j] = unsigned_a[i] & unsigned_b[j];
        end
    end
endgenerate

wire c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28;
wire s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28;

//first row
half_adder h0(pp[1][0], pp[0][1], s0, c0);
full_adder f0(pp[2][0], pp[1][1], c0, s1, c1);
full_adder f1(pp[3][0], pp[2][1], c1, s2, c2);
full_adder f2(pp[4][0], pp[3][1], c2, s3, c3);
full_adder f3(pp[5][0], pp[4][1], c3, s4, c4);
full_adder f4(pp[6][0], pp[5][1], c4, s5, c5);
full_adder f5(pp[7][0], pp[6][1], c5, s6, c6);
full_adder f6(pp[8][0], pp[7][1], c6, s7, c7);
full_adder f7(pp[9][0], pp[8][1], c7, s8, c8);
full_adder f8(pp[10][0], pp[9][1], c8, s9, c9);
full_adder f9(pp[11][0], pp[10][1], c9, s10, c10);
full_adder f10(pp[12][0], pp[11][1], c10, s11, c11);
full_adder f11(pp[13][0], pp[12][1], c11, s12, c12);
full_adder f12(pp[14][0], pp[13][1], c12, s13, c13);
full_adder f13(pp[15][0], pp[14][1], c13, s14, c14);
full_adder f14(pp[15][1], pp[14][2], c14, s15, c15);
full_adder f15(pp[15][2], pp[14][3], c15, s16, c16);
full_adder f16(pp[15][3], pp[14][4], c16, s17, c17);
full_adder f17(pp[15][4], pp[14][5], c17, s18, c18);
full_adder f18(pp[15][5], pp[14][6], c18, s19, c19);
full_adder f19(pp[15][6], pp[14][7], c19, s20, c20);
full_adder f20(pp[15][7], pp[14][8], c20, s21, c21);
full_adder f21(pp[15][8], pp[14][9], c21, s22, c22);
full_adder f22(pp[15][9], pp[14][10], c22, s23, c23);
full_adder f23(pp[15][10], pp[14][11], c23, s24, c24);
full_adder f24(pp[15][11], pp[14][12], c24, s25, c25);
full_adder f25(pp[15][12], pp[14][13], c25, s26, c26);
full_adder f26(pp[15][13], pp[14][14], c26, s27, c27);
full_adder f27(pp[15][14], pp[14][15], c27, s28, c28);


wire c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55;
wire s29, s30, s31, s32, s33, s34, s35, s36, s37, s38, s39, s40, s41, s42, s43, s44, s45, s46, s47, s48, s49, s50, s51, s52, s53, s54, s55;

//second row
half_adder h1(pp[0][2], s1, s29, c29);
full_adder f28(pp[1][2], s2, c29, s30, c30);
full_adder f29(pp[2][2], s3, c30, s31, c31);
full_adder f30(pp[3][2], s4, c31, s32, c32);
full_adder f31(pp[4][2], s5, c32, s33, c33);
full_adder f32(pp[5][2], s6, c33, s34, c34);
full_adder f33(pp[6][2], s7, c34, s35, c35);
full_adder f34(pp[7][2], s8, c35, s36, c36);
full_adder f35(pp[8][2], s9, c36, s37, c37);
full_adder f36(pp[9][2], s10, c37, s38, c38);
full_adder f37(pp[10][2], s11, c38, s39, c39);
full_adder f38(pp[11][2], s12, c39, s40, c40);
full_adder f39(pp[12][2], s13, c40, s41, c41);
full_adder f40(pp[13][2], s14, c41, s42, c42);
full_adder f41(pp[13][3], s15, c42, s43, c43);
full_adder f42(pp[13][4], s16, c43, s44, c44);
full_adder f43(pp[13][5], s17, c44, s45, c45);
full_adder f44(pp[13][6], s18, c45, s46, c46);
full_adder f45(pp[13][7], s19, c46, s47, c47);
full_adder f46(pp[13][8], s20, c47, s48, c48);
full_adder f47(pp[13][9], s21, c48, s49, c49);
full_adder f48(pp[13][10], s22, c49, s50, c50);
full_adder f49(pp[13][11], s23, c50, s51, c51);
full_adder f50(pp[13][12], s24, c51, s52, c52);
full_adder f51(pp[13][13], s25, c52, s53, c53);
full_adder f52(pp[13][14], s26, c53, s54, c54);
full_adder f53(pp[13][15], s27, c54, s55, c55);


wire c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80;
wire s56, s57, s58, s59, s60, s61, s62, s63, s64, s65, s66, d67, s68, s69, s70, s71, s72, s73, s74, s75, s76, s77, s78, s79, s80;

//third row
half_adder h2(pp[0][3], s30, s56, c56);
full_adder f54(pp[1][3], s31, c56, s57, c57);
full_adder f55(pp[2][3], s32, c57, s58, c58);
full_adder f56(pp[3][3], s33, c58, s59, c59);
full_adder f57(pp[4][3], s34, c59, s60, c60);
full_adder f58(pp[5][3], s35, c60, s61, c61);
full_adder f59(pp[6][3], s36, c61, s62, c62);
full_adder f60(pp[7][3], s37, c62, s63, c63);
full_adder f61(pp[8][3], s38, c63, s64, c64);
full_adder f62(pp[9][3], s39, c64, s65, c65);
full_adder f63(pp[10][3], s40, c65, s66, c66);
full_adder f64(pp[11][3], s41, c66, s67, c67);
full_adder f65(pp[12][3], s42, c67, s68, c68);
full_adder f66(pp[12][4], s43, c68, s69, c69);
full_adder f67(pp[12][5], s44, c69, s70, c70);
full_adder f68(pp[12][6], s45, c70, s71, c71);
full_adder f69(pp[12][7], s46, c71, s72, c72);
full_adder f70(pp[12][8], s47, c72, s73, c73);
full_adder f71(pp[12][9], s48, c73, s74, c74);
full_adder f72(pp[12][10], s49,c74, s75, c75);
full_adder f73(pp[12][11], s50,c75, s76, c76);
full_adder f74(pp[12][12], s51,c76, s77, c77);
full_adder f75(pp[12][13], s52,c77, s78, c78);
full_adder f76(pp[12][14], s53,c78, s79, c79);
full_adder f77(pp[12][15], s54,c79, s80, c80);


wire c81, c82, c83, c84, c85, c86, c87, c88, c89, c90, c91, c92, c93, c94, c95, c96, c97, c98, c99, c100, c101, c102, c103;
wire s81, s82, s83, s84, s85, s86, s87, s88, s89, s90, s91, d92, s93, s94, s95, s96, s97, s98, s99, s100, s101, s102, s103;

//fourth row
half_adder h3(pp[0][4], s57, s81, c81);
full_adder f78(pp[1][4], s58, c81, s82, c82);
full_adder f79(pp[2][4], s59, c82, s83, c83);
full_adder f80(pp[3][4], s60, c83, s84, c84);
full_adder f81(pp[4][4], s61, c84, s85, c85);
full_adder f82(pp[5][4], s62, c85, s86, c86);
full_adder f83(pp[6][4], s63, c86, s87, c87);
full_adder f84(pp[7][4], s64, c87, s88, c88);
full_adder f85(pp[8][4], s65, c88, s89, c89);
full_adder f86(pp[9][4], s66, c89, s90, c90);
full_adder f87(pp[10][4], s67, c90, s91, c91);
full_adder f88(pp[11][4], s68, c91, s92, c92);
full_adder f89(pp[11][5], s69, c92, s93, c93);
full_adder f90(pp[11][6], s70, c93, s94, c94);
full_adder f91(pp[11][7], s71, c94, s95, c95);
full_adder f92(pp[11][8], s72, c95, s96, c96);
full_adder f93(pp[11][9], s73, c96, s97, c97);
full_adder f94(pp[11][10], s74, c97, s98, c98);
full_adder f95(pp[11][11], s75, c98, s99, c99);
full_adder f96(pp[11][12], s76, c99, s100, c100);
full_adder f97(pp[11][13], s77, c100, s101, c101);
full_adder f98(pp[11][14], s78, c101, s102, c102);
full_adder f99(pp[11][15], s79, c102, s103, c103);

wire c104, c105, c106, c107, c108, c109, c110, c111, c112, c113, c114, c115, c116, c117, c118, c119, c120, c121, c122, c123, c124;
wire s104, s105, s106, s107, s108, s109, s110, s111, s112, s113, s114, s115, s116, s117, s118, s119, s120, s121, s122, s123, s124;

//fifth row
half_adder h4(pp[0][5], s82, s104, c104);
full_adder f100(pp[1][5], s83, c104, s105, c105);
full_adder f101(pp[2][5], s84, c105, s106, c106);
full_adder f102(pp[3][5], s85, c106, s107, c107);
full_adder f103(pp[4][5], s86, c107, s108, c108);
full_adder f104(pp[5][5], s87, c108, s109, c109);
full_adder f105(pp[6][5], s88, c109, s110, c110);
full_adder f106(pp[7][5], s89, c110, s111, c111);
full_adder f107(pp[8][5], s90, c111, s112, c112);
full_adder f108(pp[9][5], s91, c112, s113, c113);
full_adder f109(pp[10][5], s92, c113, s114, c114);
full_adder f110(pp[10][6], s93, c114, s115, c115);
full_adder f111(pp[10][7], s94, c115, s116, c116);
full_adder f112(pp[10][8], s95, c116, s117, c117);
full_adder f113(pp[10][9], s96, c117, s118, c118);
full_adder f114(pp[10][10], s97, c118, s119, c119);
full_adder f115(pp[10][11], s98, c119, s120, c120);
full_adder f116(pp[10][12], s99, c120, s121, c121);
full_adder f117(pp[10][13], s100, c121, s122, c122);
full_adder f118(pp[10][14], s101, c122, s123, c123);
full_adder f119(pp[10][15], s102, c123, s124, c124);


wire c125, c126, c127, c128, c129, c130, c131, c132, c133, c134, c135, c136, c137, c138, c139, c140, c141, c142, c143;
wire s125, s126, s127, s128, s129, s130, s131, s132, s133, s134, s135, s136, s137, s138, s139, s140, s141, s142, s143;

//sixth row
half_adder h5(pp[0][6], s105, s125, c125);
full_adder f120(pp[1][6], s106, c125, s126, c126);
full_adder f121(pp[2][6], s107, c126, s127, c127);
full_adder f122(pp[3][6], s108, c127, s128, c128);
full_adder f123(pp[4][6], s109, c128, s129, c129);
full_adder f124(pp[5][6], s110, c129, s130, c130);
full_adder f125(pp[6][6], s111, c130, s131, c131);
full_adder f126(pp[7][6], s112, c131, s132, c132);
full_adder f127(pp[8][6], s113, c132, s133, c133);
full_adder f128(pp[9][6], s114, c133, s134, c134);
full_adder f129(pp[9][7], s115, c134, s135, c135);
full_adder f130(pp[9][8], s116, c135, s136, c136);
full_adder f131(pp[9][9], s117, c136, s137, c137);
full_adder f132(pp[9][10], s118, c137, s138, c138);
full_adder f133(pp[9][11], s119, c138, s139, c139);
full_adder f134(pp[9][12], s120, c139, s140, c140);
full_adder f135(pp[9][13], s121, c140, s141, c141);
full_adder f136(pp[9][14], s122, c141, s142, c142);
full_adder f137(pp[9][15], s123, c142, s143, c143);

//seventh row
wire c144, c145, c146, c147, c148, c149, c150, c151, c152, c153, c154, c155, c156, c157, c158, c159, c160;
wire s144, s145, s146, s147, s148, s149, s150, s151, s152, s153, s154, s155, s156, s157, s158, s159, s160;

half_adder h6(pp[0][7], s126, s144, c144);
full_adder f138(pp[1][7], s127, c144, s145, c145);
full_adder f139(pp[2][7], s128, c145, s146, c146);
full_adder f140(pp[3][7], s129, c146, s147, c147);
full_adder f141(pp[4][7], s130, c147, s148, c148);
full_adder f142(pp[5][7], s131, c148, s149, c149);
full_adder f143(pp[6][7], s132, c149, s150, c150);
full_adder f144(pp[7][7], s133, c150, s151, c151);
full_adder f145(pp[8][7], s134, c151, s152, c152);
full_adder f146(pp[8][8], s135, c152, s153, c153);
full_adder f147(pp[8][9], s136, c153, s154, c154);
full_adder f148(pp[8][10], s137, c154, s155, c155);
full_adder f149(pp[8][11], s138, c155, s156, c156);
full_adder f150(pp[8][12], s139, c156, s157, c157);
full_adder f151(pp[8][13], s140, c157, s158, c158);
full_adder f152(pp[8][14], s141, c158, s159, c159);
full_adder f153(pp[8][15], s142, c159, s160, c160);

//eighth row
wire c161, c162, c163, c164, c165, c166, c167, c168, c169, c170, c171, c172, c173, c174, c175;
wire s161, s162, s163, s164, s165, s166, s167, s168, s169, s170, s171, s172, s173, s174, s175;

half_adder h7(pp[0][8], s145, s161, c161);
full_adder f154(pp[1][8], s146, c161, s162, c162);
full_adder f155(pp[2][8], s147, c162, s163, c163);
full_adder f156(pp[3][8], s148, c163, s164, c164);
full_adder f157(pp[4][8], s149, c164, s165 , c165);
full_adder f158(pp[5][8], s150, c165, s166, c166);
full_adder f159(pp[6][8], s151, c166, s167, c167);
full_adder f160(pp[7][8], s152, c167, s168, c168);
full_adder f161(pp[7][9], s153, c168, s169, c169);
full_adder f162(pp[7][10], s154, c169, s170, c170);
full_adder f163(pp[7][11], s155, c170, s171, c171);
full_adder f164(pp[7][12], s156, c171, s172, c172);
full_adder f165(pp[7][13], s157, c172, s173, c173);
full_adder f166(pp[7][14], s158, c173, s174, c174);
full_adder f167(pp[7][15], s159, c174, s175, c175);

//ninth row
wire c176, c177, c178, c179, c180, c181, c182, c183, c184, c185, c186, c187, c188;
wire s176, s177, s178, s179, s180, s181, s182, s183, s184, s185, s186, s187, s188;

half_adder h8(pp[0][9], s162, s176, c176);
full_adder f168(pp[1][9], s163, c176, s177, c177);
full_adder f169(pp[2][9], s164, c177, s178, c178);
full_adder f170(pp[3][9], s165, c178, s179, c179);
full_adder f171(pp[4][9], s166, c179, s180 , c180);
full_adder f172(pp[5][9], s167, c180, s181, c181);
full_adder f173(pp[6][9], s168, c181, s182, c182);
full_adder f174(pp[6][10], s169, c182, s183, c183);
full_adder f175(pp[6][11], s170, c183, s184, c184);
full_adder f176(pp[6][12], s171, c184, s185, c185);
full_adder f177(pp[6][13], s172, c185, s186, c186);
full_adder f178(pp[6][14], s173, c186, s187, c187);
full_adder f179(pp[6][15], s174, c187, s188, c188);

//tenth row
wire c189, c190, c191, c192, c193, c194, c195, c196, c197, c198, c199;
wire s189, s190, s191, s192, s193, s194, s195, s196, s197, s198, s199;

half_adder h9(pp[0][10], s177, s189, c189);
full_adder f180(pp[1][10], s178, c189, s190, c190);
full_adder f181(pp[2][10], s179, c190, s191, c191);
full_adder f182(pp[3][10], s180, c191, s192, c192);
full_adder f183(pp[4][10], s181, c192, s193, c193);
full_adder f184(pp[5][10], s182, c193, s194, c194);
full_adder f185(pp[5][11], s183, c194, s195, c195);
full_adder f186(pp[5][12], s184, c195, s196, c196);
full_adder f187(pp[5][13], s185, c196, s197, c197);
full_adder f188(pp[5][14], s186, c197, s198, c198);
full_adder f189(pp[5][15], s187, c198, s199, c199);


//eleventh row
wire c200, c201, c202, c203, c204, c205, c206, c207, c208;
wire s200, s201, s202, s203, s204, s205, s206, s207, s208;

half_adder h10(pp[0][11], s190, s200, c200);
full_adder f190(pp[1][11], s191, c200, s201, c201);
full_adder f191(pp[2][11], s192, c201, s202, c202);
full_adder f192(pp[3][11], s193, c202, s203, c203);
full_adder f193(pp[4][11], s194, c203, s204, c204);
full_adder f194(pp[4][12], s195, c204, s205, c205);
full_adder f195(pp[4][13], s196, c205, s206, c206);
full_adder f196(pp[4][14], s197, c206, s207, c207);
full_adder f197(pp[4][15], s198, c207, s208, c208);

//twelevth row
wire c209, c210, c211, c212, c213, c214, c215;
wire s209, s210, s211, s212, s213, s214, s215;

half_adder h11(pp[0][12], s201, s209, c209);
full_adder f198(pp[1][12], s202, c209, s210, c210);
full_adder f199(pp[2][12], s203, c210, s211, c211);
full_adder f200(pp[3][12], s204, c211, s212, c212);
full_adder f201(pp[3][13], s205, c212, s213, c213);
full_adder f202(pp[3][14], s206, c213, s214, c214);
full_adder f203(pp[3][15], s207, c214, s215, c215);

//thirteenth row
wire c216, c217, c218, c219, c220;
wire s216, s217, s218, s219, s220;

half_adder h12(pp[0][13], s210, s216, c216);
full_adder f204(pp[1][13], s211, c216, s217, c217);
full_adder f205(pp[2][13], s212, c217, s218, c218);
full_adder f206(pp[2][14], s213, c218, s219, c219);
full_adder f207(pp[2][15], s214, c219, s220, c220);

//fourteenth row
wire c221, c222, c223;
wire s221, s222, s223;

half_adder h13(pp[0][14], s217, s221, c221);
full_adder f208(pp[1][14], s218, c221, s222, c222);
full_adder f209(pp[1][15], s219, c222, s223, c223);

//fifteenth row
wire c224;
wire s224;

half_adder h14(pp[0][15], s222, s224, c224);


//products
wire c225, c226, c227, c228, c229, c230, c231, c232, c233, c234, c235, c236, c237, c238, c239;
wire s225, s226, s227, s228, s229, s230, s231, s232, s233, s234, s235, s236, s237, s238, s239;
full_adder f210(pp[15][15], c28, c226, s225, c225); //first row
full_adder f211(s28, c55, c227, s226, c226); //second row
full_adder f212(s55, c80, c228, s227, c227); //third row
full_adder f213(s80, c103, c229, s228, c228); //fourth row
full_adder f214(s103, c124, c230, s229, c229); //fifth row
full_adder f215(s124, c143, c231, s230, c230); //sixth row
full_adder f216(s143, c160, c232, s231, c231); //seventh row
full_adder f217(s160, c175, c233, s232, c232); //eight row
full_adder f218(s175, c188, c234, s233, c233); //ninth row
full_adder f219(s188, c199, c235, s234, c234);//tenth row
full_adder f220(s199, c208, c236, s235, c235); //eleventh row
full_adder f221(s208, c215, c237, s236, c236);//twelveth row
full_adder f222(s215, c220, c238, s237, c237);//thriteenth row
full_adder f223(s220, c223, c239, s238, c238);//fourteenth row
half_adder h15(s223, c224, s239, c239); //fifteenth row

wire [31:0] unsigned_product;
assign unsigned_product = {c225, s225, s226, s227, s228, s229, s230, s231, s232, s233, s234, s235, s236, s237, s238, s239, s224, s221, s216, s209, s200, s189, s176, s161, s144, s125, s104, s81, s56, s29, s0, pp[0][0]};
 
//convert back to two's complement if result is supposed to be negative
reg [31:0] product_reg;
wire prod_c;

wire [15:0] not_p;
assign not_p = ~unsigned_product;

wire [15:0] p_neg;
kogge_stone_16 ks_p (not_p, 16'b1, 1'b0, p_neg, prod_c);

always@(unsigned_product)begin
    if((a[15] == 1 && b[15] == 0) || (a[15] == 0 && b[15] == 1))begin
        // product_reg = ~(unsigned_product) + 1;
        product_reg = p_neg;
    end
    else begin
        product_reg = unsigned_product;
    end
end
assign product = product_reg;
 
endmodule