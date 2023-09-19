 `timescale 1 ps/1 ps

module tb();

logic [3:0] INV;
logic [3:0] SW;
logic [6:0] HEX0;


simple testbench(.SW(SW), .INV(INV) , .HEX0(HEX));


initial 
begin
 SW = 4'b0000;
 HEX0 = 6'b000000;
 INV = 4'b0000;

# 15;

SW [3:0] = 4'b0101; 
$display ("babr");

# 20;

end

endmodule