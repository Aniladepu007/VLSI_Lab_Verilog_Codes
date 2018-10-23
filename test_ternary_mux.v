module test_ter_mux();
reg [1:0] inbit;
reg sbit;
wire ybit;

ternary_mux obj(
.in(inbit),
.s(sbit),
.y(ybit)
);

initial begin
      inbit = 0;  sbit=0;
      #10; inbit = 0; sbit=1;
      #10; inbit = 1; sbit=0;
      #10; inbit = 1; sbit=1;
      #10; inbit = 2; sbit=0;
      #10; inbit = 2; sbit=1;
      #10; inbit = 3; sbit=0;
      #10; inbit = 3; sbit=1;
      #10;
end

initial begin
      $dumpfile("ter_mux.vcd");
      $dumpvars(0,test_ter_mux);
      $monitor("time = %2d,   INPUT=%2b,     S =%1b,    OUT =%1b", $time,inbit,sbit,ybit);
end
endmodule
