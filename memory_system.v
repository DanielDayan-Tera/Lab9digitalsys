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


  
endmodule
