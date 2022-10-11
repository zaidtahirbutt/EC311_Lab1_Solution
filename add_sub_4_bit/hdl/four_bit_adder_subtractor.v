`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2022 04:53:44 PM
// Design Name: 
// Module Name: four_bit_adder_subtractor
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


module four_bit_adder_subtractor(

input [3:0] A,
input [3:0] B,
input cin,
output [3:0] sum,
output carry,
output V
    );

wire cout0,cout1,cout2;
wire [3:0] b_xor_M;



xor(b_xor_M[0],B[0],cin);
xor(b_xor_M[1],B[1],cin);
xor(b_xor_M[2],B[2],cin);
xor(b_xor_M[3],B[3],cin);


full_adder FA0(A[0],b_xor_M[0],cin,sum[0],cout0);
full_adder FA1(A[1],b_xor_M[1],cout0,sum[1],cout1);
full_adder FA2(A[2],b_xor_M[2],cout1,sum[2],cout2);
full_adder FA3(A[3],b_xor_M[3],cout2,sum[3],carry);
xor(V, carry,cout2);
endmodule
