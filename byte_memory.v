module byte_memory #(
    parameter BYTE_WIDTH = 8
)(
    input [BYTE_WIDTH-1:0] data,
    input store,
    output reg [BYTE_WIDTH-1:0] memory
);

    always @(store, data) begin
        if (store)
            memory <= data;
    end
endmodule
