`include "mux_2_1_tran.v"

module mux_4_1_tran(input a, input b, input c, input d, input s0, input s1, output y);
wire w1,w2;
mux_2_1_tran o1(.a(a),.b(b),.s(s0),.y(w1));
mux_2_1_tran o2(.a(c),.b(d),.s(s0),.y(w2));
mux_2_1_tran o3(.a(w1),.b(w2),.s(s1),.y(y));
endmodule
