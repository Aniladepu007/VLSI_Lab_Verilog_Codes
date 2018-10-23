`include "and.v"
`include "nor.v"

module cmos_ha(input a, input b, output sum, output car);
wire w1,w2,w3,w4,w5;

not_gate o1(.a(a),.y(w1));
not_gate o2(.a(b),.y(w2));
and_gate o3(.a(w1),.b(b),.y(w3));
and_gate o4(.a(w2),.b(a),.y(w4));
and_gate o5(.a(b),.b(a),.y(car));
nor_gate o6(.a(w3),.b(w4),.y(w5));
not_gate o7(.a(w5),.y(sum));

endmodule
