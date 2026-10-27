module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output reg [7:0] memory
);
    
    always @(*) begin
        case(addr)
            2'b00: {memory <= data;}
            2'b01: {memory <= data;}
            2'b10: {memory <= data;}
            2'b11: {memory <= data;}
        endcase
    end

    always @(*) begin
        {store3, store2, store1, store0} = 4`b0000;
        
        case (addr)
            2'b00: store0 = store;
            2'b01: store1 = store;
            2'b10: store2 = store;
            2'b11: store3 = store;
        endcase
    end
endmodule
