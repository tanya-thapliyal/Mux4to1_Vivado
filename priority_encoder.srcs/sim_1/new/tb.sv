`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2025 11:01:00 PM
// Design Name: 
// Module Name: tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb();

    // Initialize the signals
    logic [2:0] in;
    logic [1:0] out;
    logic valid;
    
    // Instantiate DUT
    prior_encod dut(.in(in), .out(out), .valid(valid));
    
    // Test cases
    initial begin
        in = 3'b111; #5;
        in = 3'b001; #5;
        in = 3'b010; #5;
        in = 3'b011; #5;
        in = 3'b100; #5;
        in = 3'b101; #5;
        in = 3'b000; #5;

    end

endmodule
