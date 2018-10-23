`include "tran_gate.v"

module mux_2_1_tran(input a, input b, input s, output y);
tran_gate o1(.a(a),.ne(~s),.pe(s),.y(y));
tran_gate o2(.a(b),.ne(s),.pe(~s),.y(y));
endmodule
