module tb_not();
reg abit;
wire w;

not_gate tb_not(
.a(abit),
.y(w)
);

initial
  begin
    abit=0;
    #10; abit=0;
    #10; abit=1;
  end

initial
  begin
    $dumpfile("not.vcd");
    $dumpvars(0,tb_not);
    $monitor("time= %2d, abit= %1b, w=%1b", $time, abit, w);
  end
endmodule
