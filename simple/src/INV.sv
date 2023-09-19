module INV(input [3:0] SW, output logic [3:0] INV);


always_comb begin
 case (SW[3:0])
	4'b0000: INV = 4'b1111;
	4'b0001: INV = 4'b1110;
	4'b0010: INV = 4'b1101;
	4'b0011: INV = 4'b1100;
 default: INV = 4'b1111;
 endcase
end
endmodule

	