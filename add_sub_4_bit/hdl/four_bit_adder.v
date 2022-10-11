`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2022 05:13:31 PM
// Design Name: 
// Module Name: four_bit_adder
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


module four_bit_adder(
input [3:0] A,
input [3:0] B,
input cin,
output [3:0] sum,
output carry
);
wire [2:0] cout;
full_adder FA0((A[0]),(B[0]),cin,(sum[0]),(cout[0]));
full_adder FA1((A[1]),(B[1]),cout[0],(sum[1]),(cout[1]));
full_adder FA2((A[2]),(B[2]),cout[1],(sum[2]),(cout[2]));
full_adder FA3((A[3]),(B[3]),cout[2],(sum[3]),carry);

endmodule
