module up_down_8bit(clk, en, reset, count_out);
input clk, reset, en, flag;
wire clk, reset;

output [7:0] count_out;
reg [7:0] count_out;

always @ (posedge clk) begin

if(en) begin

      if(flag) begin
            if(reset) begin
                  count_out <= #1 8'b0;
            end
            else
                  count_out <= #1 count_out + 1'b1;
      end
      else if(!flag) begin
            count_out <= #1 count_out - 1'b1;
      end
end
else
      count_out <= #1 8'bx;
end
endmodule
