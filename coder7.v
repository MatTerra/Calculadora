// Codificador  de binário para 
// display 7 segmentos
module coder7 (
	input  logic [7:0] In,
	output logic [3:0] Out,
	output logic [3:0] Out2,
	output logic sig);

	always @(*)	
		case (In)
			8'b00000000 :begin
				//0
				Out = ~7'b0111111;
				Out2 = ~7'b0111111;
				sig = 1'b0;
			end
			8'b00000001 :begin
				// 1
				Out = ~7'b0000110;
				Out2 = ~7'b0111111;
				sig = 1'b0;
			end
			8'b11111111 :begin
				//-1
				Out = ~7'b0000110;
				Out2 = ~7'b0111111;
				sig = 1'b1;
			end
			8'b00000010 :begin
				//2
				Out = ~7'b1011011;
				Out2 = ~7'b0111111;
				sig = 1'b0;
			end
			8'b11111110 :begin
				//-2
				Out = ~7'b1011011;
				Out2 = ~7'b0111111;
				sig = 1'b1;
			end		
			8'b00000011 :begin
				//3
				Out = ~7'b1001111;
				Out2 = ~7'b0111111;
				sig = 1'b0;
			end
			8'b11111101 :begin
				//-3
				Out = ~7'b1001111;
				Out2 = ~7'b0111111;
				sig = 1'b1;
			end
			8'b00000100 :begin
				//4
				Out = ~7'b1100110;
				Out2 = ~7'b0111111;
				sig = 1'b0;
			end 
			8'b11111100:begin
				//-4
				Out = ~7'b1100110;
				Out2 = ~7'b0111111;
				sig = 1'b1;
			end
			8'b00000101 :begin
				//5
				Out = ~7'b1101101;
				Out2 = ~7'b0111111;
				sig = 1'b0;
			end 
			8'b00000110 :begin
				//6
				Out = ~7'b1111101;
				Out2 = ~7'b0111111;
				sig = 1'b0;
			end   
			8'b00000111 :begin
				//7
				Out = ~7'b0000111; 
				Out2 = ~7'b0111111;
				sig = 1'b0;
			end    
			8'b00001000 :begin
				//8
				Out = ~7'b1111111; 
				Out2 = ~7'b0111111;
				sig = 1'b0;
			end  
			8'b00001001 :begin
				//9
				Out = ~7'b1101111; 
				Out2 = ~7'b0111111;
				sig = 1'b0;
			end  
			8'b00001010 :begin
				// 10
				Out = ~7'b0111111; 
				Out2 = ~7'b0111111;
				sig = 1'b0;
			end  
			8'b1011 : Out = ~7'b1111100; 

			8'b1100 : Out = ~7'b0111001; 
			8'b1101 : Out = ~7'b1011110; 
			8'b1110 : Out = ~7'b1111001; 
			8'b1111 : Out = ~7'b1110001; 
	
			default : Out = ~7'b0000000;
		endcase
		
endmodule

