`include "nor.v"
`include "not.v"

module or_gate(input a, input b, output y);
wire w;

nor_gate obj(.a(a),.b(b),.y(w));
not_gate obj1(.a(w),.y(y));

endmodule
