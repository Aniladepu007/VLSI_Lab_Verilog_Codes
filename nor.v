module nor_gate(a,b,y);
	output y;
	input a,b;
	wire w;
	supply1 vdd;
	supply0 gnd;

	pmos p1(w,vdd,a);
	pmos p2(y,w,b);

	nmos n1(y,gnd,a);
	nmos n1(y,gnd,b);
endmodule
