`include "cmos_ha.v"

module cmos_fa(input a, input b, input cin, output s, output cout);
wire w1,w2,w3,w4;

cmos_ha o1(.a(a),.b(b),.sum(w1),.car(w2));
cmos_ha o2(.a(w1),.b(cin),.sum(s),.car(w3));
nor_gate o3(.a(w2),.b(w3),.y(w4));
not_gate o4(.a(w4),.y(cout));


mux usng switch primt. 2x1 4x1
transm gate using switch prim         D
2x1 using tran nor_gate
4x1 "  "
