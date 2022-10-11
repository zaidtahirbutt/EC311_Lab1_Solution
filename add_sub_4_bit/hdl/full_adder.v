module full_adder(
input A,
input B,
input cin,
output sum,
output carry
);

assign {carry,sum} = A + B + cin;
endmodule
