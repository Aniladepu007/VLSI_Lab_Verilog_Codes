module test();

initial begin
//$display("5  10 = %d", 100%8);
//$display("5  10 = %d",-50 / 11);
//$display(" =%d",-5);
//$display("5 <=10 = %f",5 <=10);
//$display("5 <=10 = %b",50 <=10);
$display("1'bx <=10  %b",(1'b0 <= 10));
$display("1'bx <=10  %b",2'b11 < 1);
$display("1'bx <=10  %b",4'hD < 111);

$display(" 4'bx001 <= 4'bx001  %b",4'bz0x1 === 4'bz001);
$display(" 4'bx001 <= 4'bx001  %b",4'b10x1 & 4'bx001);
//$display(" 4'bx001 <= 4'bx001  %b",4'bx001 === 4'bx0z1);
//$display("5 ==10 = %b",5 ==10);
//$display(" 4'b1110    4'b1001  %b",4'b1110 ~^ 4'b1001);
//$display(" 4'b1011      %b",4'b1011 >> 1);

$finish;
end
endmodule
