module led_pattern (
    input wire clk,
    input wire rst,
    output reg [7:0] led
);

reg [23:0] counter;

always @(posedge clk or posedge rst)
begin
    if (rst)
        counter <= 0;
    else
        counter <= counter + 1;
end

always @(posedge clk or posedge rst)
begin
    if (rst)
        led <= 8'b00000001;
    else if (counter == 0)
        led <= {led[6:0], led[7]};
end

endmodule
