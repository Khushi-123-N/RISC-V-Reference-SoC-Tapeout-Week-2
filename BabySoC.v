module BabySoC(
    input clk,
    input reset,
    output [3:0] ALU_Result
);
    wire [3:0] PC_Out;
    wire [3:0] Read1, Read2;

    ProgramCounter PC(.clk(clk), .reset(reset), .PC(PC_Out));
    RegisterFile RF(.clk(clk), .ReadReg1(2'b00), .ReadReg2(2'b01), .WriteReg(2'b10),
                    .WriteData(ALU_Result), .RegWrite(1'b1), .ReadData1(Read1), .ReadData2(Read2));
    ALU alu(.A(Read1), .B(Read2), .ALU_Sel(3'b000), .ALU_Out(ALU_Result));
endmodule
