module TOP;

    reg [3:0] a;
    reg [3:0] b;
    reg cin;

    wire [3:0] sum;
    wire cout;

    kogge_stone_4 dut (a, b, cin, sum, cout);

    // golden model of an adder
    wire [4:0] fake_add = a + b + cin;
    wire [3:0] sum_g = fake_add[3:0];
    wire cout_g = fake_add[4];

    integer cin_i, a_i, b_i;

    initial begin
        // genvar cin_i, a_i, b_i;
        for (cin_i = 0; cin_i < 2; cin_i = cin_i + 1) begin
            assign cin = cin_i;
            for (a_i = 0; a_i < 16; a_i = a_i + 1) begin
                assign a = a_i;
                for (b_i = 0; b_i < 16; b_i = b_i + 1) begin
                    assign b = b_i;
                    #2;

                    if (sum != sum_g || cout != cout_g) begin
                        $display ("MISMATCH: a = %d, b = %d, cin = %d | sum = %d, cout = %d, sum_g = %d, cout_g = %d\n", a, b, cin, sum, cout, sum_g, cout_g);
                    end
                end
            end
        end
    end

endmodule