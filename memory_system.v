module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output reg [7:0] memory
);
    reg [7:0] data0, data1, data2, data3;
    reg store0, store1, store2, store3;
    wire [7:0] memory0, memory1, memory2, memory3;

    byte_memory byte0(.data(data0), .store(store0), .memory(memory0));
    byte_memory byte1(.data(data1), .store(store1), .memory(memory1));
    byte_memory byte2(.data(data2), .store(store2), .memory(memory2));
    byte_memory byte3(.data(data3), .store(store3), .memory(memory3));

    always @(*) begin
        {data3, data2, data1, data0} = 32'b0;
        {store3, store2, store1, store0} = 4'b0000;

        case (addr)
            2'b00: {data0, store0} = {data, store};
            2'b01: {data1, store1} = {data, store};
            2'b10: {data2, store2} = {data, store};
            2'b11: {data3, store3} = {data, store};
        endcase
    end

    always @(*) begin
        case (addr)
            2'b00: memory = memory0;
            2'b01: memory = memory1;
            2'b10: memory = memory2;
            2'b11: memory = memory3;
            default: memory = 8'bx;
        endcase
    end
endmodule
