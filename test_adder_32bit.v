module adder_tb();
reg [31:0]abit;
reg [31:0]bbit;
wire [31:0]res;
adder32 adder_tb(
	.a(abit),
	.b(bbit),
	.result(res)
);

	initial
		begin
			abit=00000;
			bbit=00001;
			#10; abit=01010; bbit=1000;
			#10; abit=1010; bbit=01010;
			#10; abit=10101; bbit=10000;
		end

	initial
		begin
			$dumpfile("adder.vcd");
			$dumpvars(0,adder_tb);
			$monitor("time = %2d, abit = %31b, bbit = %31b, result = %16d", $time, abit, bbit, res);
		end

endmodule
