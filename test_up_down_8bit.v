module test_updown();
reg clkbit, enbit, resetbit,flag;
wire [7:0] out;

up_down_8bit obj(
.clk(clkbit),
.en(enbit),
.reset(resetbit),
.count_out(out)
);

initial begin
clkbit = 1;
resetbit=1;
flag=1;
enbit=0;
#1; enbit=1; resetbit=0;
#2; enbit=1; resetbit=1;
#255;flag=0;
#255; enbit=0;
#5; $finish;
end

always begin
#255 clkbit = ~clkbit;
end

initial begin
      $dumpfile("up_down8bit.vcd");
      $dumpvars(0,test_updown);
      $monitor("time = %2d,  RESET =%1b,  EN =%1b,  CLK =%1b,  F=%1b,  OUT =%8b",
      $time,resetbit,enbit,clkbit,flag,out);
end
endmodule
