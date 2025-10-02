module ProgramCounter(
    input clk,
    input reset,
    output reg [3:0] PC
);
    always @(posedge clk or posedge reset) begin
        if(reset)
            PC <= 4'b0000;
        else
            PC <= PC + 1;
    end
endmodule
