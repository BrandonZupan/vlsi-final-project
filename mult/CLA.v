`timescale 1ns / 1ps

module CLA(
    input [15:0] a, // First operand
    input [15:0] b, // Second operand
    input cin,      // Carry input
    output [15:0] sum, // Sum output
    output cout        // Carry output
);

wire [15:0] g; // Generate
wire [15:0] p; // Propagate
wire [16:0] c; // Carry

// Assign generate and propagate signals
assign g = a & b; // Generate signal is high if both bits are 1
assign p = a | b; // Propagate signal is high if either bit is 1

// The carry look-ahead logic
assign c[0] = cin; // The carry-in to the least significant bit

// Look-ahead carry generator
genvar i;
generate
    for (i = 0; i < 16; i = i + 1) begin : carry_gen
        assign c[i + 1] = g[i] | (p[i] & c[i]);
    end
endgenerate

// Sum calculation for each bit
assign sum = a ^ b ^ c[15:0];

// The carry-out is the carry for the bit beyond the most significant bit
assign cout = c[16];

endmodule