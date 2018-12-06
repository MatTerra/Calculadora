module controle(in,cont);
	input [5:0] in;
	output [1:0] cont;

	always @(*)
	casex (in)
		5'b 00111x: cont = 2'b 01;
		5'b 000xxx: cont = 2'b 01;
		5'b 00100x: cont = 2'b 01;
		5'b 110xxx: cont = 2'b 01;
		5'b 111110: cont = 2'b 01;
		5'b 11100x: cont = 2'b 01;

		5'b 00110x: cont = 2'b 00;
		5'b 01100x: cont = 2'b 00;
		5'b 0111x1: cont = 2'b 00;
		5'b 111x11: cont = 2'b 00;
		5'b 010xxx: cont = 2'b 00;
		5'b 011x10: cont = 2'b 00;
		5'b 11110x: cont = 2'b 00;
		5'b 00101x: cont = 2'b 00;
		5'b xx1010: cont = 2'b 00;
		5'b 00101x: cont = 2'b 00;
		5'b 101110: cont = 2'b 00;
		5'b 100xxx: cont = 2'b 00;
		5'b 10100x: cont = 2'b 00;
		5'b 101x11: cont = 2'b 00;
		5'b 101100: cont = 2'b 00;

		5'b 011011: cont = 2'b 10;
		5'b 011100: cont = 2'b 10;
		5'b 101101: cont = 2'b 10;

		default: cont = 2'b 00;
	endcase
endmodule