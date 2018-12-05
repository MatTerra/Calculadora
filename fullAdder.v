module fullAdder(A, B, Cin, O, COut);
input A;
input B;
input Cin;
output O;
output COut;

assign O = (A^B)^Cin;
assign COut = ((A^B)&Cin)|(A&B);

endmodule
