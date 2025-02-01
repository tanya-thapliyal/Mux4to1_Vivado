`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2025 10:41:21 PM
// Design Name: 
// Module Name: prior_encod
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


module prior_encod(input logic [2:0] in, output logic [1:0] out, output logic valid);

     always_comb begin
        // Default values
        out = 2'b00;
        valid = 0;
        
        // Priority logic
        if (in[2] == 1) begin
            out = 2'b10;
            valid = 1;
        end else if (in[1] == 1) begin
            out = 2'b01;
            valid = 1;
        end else if (in[0] == 1) begin
            out = 2'b00;
            valid = 1;
        end else begin
            out = 2'b00;
            valid = 0;
        end
     
     end
     
endmodule
