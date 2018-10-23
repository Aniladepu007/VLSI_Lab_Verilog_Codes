module test_encoder_4_2();

reg [3:0] inbit;
reg ebit;
wire [1:0] ybit;

encoder_4_2 obj(
.in(inbit),
.en(ebit),
.y(ybit)
);

initial
      begin
            ebit =0; inbit=4'bxxxx;
            #10;  ebit =1;  inbit=4'b0001;
            #10;  ebit =1;  inbit=4'b0010;
            #10;  ebit =1;  inbit=4'b0100;
            #10;  ebit =1;  inbit=4'b1000;
            #20;
      end

initial
  begin
    $dumpfile("4_2_encoder.vcd");
    $dumpvars(0,test_encoder_4_2);
    $monitor("time = %2d,   EN=%1b,     y3y2y1y0 =%2b,    A1 A0 =%2b", $time,ebit,inbit,ybit);
  end
endmodule
