module Counter(
	input Clk, Load,
	output reg K
	);
	

	reg [2:0] cont;
	
	always @(posedge Clk, posedge Load) begin
		if (Load == 1'b1) 
		begin 
			cont <= 3'b000;
			K <= 1'b0;
		end
		else 		
			case (cont)
			3'b110: 
				K <= 1'b1;	
			
			default:
			begin
				cont <= cont + 1'b1; 
				K <= 1'b0; 
			end
			
			endcase
	end	
	
endmodule

// Leonardo Cherobim Dutra - 30875
// Max Willian Marcelino da Silva - 2019014470