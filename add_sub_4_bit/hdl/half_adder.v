module half_adder(
input A,
input B,
output sum,
output carry
);

assign {carry,sum} = A + B;
endmodule
