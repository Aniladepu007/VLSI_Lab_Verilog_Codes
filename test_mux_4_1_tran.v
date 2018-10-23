module tran_mux_4_1();

reg abit;
reg bbit;
reg cbit;
reg dbit;
reg sel0;
reg sel1;
wire w;

mux_4_1_tran obj(
.a(abit),
.b(bbit),
.c(cbit),
.d(dbit),
.s0(sel0),
.s1(sel1),
.y(w)
);

initial
      begin
            sel0=0;     sel1=0;     abit=0;     bbit=0;     cbit=1;     dbit=1;
            #10;        sel0=0;     sel1=0;          abit=0; bbit=1; cbit=0; dbit=1;
            #10;        sel0=1;     sel1=0;          abit=0; bbit=0; cbit=1; dbit=1;
            #10;        sel0=1;     sel1=0;          abit=0; bbit=1; cbit=0; dbit=1;
            #10;        sel0=0;     sel1=1;          abit=0; bbit=0; cbit=1; dbit=1;
            #10;        sel0=0;     sel1=1;          abit=0; bbit=1; cbit=0; dbit=1;
            #10;        sel0=1;     sel1=1;          abit=0; bbit=0; cbit=1; dbit=1;
            #10;        sel0=1;     sel1=1;          abit=0; bbit=1; cbit=0; dbit=1;
            #20;
      end

initial
  begin
    $dumpfile("tran_mux_4_1.vcd");
    $dumpvars(0,tran_mux_4_1);
    $monitor("time = %2d,      S1(MSB) =%1b, S0 =%1b      A =%1b,   B =%1b,   C =%1b,    D =%1b,    Out =%1b", $time,sel1,sel0,abit,bbit,cbit,dbit,w);
  end
endmodule
