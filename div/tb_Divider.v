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


module tb_Divider;  
    // 1. Declare testbench variables  
   reg [7:0] A;  
   reg [7:0] B;    
   wire [7:0] Qf;  
   wire [7:0] R;
  
    // 2. Instantiate the design and connect to testbench variables     
    Divider8bit d0 (
        .A(A),
        .B(B),
        .Qf(Qf),
        .R(R)
        ); 
  
    // 3. Provide stimulus to test the design  
   initial begin 
      //both positive
      A = 8'h01;  
      B = 8'h01;  
            
      #100;
      
      A = 8'h7e;  
      B = 8'h01;  
      
      #100;
      
      A = 8'h7e;  
      B = 8'h02;
      
      #100;
      
      A = 8'h7e;  
      B = 8'h03;
      
      #100; 
      
      A = 8'h7e;  
      B = 8'h04;
            
      #100;
      
      A = 8'h7e;  
      B = 8'h20;
      
      #100;
      
      A = 8'h7e;  
      B = 8'h32;
      
      #100;
      
      A = 8'h79;  
      B = 8'h0b;
      
      #200;
      
      //A negative
      A = 8'hFF;  
      B = 8'h01;  
            
      #100;
      
      A = 8'h82;  
      B = 8'h01;  
      
      #100;
      
      A = 8'h82;  
      B = 8'h02;
      
      #100;
      
      A = 8'h82;  
      B = 8'h03;
      
      #100; 
      
      A = 8'h82;  
      B = 8'h04;
            
      #100;
      
      A = 8'h82;  
      B = 8'h20;
      
      #100;
      
      A = 8'h82;  
      B = 8'h32;
      
      #100;
      
      A = 8'h87;  
      B = 8'h0b;
      
      #200;
      
      //B negative
      A = 8'h01;  
      B = 8'hFF;  
            
      #100;
      
      A = 8'h7e;  
      B = 8'hFF;  
      
      #100;
      
      A = 8'h7e;  
      B = 8'hFE;
      
      #100;
      
      A = 8'h7e;  
      B = 8'hFD;
      
      #100; 
      
      A = 8'h7e;  
      B = 8'hFC;
            
      #100;
      
      A = 8'h7e;  
      B = 8'hE0;
      
      #100;
      
      A = 8'h7e;  
      B = 8'hCE;
      
      #100;
      
      A = 8'h79;  
      B = 8'hF5;
      
      #200;
      
      //both negative
      A = 8'hFF;  
      B = 8'hFF;  
            
      #100;
      
      A = 8'h82;  
      B = 8'hFF;  
      
      #100;
      
      A = 8'h82;  
      B = 8'hFE;
      
      #100;
      
      A = 8'h82;  
      B = 8'hFD;
      
      #100; 
      
      A = 8'h82;  
      B = 8'hFC;
            
      #100;
      
      A = 8'h82;  
      B = 8'hE0;
      
      #100;
      
      A = 8'h82;  
      B = 8'hCE;
      
      #100;
      
      A = 8'h87;  
      B = 8'hF5;
      
      #200;
      
   end  
endmodule  
