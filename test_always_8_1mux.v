module test_8_1mux();
reg [7:0] inbit;
reg [2:0] sbit;
wire ybit;

always_8_1mux obj(
.in(inbit),
.s(sbit),
.y(ybit)
);

initial begin
      inbit = 8'b00000000;  sbit = 3'bxxx;
      #10;      inbit = 8'b00000001;  sbit = 3'b000;
      #10;      inbit = 8'b00000010;  sbit = 3'b001;
      #10;      inbit = 8'b00000100;  sbit = 3'b010;
      #10;      inbit = 8'b00001000;  sbit = 3'b011;
      #10;      inbit = 8'b00010000;  sbit = 3'b100;
      #10;      inbit = 8'b00100000;  sbit = 3'b101;
      #10;      inbit = 8'b01000000;  sbit = 3'b110;
      #10;      inbit = 8'b10000000;  sbit = 3'b111;
#20;
end

initial
  begin
    $dumpfile("always_8_1_mux.vcd");
    $dumpvars(0,test_8_1mux);
    $monitor("time = %2d,   INPUT=%8b,     S3S2S1 =%3b,    OUT =%1b", $time,inbit,sbit,ybit);
  end
endmodule
