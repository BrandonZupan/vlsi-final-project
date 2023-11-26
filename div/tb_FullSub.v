`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2023 09:45:48 AM
// Design Name: 
// Module Name: tb_FullSub
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


module tb_fullsub;  
    // 1. Declare testbench variables  
   reg A;  
   reg B;  
   reg Ctrl;
   reg Bin;  
   wire Mout;  
   wire Bout;
  
    // 2. Instantiate the design and connect to testbench variables  
   FullSub_Mux  fs0 ( .A (A),  
                  .B (B),  
                  .Bin (Bin),  
                  .Ctrl (Ctrl),  
                  .Bout (Bout),
                  .Mout (Mout));  
  
    // 3. Provide stimulus to test the design  
   initial begin  
      A = 0;  
      B = 0;  
      Bin = 0;  
      Ctrl = 0;
            
      #10;
      
      A = 0;  
      B = 0;  
      Bin = 1;  
      Ctrl = 0;
      
      #10;
      
      A = 0;  
      B = 1;  
      Bin = 0;  
      Ctrl = 0;
      
      #10;
      
      A = 0;  
      B = 1;  
      Bin = 1;  
      Ctrl = 0;
      
      #10 
      
      A = 1;  
      B = 0;  
      Bin = 0;  
      Ctrl = 0;
            
      #10;
      
      A = 1;  
      B = 0;  
      Bin = 1;  
      Ctrl = 0;
      
      #10;
      
      A = 1;  
      B = 1;  
      Bin = 0;  
      Ctrl = 0;
      
      #10;
      
      A = 1;  
      B = 1;  
      Bin = 1;  
      Ctrl = 0;
      
      #10;
   end  
endmodule  
