module demux_1to4(
    input sel_in,          
    input [1:0] sel,       
    output reg out0,       
    output reg out1,       
    output reg out2,       
    output reg out3       
);
always @(*) begin
        out0 = 0;
        out1 = 0;
        out2 = 0;
        out3 = 0;
    case(sel)
            2'b00: out0 = sel_in;
            2'b01: out1 = sel_in;
            2'b10: out2 = sel_in;
            2'b11: out3 = sel_in;
            default: ; // Do nothing
        endcase
    end

endmodule
