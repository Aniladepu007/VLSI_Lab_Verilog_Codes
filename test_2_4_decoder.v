module test_decoder_2_4();

reg [1:0] sbits;
reg ebit;
wire [3:0] ybit;

decoder_2_4 obj(
.s(sbits),
.en(ebit),
.y(ybit)
);

initial
      begin
            sbits=2'bxx;    ebit=0;
            #10;  sbits=2'b00;    ebit=1;
            #10;  sbits=2'b01;    ebit=1;
            #10;  sbits=2'b10;    ebit=1;
            #10;  sbits=2'b11;    ebit=1;
            #20;
      end

initial
  begin
    $dumpfile("2_4_encoder.vcd");
    $dumpvars(0,test_decoder_2_4);
    $monitor("time = %2d,      S =%2b,   EN =%1b,   Out =%4b", $time,sbits,ebit,ybit);
  end
endmodule
