module mu_tb();
reg [15:0]abit;
reg [15:0]bbit;
wire [31:0]res;
mu mu_tb(
	.a(abit),
	.b(bbit),
	.result(res)
);

	initial
		begin
			abit=0001;
			bbit=0000;
			#10 abit=0010; bbit=0001;
			#10 abit=0010; bbit=0010;
			#10 abit=10101; bbit=10000;
		end

	initial
		begin
			$dumpfile("mu.vcd");
			$dumpvars(0,mu_tb);
			$monitor("time = %2d, abit = %15b, bbit = %15b, result = %32b", $time, abit, bbit, res);
		end

endmodule
