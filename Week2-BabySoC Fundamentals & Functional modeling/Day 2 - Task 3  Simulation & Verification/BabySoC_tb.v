`timescale 1ns/1ps

module baby_soc_tb;

    // Inputs to BabySoC
    reg clk;
    reg reset;

    // Outputs from BabySoC
    wire [3:0] ALU_Result;

    // Instantiate the top module (BabySoC)
    BabySoC uut (
        .clk(clk),
        .reset(reset),
        .ALU_Result(ALU_Result)
    );

    // Clock generation: toggle every 5 time units
    initial clk = 0;
    always #5 clk = ~clk;

    // Simulation sequence
    initial begin
        // Generate waveform file
        $dumpfile("baby_soc.vcd");
        $dumpvars(0, baby_soc_tb);

        // Apply reset
        reset = 1;
        #10 reset = 0;

        // Run simulation for some time
        #100 $finish;  // End simulation
    end

endmodule
