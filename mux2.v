module mux2(
input [1:0] Dado,
input Escolha,
output Saida
);
assign Saida = Dado[Escolha];
endmodule
