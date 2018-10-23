`include "cmos_mux_2_1.v"

module mux_4_1(input a, input b, input c, input d, input s0, input s1, output y);
wire w1,w2;
mux_2_1 o1(.a(a),.b(b),.s(s0),.y(w1));
mux_2_1 o2(.a(c),.b(d),.s(s0),.y(w2));
mux_2_1 o3(.a(w1),.b(w2),.s(s1),.y(y));

endmodule
