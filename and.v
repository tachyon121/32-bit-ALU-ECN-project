module AND(x1, x2, x3);
    // Inputs
    input[31:0]x1;
    input[31:0]x2;

    // Outputs
    output reg[31:0]x3;

    // Logic
    always@(x1, x2)
        // x3 is bitwise AND of (x1, x2)
        x3 = x1 & x2;
endmodule