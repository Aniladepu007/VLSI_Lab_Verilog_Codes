module tband();
reg abit;
reg bbit;
wire w;

and_gate tband(
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
    $dumpfile("and.vcd");
    $dumpvars(0,tband);
    $monitor("time= %2d, abit= %1b, bbit= %1b, w=%1b", $time, abit, bbit, w);
  end
endmodule
