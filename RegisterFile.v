module RegisterFile(
    input clk,
    input [1:0] ReadReg1,
    input [1:0] ReadReg2,
    input [1:0] WriteReg,
    input [3:0] WriteData,
    input RegWrite,
    output [3:0] ReadData1,
    output [3:0] ReadData2
);
    reg [3:0] regfile [3:0];

    assign ReadData1 = regfile[ReadReg1];
    assign ReadData2 = regfile[ReadReg2];

    always @(posedge clk) begin
        if(RegWrite)
            regfile[WriteReg] <= WriteData;
    end
endmodule
