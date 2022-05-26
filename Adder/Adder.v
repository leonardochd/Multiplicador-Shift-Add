module Adder(
	input [3:0] OperandoA,
	input [3:0] OperandoB,
	output [4:0] Soma
	);
	
	
	assign Soma = OperandoA + OperandoB;
	
endmodule

// Leonardo Cherobim Dutra - 30875
// Max Willian Marcelino da Silva - 2019014470