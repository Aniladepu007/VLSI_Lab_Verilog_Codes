//2 to 4 decoder with enable using always block.(using if else and switch and case)
module decoder_2_4(input [1:0] s,input en, output [3:0] y);
reg y;

always @ (s or en)
begin

if(en == 0) begin
      y=4'b0;
end

else begin
case(s)
0:      y=4'b1000;
1:      y=4'b0100;
2:      y=4'b0010;
3:      y=4'b0001;
default : $display("wrong choice!");
endcase
end

end
endmodule
