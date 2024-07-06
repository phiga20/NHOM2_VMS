module prng_lfsr_128bit 
//#(
//    parameter integer clk_n = 8
//)
(
    input i_clk,
    input i_rst,
    input [127:0] i_seed,
    output [127:0] o_lfsr,
    output o_keystream
);

wire lck_reg;
//wire [127:0] lfsr_reg;
//wire keystream_reg;

div_clk  DIV (
    .i_clk(i_clk),
    .o_clk(lck_reg)
);

lfsr_128bit LFSR_128bit (
    .i_clk(lck_reg),
    .i_reset(i_rst),
    .i_seed(i_seed),
    .o_lfsr(o_lfsr),
    .o_keystream(o_keystream)
);

//assign o_lfsr = lfsr_reg;
//assign o_keystream = keystream_reg;

endmodule
