module test_1_8demux();
reg inbit;
reg [2:0] sbit;
wire [7:0] ybit;

always_1_8demux obj(
.in(inbit),
.s(sbit),
.y(ybit)
);

initial begin
      inbit = 0;  sbit = 3'bxxx;
      #10;      inbit = 1;  sbit = 3'b000;
      #10;      inbit = 1;  sbit = 3'b001;
      #10;      inbit = 1;  sbit = 3'b010;
      #10;      inbit = 1;  sbit = 3'b011;
      #10;      inbit = 1;  sbit = 3'b100;
      #10;      inbit = 1;  sbit = 3'b101;
      #10;      inbit = 1;  sbit = 3'b110;
      #10;      inbit = 1;  sbit = 3'b111;
#20;
end

initial
  begin
    $dumpfile("always_1_8_demux.vcd");
    $dumpvars(0,test_1_8demux);
    $monitor("time = %2d,   INPUT=%1b,     S3S2S1 =%3b,    OUT =%8b", $time,inbit,sbit,ybit);
  end
endmodule
