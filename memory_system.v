module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output wire [15:0] memory
);
    genvar i;

    reg in_store[3:0];
    reg [7:0] in_data[3:0];
    wire [7:0] in_mem[3:0];

    generate
        for (i = 0; i < 4; i = i + 1) begin : byte_slots
            always @(*) begin
                in_data[i] = 8'b0;
                in_store[i] = 1'b0;
                if (addr == i) begin
                    in_data[i] = data;
                    in_store[i] = store;
                end
            end

            byte_memory slot(
                .data(in_data[i]),
                .store(in_store[i]),
                .memory(in_mem[i])
            );
        end
    endgenerate
endmodule
