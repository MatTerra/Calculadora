module Saidas(in,cont);
	input [6:0] in;
	output [7:0] cont;

	always @(*)
	casex (in)
		//RDY1
		//00
		6'b 1001110: cont = 8'b x0x01000; //# getM
		
		6'b 1000000: cont = 8'b x1x01000; // 0..9
		6'b 1000001: cont = 8'b x1x01000;
		6'b 1000010: cont = 8'b x1x01000;
		6'b 1000011: cont = 8'b x1x01000;
		6'b 1000100: cont = 8'b x1x01000;
		6'b 1000101: cont = 8'b x1x01000;
		6'b 1000110: cont = 8'b x1x01000;
		6'b 1000111: cont = 8'b x1x01000;
		6'b 1001000: cont = 8'b x1x01000;
		6'b 1001001: cont = 8'b x1x01000;
		
		6'b 1001010: cont = 8'b xxx00000; // A
		6'b 1001011: cont = 8'b xxx00000; // B -
		6'b 1001100: cont = 8'b xxx00000; // C + 
		6'b 1001101: cont = 8'b xxx00000; // D =
		6'b 1001111: cont = 8'b xxx00010; // * setM
		
		//01
		6'b 1011110: cont = 8'b x0x01000; //# getM
	
		6'b 1010000: cont = 8'b xxx00000; // 0..9
		6'b 1010001: cont = 8'b xxx00000;
		6'b 1010010: cont = 8'b xxx00000;
		6'b 1010011: cont = 8'b xxx00000;
		6'b 1010100: cont = 8'b xxx00000;
		6'b 1010101: cont = 8'b xxx00000;
		6'b 1010110: cont = 8'b xxx00000;
		6'b 1010111: cont = 8'b xxx00000;
		6'b 1011000: cont = 8'b xxx00000;
		6'b 1011001: cont = 8'b xxx00000;
		
		6'b 1011010: cont = 8'b xxx00000; // A
		6'b 1011011: cont = 8'b 1xx10000; // B -
		6'b 1011100: cont = 8'b 0xx10000; // C + 
		6'b 1011101: cont = 8'b xxx00000; // D =
		6'b 1011111: cont = 8'b xxx00010; // * setM
		
		//11
		6'b 1111110: cont = 8'b xx000100; //# getM
		
		6'b 1110000: cont = 8'b xx100100; // 0..9
		6'b 1110001: cont = 8'b xx100100;
		6'b 1110010: cont = 8'b xx100100;
		6'b 1110011: cont = 8'b xx100100;
		6'b 1110100: cont = 8'b xx100100;
		6'b 1110101: cont = 8'b xx100100;
		6'b 1110110: cont = 8'b xx100100;
		6'b 1110111: cont = 8'b xx100100;
		6'b 1111000: cont = 8'b xx100100;
		6'b 1111001: cont = 8'b xx100100;
		
		6'b 1111010: cont = 8'b xxx00000; // A
		6'b 1111011: cont = 8'b 1xx10000; // B -
		6'b 1111100: cont = 8'b 0xx10000; // C - 
		6'b 1111101: cont = 8'b xxx00000; // D =
		6'b 1111111: cont = 8'b xxx00000; // * setM
		
		//10
		6'b 1101110: cont = 8'b xx000000; //# getM
		
		6'b 1100000: cont = 8'b xx100100; // 0..9
		6'b 1100001: cont = 8'b xx100100;
		6'b 1100010: cont = 8'b xx100100;
		6'b 1100011: cont = 8'b xx100100;
		6'b 1100100: cont = 8'b xx100100;
		6'b 1100101: cont = 8'b xx100100;
		6'b 1100110: cont = 8'b xx100100;
		6'b 1100111: cont = 8'b xx100100;
		6'b 1101000: cont = 8'b xx100100;
		6'b 1101001: cont = 8'b xx100100;
		
		6'b 1101010: cont = 8'b xxx00000; // A
		6'b 1101011: cont = 8'b xxx00000; // B +
		6'b 1101100: cont = 8'b xxx00000; // C - 
		6'b 1101101: cont = 8'b xxx00001; // D =
		6'b 1101111: cont = 8'b xxx00010; // * setM

		default: cont = 8'b 00000000;
	endcase
endmodule