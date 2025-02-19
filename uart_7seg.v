`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2024 11:05:09
// Design Name: 
// Module Name: uart_7seg
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


module uart_7seg(
    input clk,
    input rx_serial,
    output rx_status,
    output [7:0] segment_select,
    output [6:0] rx_segment
    );
    
    wire [7:0] received_data;
    wire [7:0] tmp;
    //Instantiate UART receiver
    uart_rx rx_0(
                    .clk(clk),
                    .i_Rx_Serial(rx_serial),
                    .o_Rx_DV(rx_status),
                    .o_Rx_Byte(received_data));
                    
    //Instantiate 7 segment decoder module
    decoder_seven_seg seg_0(
                 .din(tmp[3:0]),
                 .segment_out(rx_segment)
                     );


assign segment_select = 8'b11111110; //only select last segment
assign tmp = received_data - 48; //ASCII to BCD conversion by subtracting 48



endmodule
