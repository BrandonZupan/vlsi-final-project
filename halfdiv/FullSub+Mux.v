`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2023 09:34:07 AM
// Design Name: 
// Module Name: FullSub+Mux
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


module FullSub_Mux(
    input A,
    input B,
    input Bin,
    input Ctrl,
    output Bout,
    output Mout
    );
    
    wire AxorB;
    wire Dout;
    
assign Dout = (A ^ B ^ Bin);
assign Bout = ~(~(~A & B) & ~(~(A ^ B) & Bin));
assign Mout = (Ctrl & A) | (~Ctrl & Dout);

endmodule
