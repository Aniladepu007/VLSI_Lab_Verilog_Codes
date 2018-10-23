`include "nand.v"
`include "not.v"

module and_gate(input a, input b, output y);
wire w;

nand_gate obj(.a(a),.b(b),.y(w));
not_gate nobj(.a(w),.y(y));

endmodule
