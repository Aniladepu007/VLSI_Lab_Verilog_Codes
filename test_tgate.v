module tgate_tb();

reg abit;
reg w1;
reg w2;
reg e;
reg e1;
wire y;

tran_gate obj(
.a(abit),
.ne(e),
.pe(e1),
.y(y)
);

initial
  begin
    abit=0;
    e=0;
    e1=1;
    #10;  w1=0; e=w1; e1=~w1; abit=0;
    #10;        e=w1; e1=~w1; abit=1;
    #10;  w2=1; e=w2; e1=~w2; abit=0;
    #10;        e=w2; e1=~w2; abit=1;
    #20;
    end

initial
  begin
    $dumpfile("tran_gate.vcd");
    $dumpvars(0,tgate_tb);
    $monitor("time = %2d, EN =%1b, ~EN =%1b, A =%1b,     Out =%1b", $time,e,e1,abit,y);
  end
endmodule
