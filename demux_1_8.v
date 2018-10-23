module always_1_8demux(in,s,y);
input in;
input [2:0] s;
output [7:0] y;
reg y;

always @ (s or in)
begin
if(in == 0)
      y = 8'b0;
else
case(s)
0 :      y = 8'b00000001;
1 :      y = 8'b00000010;
2 :      y = 8'b00000100;
3 :      y = 8'b00001000;
4 :      y = 8'b00010000;
5 :      y = 8'b00100000;
6 :      y = 8'b01000000;
7 :      y = 8'b10000000;

endcase
end
endmodule
