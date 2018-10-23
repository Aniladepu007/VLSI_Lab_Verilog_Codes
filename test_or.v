module tbor();
reg abit;
reg bbit;
wire w;

or_gate tbor(
.a(abit),
.b(bbit),
.y(w)
);

initial
  begin
    abit=0;
    bbit=0;
    #10; abit=0; bbit=0;
    #10; abit=0; bbit=1;
    #10; abit=1; bbit=0;
    #10; abit=1; bbit=1;
  end

initial
  begin
    $dumpfile("or.vcd");
    $dumpvars(0,tbor);
    $monitor("time= %2d, abit= %1b, bbit= %1b, w=%1b", $time, abit, bbit, w);
  end
endmodule
