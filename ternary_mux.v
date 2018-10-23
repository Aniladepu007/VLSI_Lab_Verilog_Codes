module ternary_mux(in,s,y);
input [1:0] in;
input s;
output y;

assign y = s==0 ? in[0] : in[1];
endmodule
