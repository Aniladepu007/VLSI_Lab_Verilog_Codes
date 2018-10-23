module nand_gate(input a, input b, output y);
wire w;
supply1 Vdd;
supply0 Gnd;

pmos(y, Vdd, a);
pmos(y, Vdd, b);

nmos(y, w, a);
nmos(w, Gnd, b);

endmodule
