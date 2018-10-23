module mux_2_1(input a, input b, input s, output y);
supply0 gnd;
supply1 vdd;
wire w1,w2,w3;

pmos(w1,vdd,s);
pmos(y,w1,~a);
pmos(w2,vdd,~s);
pmos(y,w2,~b);

nmos(y,w3,~a);
nmos(y,w3,s);
nmos(w3,gnd,~b);
nmos(w3,gnd,~s);
endmodule
