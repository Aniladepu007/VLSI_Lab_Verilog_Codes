`include "and.v"
`include "nor.v"

module xor_gate(input a, input b, output y);

wire w1,w2,w3,w4,w5;

not_gate o2(.a(a),.y(w2));
not_gate o3(.a(b),.y(w3));
and_gate o1(.a(a),.b(b),.y(w1));
and_gate o4(.a(w2),.b(w3),.y(w4));
nor_gate o5(.a(w1),.b(w4),.y(y));

endmodule
