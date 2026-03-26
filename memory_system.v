module memory_system(
    input [7:0] data_in,   
    input [1:0] address,   
    input store_btn,       
    output [7:0] data_out  
);
    wire [7:0] mem0_out;
    wire [7:0] mem1_out;
    wire [7:0] mem2_out;
    wire [7:0] mem3_out;
    wire en0, en1, en2, en3;
    
    byte_memory byte0 (.data(data_in), .store(en0), .memory(mem0_out));
    byte_memory byte1 (.data(data_in), .store(en1), .memory(mem1_out));
    byte_memory byte2 (.data(data_in), .store(en2), .memory(mem2_out));
    byte_memory byte3 (.data(data_in), .store(en3), .memory(mem3_out));

    demux_1to4 store_router (
        .sel_in(store_btn),
        .sel(address),
        .out0(en0), .out1(en1), .out2(en2), .out3(en3)
    );
    
    mux_4to1 #(.WIDTH(8)) display_selector (     //.WIDTH(8) makes it 8 bit if you want 1 bit just change 8 to 1   or 16 so just replace 8 with 16
        .in0(mem0_out), .in1(mem1_out), .in2(mem2_out), .in3(mem3_out),
        .sel(address),
        .out(data_out)
    );
    
  
endmodule
