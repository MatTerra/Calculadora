module SaidaEscA(in,cont);
	input [5:0] in;
	output [1:0] cont;

	always @(*)
	casex (in)
	   //00
		6'b 001110: cont = 2'b 0x; //# getM
		
		6'b 000000: cont = 2'b 1x; // 0..9
		6'b 000001: cont = 2'b 1x;
		6'b 000010: cont = 2'b 1x;
		6'b 000011: cont = 2'b 1x;
		6'b 000100: cont = 2'b 1x;
		6'b 000101: cont = 2'b 1x;
		6'b 000110: cont = 2'b 1x;
		6'b 000111: cont = 2'b 1x;
		6'b 001000: cont = 2'b 1x;
		6'b 001001: cont = 2'b 1x;
		
		6'b 001010: cont = 2'b xx; // A
		6'b 001011: cont = 2'b xx; // B +
		6'b 001100: cont = 2'b xx; // C - 
		6'b 001101: cont = 2'b xx; // D =
		6'b 001111: cont = 2'b xx; // * setM
		
		//01
		6'b 011110: cont = 2'b 0x; //# getM
		
		6'b 010000: cont = 2'b xx; // 0..9
		6'b 010001: cont = 2'b xx;
		6'b 010010: cont = 2'b xx;
		6'b 010011: cont = 2'b xx;
		6'b 010100: cont = 2'b xx;
		6'b 010101: cont = 2'b xx;
		6'b 010110: cont = 2'b xx;
		6'b 010111: cont = 2'b xx;
		6'b 011000: cont = 2'b xx;
		6'b 011001: cont = 2'b xx;
		
		6'b 011010: cont = 2'b xx; // A
		6'b 011011: cont = 2'b xx; // B +
		6'b 011100: cont = 2'b xx; // C - 
		6'b 011101: cont = 2'b xx; // D =
		6'b 011111: cont = 2'b xx; // * setM
		
		//11
		6'b 111110: cont = 2'b x0; //# getM
		
		6'b 110000: cont = 2'b x1; // 0..9
		6'b 110001: cont = 2'b x1;
		6'b 110010: cont = 2'b x1;
		6'b 110011: cont = 2'b x1;
		6'b 110100: cont = 2'b x1;
		6'b 110101: cont = 2'b x1;
		6'b 110110: cont = 2'b x1;
		6'b 110111: cont = 2'b x1;
		6'b 111000: cont = 2'b x1;
		6'b 111001: cont = 2'b x1;
		
		6'b 111010: cont = 2'b xx; // A
		6'b 111011: cont = 2'b xx; // B +
		6'b 111100: cont = 2'b xx; // C - 
		6'b 111101: cont = 2'b xx; // D =
		6'b 111111: cont = 2'b xx; // * setM
		
		//10
		6'b 101110: cont = 2'b x0; //# getM
		
		6'b 100000: cont = 2'b x1; // 0..9
		6'b 100001: cont = 2'b x1;
		6'b 100010: cont = 2'b x1;
		6'b 100011: cont = 2'b x1;
		6'b 100100: cont = 2'b x1;
		6'b 100101: cont = 2'b x1;
		6'b 100110: cont = 2'b x1;
		6'b 100111: cont = 2'b x1;
		6'b 101000: cont = 2'b x1;
		6'b 101001: cont = 2'b x1;
		
		6'b 101010: cont = 2'b xx; // A
		6'b 101011: cont = 2'b xx; // B +
		6'b 101100: cont = 2'b xx; // C - 
		6'b 101101: cont = 2'b xx; // D =
		6'b 101111: cont = 2'b xx; // * setM

		default: cont = 2'b 00;
	endcase
endmodule