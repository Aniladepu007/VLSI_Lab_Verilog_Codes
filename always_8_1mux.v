module always_8_1mux(in,s,y);

input [7:0] in;
input [2:0] s;
output y;
reg y;

always @ (s or in or y)
begin
if(in == 8'b00000000) begin
      y = 0;
end
else begin
case(s)
0 :      y = in[0];
1 :      y = in[1];
2 :      y = in[2];
3 :      y = in[3];
4 :      y = in[4];
5 :      y = in[5];
6 :      y = in[6];
7 :      y = in[7];

endcase
end
end
endmodule
