module timer
#(parameter WIDTH=32)
(
	input clk_i, rst_i, enable_i,
	output logic overflow_o
);
 
reg [WIDTH-1:0] count;
 
always @ (posedge rst_i or posedge clk_i)
begin
	if (rst_i)
		count <= 'b0;
	else if (enable_i)
		count <= count + 1'b1;
	else 
		count <= 'b0;
end
 
always @ (posedge rst_i or posedge clk_i)
begin
	if (rst_i)
		overflow_o <= 'b0;
	else if (&count)			// Логическое "и" всех разрядов.	
		overflow_o <= 1'b1;
	else 
		overflow_o <= 1'b0;
end
 
endmodule
