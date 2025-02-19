`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/03/2024 10:07:31 AM
// Design Name: 
// Module Name: alu_4
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


module alu_4(
    input [3:0] a,b,
    input [2:0] s,
    output reg[3:0] result
    );
    always@(*)
    begin
        case(s)
        3'b000:result=a+b;
        3'b001:result=a-b;
        3'b010:result=a<<1;
        3'b011:result=a>>1;
        3'b100:result=a^b;
        3'b101:result=a&b;
        3'b110:result=a|b;
        3'b111:result=~(a^b);
        default:result=4'b0000;
       endcase
      end
endmodule
