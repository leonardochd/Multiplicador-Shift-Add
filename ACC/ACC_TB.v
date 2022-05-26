`timescale 1ns/10ps
module ACC_TB();
	reg Clk;
	reg Sh;
	reg Ad;
	reg Load;
	reg [8:0] Entradas;
	
	wire [8:0] Saidas;
	
	ACC Teste(
		.Clk(Clk),
		.Sh(Sh),
		.Ad(Ad),
		.Load(Load),
		.Entradas(Entradas),
		.Saidas(Saidas)
	);
	
	initial begin
		Clk = 0;
		Sh = 0;
		Ad = 0;
		Load = 1;
		Entradas = 7;
		
		#10 Clk = 1;
		Sh = 0;
		Ad = 0;
		Load = 1;
		Entradas = 7;
		
		#10 Clk = 0;
		Sh = 1;
		Ad = 0;
		Load = 0;
		Entradas = 1;
		
		#10 Clk = 1;
		Sh = 1;
		Ad = 0;
		Load = 0;
		Entradas = 1;
		
		#10 Clk = 0;
		Sh = 0;
		Ad = 1;
		Load = 0;
		Entradas = 200;
		
		#10 Clk = 1;
		Sh = 0;
		Ad = 1;
		Load = 0;
		Entradas = 200;
		
		
		#10 ;
	end
	
endmodule

// Leonardo Cherobim Dutra - 30875
// Max Willian Marcelino da Silva - 2019014470
