`timescale 1ns/1ps

module tb_counter;

    reg Clock;
    reg Reset;
    reg Enable;
    reg Load;
    reg upOrDown;
    reg [3:0] in;
    wire [3:0] out;

    // call counter.v module
    counterBasis asd (
        .Clock(Clock),
        .Reset(Reset),
        .Enable(Enable),
        .Load(Load),
        .upOrDown(upOrDown),
        .in(in),
        .out(out)
    );

    // Clock CYcles
    initial begin
        Clock = 0;
        forever #5 Clock = ~Clock;  // Her 5ns'de sinyali değiştir
    end
    
    //test the code
    initial begin
        $dumpfile("testbench.vcd");
        $dumpvars(0, tb_counter);
        // #10 = 1 clock cycle

        // Start
        Reset = 1; Enable = 0; Load = 0; upOrDown = 1; in = 4'b0000;
        #15 Reset = 0; Enable = 1; // Activates the system
        
        // Up Counting
        #30;
        
        // Reset
        Reset = 1;
        #10;
        Reset = 0;
        
        // Up Counting again
        #50;
        
        // Down Counting
        upOrDown = 0; 
        #40;
        
        // Load Value
        in = 4'b1010; // Input the value of 10
        Load = 1;
        #10 Load = 0;
        
        // OVerflow
        upOrDown = 1; // Up Counting again
        #80;          // Go over 15
        
        $finish;
    end

endmodule