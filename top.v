
module top(
    input [15:0] sw,     
    input btnC,          
    output [15:0] led   
);
  
  d_latch single_bit_memory (
        .D(sw[0]),
        .E(btnC),
        .Q(led[0]),
        .NotQ(led[1])
    );

  memory_system four_byte (
      .data_in(sw[15:8]),
      .address(sw[7:6]),
      .store_btn(btnC),
      .data_out(led[15:8])
  );

endmodule
