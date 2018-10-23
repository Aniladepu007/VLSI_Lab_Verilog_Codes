module tran_gate(input a, input ne, input pe, output y);

nmos(y,a,ne);
pmos(y,a,pe);

endmodule
