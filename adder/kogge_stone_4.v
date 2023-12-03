// test adder to make sure i am not silly

module kogge_stone_4 (
    input [3:0] a,
    input [3:0] b,
    input cin,

    output [3:0] sum,
    output cout
);

genvar i;

// pre processing 
wire [3:0] p_0;
wire [3:0] g_0;

generate 
    for (i = 0; i < 4; i = i + 1) begin
        pre_process pp0 (a[i], b[i], p_0[i], g_0[i]);
    end
endgenerate

// layer 1
// b b g g
wire [3:0] p_1;
wire [3:0] g_1;

assign p_1[0] = p_0[0];
// assign g_1[0] = g_0[0];

gray_cell gs10 (p_0[0], g_0[0], cin, g_1[0]);
gray_cell gs11 (p_0[1], g_0[1], g_1[0], g_1[1]);

generate 
    for (i = 2; i < 4; i = i + 1) begin
        black_cell bs1 (p_0[i], g_0[i], p_0[i-1], g_0[i-1], p_1[i], g_1[i]);
    end
endgenerate

// layer 2
// g g . .
wire [3:0] p_2;
wire [3:0] g_2;

generate
    for (i = 0; i < 2; i = i + 1) begin
        assign p_2[i] = p_1[i];
        assign g_2[i] = g_1[i];
    end
endgenerate

generate
    for (i = 2; i < 4; i = i + 1) begin
        gray_cell gs2 (p_1[i], g_1[i], g_1[i - 2], g_2[i]);
        assign p_2[i] = p_1[i];
    end
endgenerate

// sum
sum s0 (p_0[0], cin, sum[0]);

generate 
    for (i = 1; i < 4; i = i + 1) begin
        sum s (p_0[i], g_2[i - 1], sum[i]);
    end
endgenerate

// carry out
assign cout = g_2[3];

endmodule