module subr_tb();
reg [31:0]abit;
reg [31:0]bbit;
wire [31:0]res;
subr subr_tb(
	.a(abit),
	.b(bbit),
	.result(res)
);

	initial
		begin
			abit=0001;
			bbit=0000;
			#10; abit=0010; bbit=0001;
			#10; abit=1010; bbit=1010;
			#10; abit=10101; bbit=10000;
		end

	initial
		begin
			$dumpfile("subr.vcd");
			$dumpvars(0,subr_tb);
			$monitor("time = %2d, abit = %31b, bbit = %31b, result = %16d", $time, abit, bbit, res);
		end

endmodule
