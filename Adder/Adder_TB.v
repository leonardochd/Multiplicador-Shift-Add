`timescale 1ns/10ps
module Adder_TB();
	reg [3:0] OperandoA;
	reg [3:0] OperandoB;
	
	wire [4:0] Soma;
	
	Adder Teste(
		.OperandoA(OperandoA),
		.OperandoB(OperandoB),
		.Soma(Soma)
	);
	
	initial begin
		OperandoA = 1;
		OperandoB = 1;
		
		#10 OperandoA = 0;
		OperandoB = 3;
		
		#10 OperandoA = 5;
		OperandoB = 10;
		
		#10 OperandoA = 8;
		OperandoB = 8;
		
		#10;
		
	end
	
endmodule

// Leonardo Cherobim Dutra - 30875
// Max Willian Marcelino da Silva - 2019014470