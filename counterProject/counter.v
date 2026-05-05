module counterBasis (
    input Clock,
    input Reset,
    input Enable,
    input Load,
    input upOrDown,
    input [3:0] in,
    output reg [3:0] out
);

always @(posedge Clock or posedge Reset) begin //clock signal or reset
        if (Reset) begin
            out <= 4'b0000;  // set counter to 0
        end 
        else if (Enable) begin 
            if (Load) begin
                out <= in;
            end 
            else if (upOrDown) begin
                out <= out + 1'b1;
            end 
            else begin
                out <= out - 1'b1;
            end
        end
    end

endmodule