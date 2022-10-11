`timescale 1ns / 1ps

// EC-311 Lab-1 Part-2
  // The names of the variables are as described in the lab handout

module alu_4_bit #
(
  parameter INPUT_WIDTH = 4,
  parameter OUTPUT_WIDTH = 8,
  parameter SELECT_WIDTH = 2
)
(
  // The inputs 
  input wire [INPUT_WIDTH-1:0]      A_i,
  input wire [INPUT_WIDTH-1:0]      B_i,
  input wire [SELECT_WIDTH-1:0]     S_i,

  // The outputs
  output wire [OUTPUT_WIDTH-1:0]           Y_o

);
  
  reg [OUTPUT_WIDTH-1:0] Y_o_reg;
  assign Y_o = Y_o_reg;
  
  
  always @(A_i, B_i, S_i) begin
    
    case(S_i)
      
      2'b01   : Y_o_reg = A_i + B_i;
      2'b00   : Y_o_reg = {A_i, B_i};
      2'b10   : Y_o_reg = A_i << B_i;
      2'b11   : Y_o_reg = A_i * B_i;
      default : Y_o_reg = 0;  
      
    endcase
    
  end



endmodule
