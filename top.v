`timescale 1ns/1ps

module top(
    input [15:0] sw,
    input btnC,
    output [15:0] led
);
    d_latch part1(
        .D(sw[0]),
        .E(btnC),
        .Q(led[0]),
        .NotQ(led[1])
    );

    memory_system part2(
        .data(sw[15:8]),
        .store(btnC),
        .addr(sw[7:6]),
        .memory(led)
    );
endmodule
