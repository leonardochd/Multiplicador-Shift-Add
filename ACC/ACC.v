module ACC(
	input Clk, Sh, Ad, Load,
	input [8:0] Entradas,
	output reg [8:0] Saidas
	);
	
	
	always @(posedge Clk)
	begin
		if (Load)
		begin
			Saidas[8:4] = 0;
			Saidas[3:0] = Entradas[3:0];
		end
		
		if (Sh)
				Saidas = Saidas >> 1;		
		
		if (Ad)
			Saidas[8:4] = Entradas[8:4];
		
	end

endmodule

// Leonardo Cherobim Dutra - 30875
// Max Willian Marcelino da Silva - 2019014470