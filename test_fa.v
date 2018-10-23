module fa_tb();
reg abit;
reg bbit;
reg cbit;
wire s;
wire c;

cmos_fa obj(
  .a(abit),
  .b(bbit),
  .cin(cbit),
  .s(s),
  .cout(c)
);
initial
  begin
  abit =0;
  bbit =0;
  cbit =0;
  #10; abit=0; bbit=0; cbit=0;
  #10; abit=0; bbit=0; cbit=1;
  #10; abit=0; bbit=1; cbit=0;
  #10; abit=0; bbit=1; cbit=1;
  #10; abit=1; bbit=0; cbit=0;
  #10; abit=1; bbit=0; cbit=1;
  #10; abit=1; bbit=1; cbit=0;
  #10; abit=1; bbit=1; cbit=1;
  #20;
  end

initial
begin
$dumpfile("cmos_fa.vcd");
$dumpvars(0,fa_tb);
$monitor("time = %2d, A =%1b, B=%1b, Cin=%1b,         sum=%1b, Cout=%1b", $time,abit,bbit,cbit,s,c);
end

endmodule
