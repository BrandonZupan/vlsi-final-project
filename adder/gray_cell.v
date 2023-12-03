// are you telling me a gray this cell]

module gray_cell (
    input p_i,
    input g_i,

    // input p_prev,
    input g_prev,

    output g
);

wire and_out;
assign and_out = p_i & g_prev;

assign g = and_out | g_i;

endmodule