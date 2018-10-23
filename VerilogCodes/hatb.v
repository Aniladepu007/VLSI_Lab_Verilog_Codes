module hatb;
reg abit;
reg bbit;
wire s;
wire c;

ha obj(
.a(abit),
.b(bbit),
.sum(s),
.carry(c)
);
initial
begin
abit =0;
bbit =0;
#20; abit =0;
#20; bbit =0;
#20; abit =0;
#20; bbit=1;
#20; abit=1; 
#20; bbit=0;
#20; abit=1; 
#20; bbit=1;
#40;
end
 
 
initial
begin
$dumpfile("test1.vcd");
$dumpvars(0,hatb);
$monitor("time = %2d, abit =%1b, bbit=%1b, s=%1b, c=%1b", $time,abit,bbit,s,c);
end
 
endmodule