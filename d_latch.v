module d_latch(
    input D, Enable,
    output reg Q, 
    output NotQ
);

 always @(*) begin 
        if (Enable)
            Q <= D;
    end
    assign NotQ = ~Q; 

endmodule
