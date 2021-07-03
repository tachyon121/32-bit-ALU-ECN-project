module NOT(x1, x2);
    // Inputs
    input[31:0]x1;

    // Outputs
    output reg[31:0]x2;

    // Main
    always@(x1)
    begin
        // x3 is logical NOT of x1
        x2 = !x1;
    end
endmodule