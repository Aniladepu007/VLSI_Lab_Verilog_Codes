module ha_tb();
reg abit;
reg bbit;
wire s;
wire c;

cmos_ha obj(
  .a(abit),
  .b(bbit),
  .sum(s),
  .car(c)
);
initial
  begin
  abit =0;
  bbit =0;
  #10; abit=0; bbit=0;
  #10; abit=0; bbit=1;
  #10; abit=1; bbit=0;
  #10; abit=1; bbit=1;
  #20;
  end

initial
begin
$dumpfile("cmos_ha.vcd");
$dumpvars(0,ha_tb);
$monitor("time = %2d, abit =%1b, bbit=%1b, s=%1b, c=%1b", $time,abit,bbit,s,c);
end

endmodule
