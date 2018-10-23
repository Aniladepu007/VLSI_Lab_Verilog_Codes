module test_2_1mux();

reg abit;
reg bbit;
wire w;
reg sel;

mux_2_1 obj(
.a(abit),
.b(bbit),
.s(sel),
.y(w)
);

initial
      begin
            abit=0;
            bbit=0;
            sel=0;
            #10;        sel=0;          abit=0; bbit=1;
            #10;        sel=0;          abit=1; bbit=0;
            #10;        sel=0;          abit=1; bbit=1;
            #10;        sel=1;          abit=0; bbit=0;
            #10;        sel=1;          abit=1; bbit=0;
            #10;        sel=1;          abit=0; bbit=1;
            #10;        sel=1;          abit=1; bbit=1;
            #20;
      end

initial
  begin
    $dumpfile("cmos_mux_2_1.vcd");
    $dumpvars(0,test_2_1mux);
    $monitor("time = %2d,      S =%1b,       A =%1b,   B =%1b,    Out =%1b", $time,sel,abit,bbit,w);
  end
endmodule
