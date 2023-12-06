// are you telling me a 16 bit this kogge stone adder???

module kogge_stone_16 (
    input [15:0] a,
    input [15:0] b,
    input cin,
    output [15:0] sum,
    output cout
);

genvar i;

// pre processing, layer 0
wire [15:0] p0;
wire [15:0] g0;

generate
    for (i = 0; i < 16; i = i + 1) begin
        pre_process pp0 (a[i], b[i], p0[i], g0[i]);
    end
endgenerate

//  layer 1
// b b ... g g
wire [15:0] p1;
wire [15:0] g1;

assign p1[0] = p0[0];

gray_cell gs10 (p0[0], g0[0], cin, g1[0]);  // prev generate is cin
gray_cell gs11 (p0[1], g0[1], g1[0], g1[1]);    // prev generate is output of 0's gray cell

generate 
    for (i = 2; i < 16; i = i + 1) begin
        black_cell bs1 (p0[i], g0[i], p0[i-1], g0[i-1], p1[i], g1[i]);
    end
endgenerate

// layer 2
// 16 black, 2 gray, 2 wire
wire [15:0] p2;
wire [15:0] g2;

generate
    for (i = 0; i < 2; i = i + 1) begin
        assign p2[i] = p1[i];
        assign g2[i] = g1[i];
    end
endgenerate

generate
    for (i = 2; i < 4; i = i + 1) begin
        gray_cell gs2 (p1[i], g1[i], g1[i - 2], g2[i]);
        assign p2[i] = p1[i - 2];
    end
endgenerate

generate 
    for (i = 4; i < 16; i = i + 1) begin
        black_cell bs2 (p1[i], g1[i], p1[i - 2], g1[i - 2], p2[i], g2[i]);
    end
endgenerate

// layer 3
// 8 black, 4 gray, 4 wire
wire [15:0] p3;
wire [15:0] g3;

generate 
    for (i = 0; i < 4; i = i + 1) begin
        assign p3[i] = p2[i];
        assign g3[i] = g2[i];
    end
endgenerate

generate 
    for (i = 4; i < 8; i = i + 1) begin
        gray_cell gs3 (p2[i], g2[i], g2[i - 4], g3[i]);
        assign p3[i] = p2[i - 4];
    end
endgenerate

generate 
    for (i = 8; i < 16; i = i + 1) begin
        black_cell bs3 (p2[i], g2[i], p2[i - 4], g2[i - 4], p3[i], g3[i]);
    end
endgenerate

// layer 4
// 8 gray, 8 wire

wire [15:0] p4;
wire [15:0] g4;

generate 
    for (i = 0; i < 8; i = i + 1) begin
        assign p4[i] = p3[i];
        assign g4[i] = g3[i];
    end
endgenerate

generate 
    for (i = 8; i < 16; i = i + 1) begin
        gray_cell gs4 (p3[i], g3[i], g3[i - 8], g4[i]);
        assign p4[i] = p3[i - 8];
    end
endgenerate

// sum
sum s0 (p0[0], cin, sum[0]);

generate 
    for (i = 1; i < 16; i = i + 1) begin
        sum s (p0[i], g4[i - 1], sum[i]);
    end
endgenerate

assign cout = g4[15];





endmodule