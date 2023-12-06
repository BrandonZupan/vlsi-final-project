// kogge stone pre processing

module pre_process (
    input a,
    input b,

    output p,
    output g
);

assign p = a ^ b;
assign g = a & b;

endmodule