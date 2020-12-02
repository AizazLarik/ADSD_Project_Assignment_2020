`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2020 04:30:35 PM
// Design Name: 
// Module Name: recorder
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

///////////////////////////////////////////////////////////////////////////////
//
// Record/playback
//
///////////////////////////////////////////////////////////////////////////////


module recorder(
  input wire clk_in,              // 100MHz system clock
  input wire rst_in,               // 1 to reset to initial state
  input wire record_in,            // 0 for playback, 1 for record
  input wire ready_in,             // 1 when data is available
  input wire filter_in,            // 1 when using low-pass filter
  input wire signed [7:0] mic_in,         // 8-bit PCM data from mic
  output reg signed [7:0] data_out       // 8-bit PCM data to headphone
); 
    reg [7:0] tone_750;
    reg [7:0] tone_440;
    //generate a 750 Hz tone
    sine_generator  tone750hz (   .clk_in(clk_in), .rst_in(rst_in), 
                                 .step_in(ready_in), .amp_out(tone_750));
    //generate a 440 Hz tone
    sine_generator  #(.PHASE_INCR(32'd39370534)) tone440hz(.clk_in(clk_in), .rst_in(rst_in), 
                               .step_in(ready_in), .amp_out(tone_440));                          
    //logic [7:0] data_to_bram;
    //logic [7:0] data_from_bram;
    //logic [15:0] addr;
    //logic wea;
    //  blk_mem_gen_0(.addra(addr), .clka(clk_in), .dina(data_to_bram), .douta(data_from_bram), 
    //                .ena(1), .wea(bram_write));                                  
    
    always @(posedge clk_in)begin
        data_out = filter_in?tone_440:tone_750; //send tone immediately to output
    end                            
endmodule                              
