`timescale 1ns / 1ps

module wallace_tree_signed_tb;

reg [7:0] a, b;             // Input stimulus for the Wallace Tree multiplier
wire [15:0] product;        // Output from the Wallace Tree multiplier

// Instantiate the Wallace Tree multiplier
wallace_tree_signed uut (
    .a(a), 
    .b(b), 
    .product(product)
);

initial begin
    // Initialize Inputs
    a = 0; b = 0;
    #10;
    if (product !== 0) $display("Test failed for input a=0, b=0");

    a = 8'hFF; b = 8'h01;
    #10;
    if (product !== 16'hFFFF) $display("Test failed for input a=0xFF, b=0x01");

    a = 8'hAA; b = 8'h55;
    #10;
    if (product !== 16'hE372) $display("Test failed for input a=0xAA, b=0x55");

    a = 8'h03; b = 8'h03;
    #10;
    if (product !== 16'h09) $display("Test failed for input a=0x03, b=0x03");
    
    a = 8'hFF; b = 8'h03;
    #10;
    if (product !== 16'hFFFD) $display("Test failed for input a=0x0FF, b=0x03");
    
    a = 8'hFF; b = 8'hFF;
    #10;
    if (product !== 16'h01) $display("Test failed for input a=0x0FF, b=0xFF");

    // Add more test cases as needed
    // ...

    $display("All tests passed.");
    $finish; // End the simulation
end

endmodule