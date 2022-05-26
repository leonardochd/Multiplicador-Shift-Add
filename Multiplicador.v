module Multiplicador(
	input Clk, St,
	input [3:0] Multiplicando,
	input [3:0] Multiplicador,
	output Done, Idle,
	output [7:0]Produto
	);
	
	
	//Wire para ACC
	wire [8:0] Entradas;
	wire [8:0] Saidas;
	
	//Wire para Adder
	wire [4:0] Soma;
	wire [3:0] OperandoA;
	wire [3:0] OperandoB;
	
	//Wire para Control
	wire K;
	wire M;
	wire Load;
	wire Sh;
	wire Ad;		
	
	//Auxiliares
	assign OperandoA = Multiplicando;
	assign OperandoB = Saidas[7:4]; 
	assign Produto = Saidas[7:0];
	assign M = Saidas[0];
	assign Entradas[3:0] = Multiplicador;
	assign Entradas[8:4] = Soma;	
	
	ACC acumulador01(Clk, Sh, Ad, Load, Entradas, Saidas);
	Adder somador01(OperandoA, OperandoB, Soma);
	Control controle01(Clk, St, K, M, Idle, Done, Load, Sh, Ad);
	Counter contador01(Clk, Load, K);
	
endmodule

// Leonardo Cherobim Dutra - 30875
// Max Willian Marcelino da Silva - 2019014470