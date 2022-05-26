`timescale 1ns/10ps
module Counter_TB();
	reg Clk;
	reg Load;
	
	wire K;
	
	Counter Teste(
		.Clk(Clk),
		.Load(Load),
		.K(K)		
	);
	
	initial begin
		Clk = 0;
		Load = 0;
		
		#10 Clk = 1;
		Load = 0;
		
		#10 Clk = 0;
		Load = 1;
		
		#10 Clk = 1;
		Load = 1;
		
		#10 Clk = 0;
		Load = 0;
		
		#10 Clk = 1;
		Load = 0;
		
		#10 Clk = 0;
		Load = 0;
		
		#10 Clk = 1;
		Load = 0;
		
		#10 Clk = 0;
		Load = 0;
		
		#10 Clk = 1;
		Load = 0;
		
		#10 Clk = 0;
		Load = 0;
		
		#10 Clk = 1;
		Load = 0;
		
		#10 Clk = 0;
		Load = 0;
		
		#10 Clk = 1;
		Load = 0;
		
		#10 Clk = 0;
		Load = 0;
		
		#10 Clk = 1;
		Load = 0;
		
		#10 Clk = 0;
		Load = 0;
		
		#10 Clk = 1;
		Load = 0;
		
		#10 Clk = 0;
		Load = 0;
		
		#10 Clk = 1;
		Load = 0;
		
		#10 Clk = 0;
		Load = 0;
		
		#10 Clk = 1;
		Load = 0;
		
		#10 Clk = 0;
		Load = 0;
		
		#10 Clk = 1;
		Load = 0;
		
		#10 Clk = 0;
		Load = 0;
		
		#10 Clk = 1;
		Load = 0;
		
		#10;
		
	end
	
endmodule

// Leonardo Cherobim Dutra - 30875
// Max Willian Marcelino da Silva - 2019014470