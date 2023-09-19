 `timescale 1 ps/1 ps

module tb();

logic [3:0] INV;
logic [3:0] SW;
logic [6:0] HEX0;


simple testbench(.SW(SW),.HEX0(HEX0));


initial 
begin
 SW = 4'b0001;
 HEX0 = 6'b010000;


# 15;

SW [3:0] = 4'b0101; 
$display ("babr");

# 20;
SW [3:0] = 4'b1101; 
$display ("babr");

# 25;

end

endmodule