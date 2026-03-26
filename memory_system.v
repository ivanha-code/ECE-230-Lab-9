module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);
    wire [7:0] dataA, dataB, dataC, dataD ;
    wire storeA, storeB, storeC, storeD ;
    wire [7:0] memoryA, memoryB, memoryC, memoryD ;
    
  DeMuxData Data (
  .data(data),
  .sel(addr),
  .A(dataA),
  .B(dataB),
  .C(dataC),
  .D(dataD)
  );
  
   DeMuxStore Store (
  .store(store),
  .sel(addr),
  .A(storeA),
  .B(storeB),
  .C(storeC),
  .D(storeD)
  );
  
  Mux mux(
  .Y(memory),
  .sel(addr),
  .A(memoryA),
  .B(memoryB),
  .C(memoryC),
  .D(memoryD)
  );
  
  byte_memory A (
  .data(dataA),
  .memory(memoryA),
  .store(storeA)
  );
  byte_memory B (
  .data(dataB),
  .memory(memoryB),
  .store(storeB)
  
  );
  byte_memory C (
  .data(dataC),
  .memory(memoryC),
  .store(storeC)
  
  );
  byte_memory D (
  .data(dataD),
  .memory(memoryD),
  .store(storeD)
  );
  
  
  
  
    endmodule
module DeMuxData (
    input [7:0] data,
    input [1:0] sel,
    output reg [7:0] A,
    output reg [7:0] B,
    output reg [7:0] C,
    output reg [7:0] D
);

    always @(*) begin 
        case(sel) 
            2'b00: {D, C, B, A} <= {8'b0, 8'b0, 8'b0, data}; 
            2'b01: {D, C, B, A} <= {8'b0, 8'b0, data, 8'b0};
            2'b10: {D, C, B, A} <= {8'b0, data, 8'b0, 8'b0};
            2'b11: {D, C, B, A} <= {data, 8'b0, 8'b0, 8'b0};
        endcase
    end

endmodule
module DeMuxStore (
    input store,
    input [1:0] sel,
    output reg  A,
    output reg  B,
    output reg  C,
    output reg  D
);

    always @(*) begin 
        case(sel) 
            2'b00: {D, C, B, A} <= {1'b0, 1'b0, 1'b0, store}; 
            2'b01: {D, C, B, A} <= {1'b0, 1'b0, store, 1'b0};
            2'b10: {D, C, B, A} <= {1'b0, store, 1'b0, 1'b0};
            2'b11: {D, C, B, A} <= {store, 1'b0, 1'b0, 1'b0};
        endcase
    end

endmodule


module Mux (
    input [1:0] sel,
    input [7:0] A,
    input [7:0] B,
    input [7:0] C,
    input [7:0] D,
    output reg [7:0] Y
);

    always @(*) begin 
        case(sel) 
            2'b00: Y <= A ;
            2'b01: Y <= B ;
            2'b10: Y <= C ;
            2'b11: Y <= D ;
        endcase
    end
 endmodule