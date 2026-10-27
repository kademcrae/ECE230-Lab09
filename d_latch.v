module d_latch(
    input D, E,
    output reg Q,
    output NotQ
);

    always @(E, D) begin
        if (E)
            Q <= D;
    end

    assign NotQ = ~Q;
endmodule
