module simple(output logic [6:0] HEX0, input logic [3:0] SW);

logic [3:0] INV;



cumpt cumpt(.HEX0(HEX0),.INV(INV));	 
INV inv1(.SW(SW),.INV(INV));

endmodule









