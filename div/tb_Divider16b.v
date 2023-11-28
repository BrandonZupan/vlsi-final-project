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


module tb_Divider16b;  
    // 1. Declare testbench variables  
   reg [15:0] A;  
   reg [15:0] B;    
   wire [15:0] Qf;  
   wire [15:0] R;
  
    // 2. Instantiate the design and connect to testbench variables     
    Divider16bit d0 (
        .A(A),
        .B(B),
        .Qf(Qf),
        .R(R)
        ); 
  
    // 3. Provide stimulus to test the design  
   initial begin 
      //both positive
      A = 16'h0001;  
      B = 16'h0001;  
            
      #100;
      
      A = 16'h007e;  
      B = 16'h0001;  
      
      #100;
      
      A = 16'h007e;  
      B = 16'h0002;
      
      #100;
      
      A = 16'h007e;  
      B = 16'h0003;
      
      #100; 
      
      A = 16'h007e;  
      B = 16'h0004;
            
      #100;
      
      A = 16'h007e;  
      B = 16'h0020;
      
      #100;
      
      A = 16'h007e;  
      B = 16'h0032;
      
      #100;
      
      A = 16'h0079;  
      B = 16'h000b;
      
      #200;
      
      //A negative
      A = 16'hFFFF;  
      B = 16'h0001;  
            
      #100;
      
      A = 16'hFF82;  
      B = 16'h0001;  
      
      #100;
      
      A = 16'hFF82;  
      B = 16'h0002;
      
      #100;
      
      A = 16'hFF82;  
      B = 16'h0003;
      
      #100; 
      
      A = 16'hFF82;  
      B = 16'h0004;
            
      #100;
      
      A = 16'hFF82;  
      B = 16'h0020;
      
      #100;
      
      A = 16'hFF82;  
      B = 16'h0032;
      
      #100;
      
      A = 16'hFF87;  
      B = 16'h000b;
      
      #200;
      
      //B negative
      A = 16'h0001;  
      B = 16'hFFFF;  
            
      #100;
      
      A = 16'h007e;  
      B = 16'hFFFF;  
      
      #100;
      
      A = 16'h007e;  
      B = 16'hFFFE;
      
      #100;
      
      A = 16'h007e;  
      B = 16'hFFFD;
      
      #100; 
      
      A = 16'h007e;  
      B = 16'hFFFC;
            
      #100;
      
      A = 16'h007e;  
      B = 16'hFFE0;
      
      #100;
      
      A = 16'h007e;  
      B = 16'hFFCE;
      
      #100;
      
      A = 16'h0079;  
      B = 16'hFFF5;
      
      #200;
      
      //both negative
      A = 16'hFFFF;  
      B = 16'hFFFF;  
            
      #100;
      
      A = 16'hFF82;  
      B = 16'hFFFF;  
      
      #100;
      
      A = 16'hFF82;  
      B = 16'hFFFE;
      
      #100;
      
      A = 16'hFF82;  
      B = 16'hFFFD;
      
      #100; 
      
      A = 16'hFF82;  
      B = 16'hFFFC;
            
      #100;
      
      A = 16'hFF82;  
      B = 16'hFFE0;
      
      #100;
      
      A = 16'hFF82;  
      B = 16'hFFCE;
      
      #100;
      
      A = 16'hFF87;  
      B = 16'hFFF5;
      
      #200;
      
      //16 bit test
      A = 16'h7FFF;
      B = 16'h03E8;
      
      #100;
      
      A = 16'h8001;
      B = 16'h03E8;
      
      #100;
      
      A = 16'h7FFF;
      B = 16'hFC18;
      
      #100;
      
      A = 16'h8001;
      B = 16'hFC18;
      
      #200;
      
   end  
endmodule  
