// final summation step

module sum (
    input p_i,
    input g_prev,

    output s
);

// pi XOR gi-1

assign s = p_i ^ g_prev;

endmodule