module byte_memeory(
  input [7:0] data,
  input store,
  output [7:0] memory
);

genvar i;

generate
  for (i = 0; i < 8; i = i + 1) begin : latch_generation // makes d latch 8  times for 8 bits
        d_latch bit_latch (
                .D(data[i]),    
                .E(store),      
                .Q(memory[i]),  
                .NotQ()         
            );
      end
  endgenerate
endmodule
