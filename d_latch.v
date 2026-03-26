module d_latch(
  input D,
  input E,
  output reg Q,
  output NotQ
);
  always @(E, D) begin
    if(E) begin
      Q<=D;
    end
  end

  assign NotQ = ~Q;
endmodule
