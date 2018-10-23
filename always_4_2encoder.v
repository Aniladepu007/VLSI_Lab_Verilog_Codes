module encoder_4_2(in,en,y);
input [3:0] in;
input en;
output [1:0] y;
reg y;

always @ (in or en)
begin

if(en == 0) begin
      y=2'b0;
end

else begin
case(in)
4'b0001 :      y=2'b00;
4'b0010 :      y=2'b01;
4'b0100 :      y=2'b10;
4'b1000 :      y=2'b11;
default : $display("ambiguous input!");
endcase
end

end
endmodule
