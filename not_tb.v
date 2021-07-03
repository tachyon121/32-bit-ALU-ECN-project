`timescale 1 ns/1 ps
    `include "alu.v"


    module not_tb ();
        reg clock;
        reg [31:0] x1, x2;
        reg [2:0] op;
        reg [31:0] correct;

        wire [31:0] x3;
        wire [49:0] pro;

        alu U1 (
                .clk(clock),
                .x1(x1),
                .x2(x2),
                .OpCode(op),
                .x3(x3)
            );
        /* create x1 10Mhz clock */
        always
        #100 clock = ~clock; // every 100 nanoseconds invert
        initial begin
            $dumpfile("alu_tb.vcd");
            $dumpvars(0,clock, x1, x2, op, x3);
            clock = 0;

    op = 3'b110;

		/* Display the operation */
		$display ("Opcode: 110, Operation: NOT");
		/* Test Cases!*/
		x1 = 32'b11001101000010101101000001110100;
		correct = 32'b00110010111101010010111110001011;
		#500;
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00110100111010110101000100000011;
		correct = 32'b11001011000101001010111011111100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01010101000101110100110010100011;
		correct = 32'b10101010111010001011001101011100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01110110011001001001011010011111;
		correct = 32'b10001001100110110110100101100000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10010010010001001101111111001010;
		correct = 32'b01101101101110110010000000110101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10001111110100000000100011011001;
		correct = 32'b01110000001011111111011100100110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11111110111111100010000101110100;
		correct = 32'b00000001000000011101111010001011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00100011000110101101001111111000;
		correct = 32'b11011100111001010010110000000111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00001100011110001001111011101010;
		correct = 32'b11110011100001110110000100010101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10001100111001010101000110101001;
		correct = 32'b01110011000110101010111001010110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10010101000010111001011001010110;
		correct = 32'b01101010111101000110100110101001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00100111110011001001111010101000;
		correct = 32'b11011000001100110110000101010111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10011110111000110000111001011100;
		correct = 32'b01100001000111001111000110100011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10010100100000100110011001011001;
		correct = 32'b01101011011111011001100110100110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00011001010001011001010111100011;
		correct = 32'b11100110101110100110101000011100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01111001010000011100101011100101;
		correct = 32'b10000110101111100011010100011010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00111100011101000010010100110000;
		correct = 32'b11000011100010111101101011001111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11111101001101000001011010011101;
		correct = 32'b00000010110010111110100101100010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00100111111010111111111010111011;
		correct = 32'b11011000000101000000000101000100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01101001010010101000110001010101;
		correct = 32'b10010110101101010111001110101010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00001011111110111100110000000010;
		correct = 32'b11110100000001000011001111111101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01110101110010111000111111011010;
		correct = 32'b10001010001101000111000000100101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00111110101111110110010011000000;
		correct = 32'b11000001010000001001101100111111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00100111101010010101000010110001;
		correct = 32'b11011000010101101010111101001110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01001110101010101101110111100011;
		correct = 32'b10110001010101010010001000011100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00100001010000010011010110100100;
		correct = 32'b11011110101111101100101001011011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00101111100010110011000000111101;
		correct = 32'b11010000011101001100111111000010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00100110110000100010011100100110;
		correct = 32'b11011001001111011101100011011001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01011001111111111110010001110100;
		correct = 32'b10100110000000000001101110001011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01010011000111001001101110110111;
		correct = 32'b10101100111000110110010001001000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10001111100010111101000011111001;
		correct = 32'b01110000011101000010111100000110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01001000101011001101110000110000;
		correct = 32'b10110111010100110010001111001111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01111010110011000101001100101101;
		correct = 32'b10000101001100111010110011010010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11010110000000101111001001110110;
		correct = 32'b00101001111111010000110110001001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01010100100100010110001000110010;
		correct = 32'b10101011011011101001110111001101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10101010011011011010010001101100;
		correct = 32'b01010101100100100101101110010011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10001001111111101011000010001111;
		correct = 32'b01110110000000010100111101110000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00011010101001011101000110010110;
		correct = 32'b11100101010110100010111001101001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10100100001000001001111101000101;
		correct = 32'b01011011110111110110000010111010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11000100000111111010111100101000;
		correct = 32'b00111011111000000101000011010111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11110100010010001101111011111010;
		correct = 32'b00001011101101110010000100000101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01101000110100011111010011011101;
		correct = 32'b10010111001011100000101100100010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00100111000111100000111101000011;
		correct = 32'b11011000111000011111000010111100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01101010101111110101100010011111;
		correct = 32'b10010101010000001010011101100000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01001000000101100010011111001001;
		correct = 32'b10110111111010011101100000110110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10010101000011011010100001010111;
		correct = 32'b01101010111100100101011110101000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01011100111000001111111010110101;
		correct = 32'b10100011000111110000000101001010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00010011110101010110111011111011;
		correct = 32'b11101100001010101001000100000100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01111111111100111100111010110101;
		correct = 32'b10000000000011000011000101001010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10110000011010110111111001111100;
		correct = 32'b01001111100101001000000110000011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01011111100011001100001101101100;
		correct = 32'b10100000011100110011110010010011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01101010101010101001011000110111;
		correct = 32'b10010101010101010110100111001000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00110111001011110010101010110010;
		correct = 32'b11001000110100001101010101001101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00010110011101011100000010101000;
		correct = 32'b11101001100010100011111101010111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11010100100010011101000111001110;
		correct = 32'b00101011011101100010111000110001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10011110101101010101101011100010;
		correct = 32'b01100001010010101010010100011101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01001111100001001010111000010000;
		correct = 32'b10110000011110110101000111101111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01100111001110101010010110011000;
		correct = 32'b10011000110001010101101001100111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10101010111100010001111010101001;
		correct = 32'b01010101000011101110000101010110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00001001010110010000011100010010;
		correct = 32'b11110110101001101111100011101101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01010101011110110101101111001010;
		correct = 32'b10101010100001001010010000110101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00100100000011001101111111100101;
		correct = 32'b11011011111100110010000000011010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10110011110000101010111100000000;
		correct = 32'b01001100001111010101000011111111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01100111001001101010010010101010;
		correct = 32'b10011000110110010101101101010101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10000011110111001010011001101011;
		correct = 32'b01111100001000110101100110010100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11010011000100100010100011011000;
		correct = 32'b00101100111011011101011100100111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01000000100101100001001110001110;
		correct = 32'b10111111011010011110110001110001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01111001011000100011010111000011;
		correct = 32'b10000110100111011100101000111100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00111010011101100001101010010110;
		correct = 32'b11000101100010011110010101101001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00001111011000100110101100001000;
		correct = 32'b11110000100111011001010011110111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00111010000111000000101011110110;
		correct = 32'b11000101111000111111010100001001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01100100000000111101001010011000;
		correct = 32'b10011011111111000010110101100111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11010010001011000100101111001101;
		correct = 32'b00101101110100111011010000110010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10100110101010100100001100000111;
		correct = 32'b01011001010101011011110011111000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01110011110000001111011010010101;
		correct = 32'b10001100001111110000100101101010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10101110001000010001110001111100;
		correct = 32'b01010001110111101110001110000011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10010110111001011100101011110101;
		correct = 32'b01101001000110100011010100001010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11000011011111101101011110100100;
		correct = 32'b00111100100000010010100001011011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10111011000001101110000010011100;
		correct = 32'b01000100111110010001111101100011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10010011000011011111001000001100;
		correct = 32'b01101100111100100000110111110011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01110111100010110011011000001000;
		correct = 32'b10001000011101001100100111110111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00101100111000011110111001111111;
		correct = 32'b11010011000111100001000110000000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01010011001011111001000101101000;
		correct = 32'b10101100110100000110111010010111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00011101001100110010110010101000;
		correct = 32'b11100010110011001101001101010111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11100111010000101111101111000111;
		correct = 32'b00011000101111010000010000111000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01110000000001010010000010011110;
		correct = 32'b10001111111110101101111101100001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10010111111100011010111110010110;
		correct = 32'b01101000000011100101000001101001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01110111001101011110101011000001;
		correct = 32'b10001000110010100001010100111110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01100010100010100010000100000101;
		correct = 32'b10011101011101011101111011111010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01011011011110010011000110011110;
		correct = 32'b10100100100001101100111001100001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01101101101101011100101111101100;
		correct = 32'b10010010010010100011010000010011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11010110011000011001001000010010;
		correct = 32'b00101001100111100110110111101101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00010010101010010110101010010000;
		correct = 32'b11101101010101101001010101101111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00011001101000010100011100001001;
		correct = 32'b11100110010111101011100011110110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01100011111100110001110001011010;
		correct = 32'b10011100000011001110001110100101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11000010110010111111011011011100;
		correct = 32'b00111101001101000000100100100011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00000001001111111101101011001101;
		correct = 32'b11111110110000000010010100110010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01001111011011000001010010110000;
		correct = 32'b10110000100100111110101101001111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10001011110001111111101101000101;
		correct = 32'b01110100001110000000010010111010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01010111011010110000110101000001;
		correct = 32'b10101000100101001111001010111110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00110000101100011111111010111110;
		correct = 32'b11001111010011100000000101000001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11100010011010111110001000000101;
		correct = 32'b00011101100101000001110111111010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01110100000101010111001001010010;
		correct = 32'b10001011111010101000110110101101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10001000101001100001010001101101;
		correct = 32'b01110111010110011110101110010010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00111011000100001100010100010000;
		correct = 32'b11000100111011110011101011101111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10100101000101001111000001010101;
		correct = 32'b01011010111010110000111110101010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01010100101110101011101111110011;
		correct = 32'b10101011010001010100010000001100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00011000110111110101111100111100;
		correct = 32'b11100111001000001010000011000011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01101000100001100011011011101001;
		correct = 32'b10010111011110011100100100010110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01010101001010110011010010101111;
		correct = 32'b10101010110101001100101101010000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10000011011000110101011000110110;
		correct = 32'b01111100100111001010100111001001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11100111101001010001100011001011;
		correct = 32'b00011000010110101110011100110100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11111011010101110001101111101011;
		correct = 32'b00000100101010001110010000010100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11010110000001111110001111110111;
		correct = 32'b00101001111110000001110000001000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00111011101100110101011101011111;
		correct = 32'b11000100010011001010100010100000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01111001101101010010101001100100;
		correct = 32'b10000110010010101101010110011011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10000010000011011111100110010111;
		correct = 32'b01111101111100100000011001101000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11001001000000010101000100000010;
		correct = 32'b00110110111111101010111011111101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11000010101111100101001110010101;
		correct = 32'b00111101010000011010110001101010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10101100101100010011011010011000;
		correct = 32'b01010011010011101100100101100111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10101111110100010110100101110011;
		correct = 32'b01010000001011101001011010001100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10001101010000101000000000010100;
		correct = 32'b01110010101111010111111111101011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11011000000010011000001100111110;
		correct = 32'b00100111111101100111110011000001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00010000110000101011101111001111;
		correct = 32'b11101111001111010100010000110000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01000111111111110010001100100000;
		correct = 32'b10111000000000001101110011011111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00111010011101001001100010000110;
		correct = 32'b11000101100010110110011101111001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00110110110100100100001101000110;
		correct = 32'b11001001001011011011110010111001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11111001001100101100101011011001;
		correct = 32'b00000110110011010011010100100110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10001100101000010100000110001011;
		correct = 32'b01110011010111101011111001110100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11011110010100110010110100000000;
		correct = 32'b00100001101011001101001011111111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01011101100000111001110100000010;
		correct = 32'b10100010011111000110001011111101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10000000000111000110010011011100;
		correct = 32'b01111111111000111001101100100011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00100100111000110010101000101111;
		correct = 32'b11011011000111001101010111010000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11010100100011101001100110011011;
		correct = 32'b00101011011100010110011001100100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10100110011000111111111011101101;
		correct = 32'b01011001100111000000000100010010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00110101111101101110001100000011;
		correct = 32'b11001010000010010001110011111100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11101100001011111101011000100101;
		correct = 32'b00010011110100000010100111011010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11110111000011001010101000101001;
		correct = 32'b00001000111100110101010111010110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10001011010100001010011110111111;
		correct = 32'b01110100101011110101100001000000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10101100011100000100110010111110;
		correct = 32'b01010011100011111011001101000001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10101011000111110010000111010010;
		correct = 32'b01010100111000001101111000101101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00111000110010001010110110000011;
		correct = 32'b11000111001101110101001001111100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01001001010011010100000001001011;
		correct = 32'b10110110101100101011111110110100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10011011101101001000000100100010;
		correct = 32'b01100100010010110111111011011101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00110010110110111111011011011101;
		correct = 32'b11001101001001000000100100100010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01011011010011111001101100010010;
		correct = 32'b10100100101100000110010011101101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11101111011111100110001010000110;
		correct = 32'b00010000100000011001110101111001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00011111010100010000010000100001;
		correct = 32'b11100000101011101111101111011110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00101000110011000101001110000101;
		correct = 32'b11010111001100111010110001111010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01001111111010010101111000111001;
		correct = 32'b10110000000101101010000111000110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00100111001101101101101111000011;
		correct = 32'b11011000110010010010010000111100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01111011010011010010111110101001;
		correct = 32'b10000100101100101101000001010110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10010100001011011100000000011100;
		correct = 32'b01101011110100100011111111100011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01001111000110111000110100111110;
		correct = 32'b10110000111001000111001011000001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01110101000110110101010000010100;
		correct = 32'b10001010111001001010101111101011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01101011001011101010010001101101;
		correct = 32'b10010100110100010101101110010010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11001100110001011001111010010111;
		correct = 32'b00110011001110100110000101101000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10011101110111011011110010010001;
		correct = 32'b01100010001000100100001101101110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11111110000010110011111000100001;
		correct = 32'b00000001111101001100000111011110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11011100010110000101011001010000;
		correct = 32'b00100011101001111010100110101111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00011111011010000001001110011001;
		correct = 32'b11100000100101111110110001100110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01010111000100100010110111100011;
		correct = 32'b10101000111011011101001000011100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10111111111100011110000111010101;
		correct = 32'b01000000000011100001111000101010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01010000110110110100000101010101;
		correct = 32'b10101111001001001011111010101010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11110100000101101000001101100110;
		correct = 32'b00001011111010010111110010011001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01001010100111101011111001100001;
		correct = 32'b10110101011000010100000110011110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11101001011100110001111001100111;
		correct = 32'b00010110100011001110000110011000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01100000100011001011110010000010;
		correct = 32'b10011111011100110100001101111101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11000110110110101001110100101001;
		correct = 32'b00111001001001010110001011010110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10010111110101100010101010001111;
		correct = 32'b01101000001010011101010101110000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10000011100110111100010010100110;
		correct = 32'b01111100011001000011101101011001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00110001101011101100010000100001;
		correct = 32'b11001110010100010011101111011110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11011011010010010000100011110101;
		correct = 32'b00100100101101101111011100001010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11010011001111011111000000000101;
		correct = 32'b00101100110000100000111111111010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01110100011110101011011010010111;
		correct = 32'b10001011100001010100100101101000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01100000111110001001011010111010;
		correct = 32'b10011111000001110110100101000101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00100011011011101011010100100010;
		correct = 32'b11011100100100010100101011011101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11110100110110110100011101010010;
		correct = 32'b00001011001001001011100010101101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00101101100101001001110110111000;
		correct = 32'b11010010011010110110001001000111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10110011101111010101011011101010;
		correct = 32'b01001100010000101010100100010101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01100011001011100000101111110000;
		correct = 32'b10011100110100011111010000001111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00101010101100001000101101011001;
		correct = 32'b11010101010011110111010010100110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11000100101010011100111011010011;
		correct = 32'b00111011010101100011000100101100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11010101001101111100110000000101;
		correct = 32'b00101010110010000011001111111010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00000101111101111101000100110010;
		correct = 32'b11111010000010000010111011001101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01101011101001001110000001101100;
		correct = 32'b10010100010110110001111110010011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11010111011000010010010111101001;
		correct = 32'b00101000100111101101101000010110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00001110111100101110111010101000;
		correct = 32'b11110001000011010001000101010111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11001101110000011010001101010000;
		correct = 32'b00110010001111100101110010101111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10000110001001011110011100010010;
		correct = 32'b01111001110110100001100011101101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10001011001101110000001100111101;
		correct = 32'b01110100110010001111110011000010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00000111111110111111000000010010;
		correct = 32'b11111000000001000000111111101101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10101110001001111011100010101010;
		correct = 32'b01010001110110000100011101010101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01100011101110000000101011010110;
		correct = 32'b10011100010001111111010100101001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00010000111011011001001010001111;
		correct = 32'b11101111000100100110110101110000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10110000100010001000011111101011;
		correct = 32'b01001111011101110111100000010100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01110111100100110110000100111111;
		correct = 32'b10001000011011001001111011000000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00111011100000101100100010011000;
		correct = 32'b11000100011111010011011101100111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01101000100000010101010011011010;
		correct = 32'b10010111011111101010101100100101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10111100101101101001000001101010;
		correct = 32'b01000011010010010110111110010101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10010010100010111111111100110101;
		correct = 32'b01101101011101000000000011001010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10011110011110111110100100001001;
		correct = 32'b01100001100001000001011011110110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01011110111001011000001000100111;
		correct = 32'b10100001000110100111110111011000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01111110110010010110101100001111;
		correct = 32'b10000001001101101001010011110000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11111111000101011010101111010110;
		correct = 32'b00000000111010100101010000101001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10010100101000111010111111010010;
		correct = 32'b01101011010111000101000000101101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01101001100010110100100111111011;
		correct = 32'b10010110011101001011011000000100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10001010011011010111100101001110;
		correct = 32'b01110101100100101000011010110001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00100111110011010010111111100100;
		correct = 32'b11011000001100101101000000011011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10101000110100111101010111011100;
		correct = 32'b01010111001011000010101000100011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01111101111010100100001110000000;
		correct = 32'b10000010000101011011110001111111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00110011011010100101111000110011;
		correct = 32'b11001100100101011010000111001100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01111100110000111010101010111111;
		correct = 32'b10000011001111000101010101000000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01110111110100000010010001001010;
		correct = 32'b10001000001011111101101110110101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01000110010111000110110100100100;
		correct = 32'b10111001101000111001001011011011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10010010011001011010010011001100;
		correct = 32'b01101101100110100101101100110011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10100010111110111111010011100100;
		correct = 32'b01011101000001000000101100011011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10100000001110111100110111110110;
		correct = 32'b01011111110001000011001000001001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11111101111011110110001000101101;
		correct = 32'b00000010000100001001110111010010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00110000101100010011010101010110;
		correct = 32'b11001111010011101100101010101001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00011100011001110111000110010111;
		correct = 32'b11100011100110001000111001101000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01001001011101110100000100001110;
		correct = 32'b10110110100010001011111011110001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10010011101110000000100110110010;
		correct = 32'b01101100010001111111011001001101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00111101000110000101110110100011;
		correct = 32'b11000010111001111010001001011100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10100111111011100010001100100111;
		correct = 32'b01011000000100011101110011011000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11101111110001101100001001111100;
		correct = 32'b00010000001110010011110110000011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10100110100010100100001100010000;
		correct = 32'b01011001011101011011110011101111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00000010010010011101101100000100;
		correct = 32'b11111101101101100010010011111011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11101001000001100010111011010010;
		correct = 32'b00010110111110011101000100101101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01111101100111100011100011111100;
		correct = 32'b10000010011000011100011100000011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11001000001100111111000110010110;
		correct = 32'b00110111110011000000111001101001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11001000100000010000110011111100;
		correct = 32'b00110111011111101111001100000011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11101001110111100101101110111110;
		correct = 32'b00010110001000011010010001000001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01000110011000101100011011101010;
		correct = 32'b10111001100111010011100100010101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10001000100001010001110110001010;
		correct = 32'b01110111011110101110001001110101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10101111111101100010110100110000;
		correct = 32'b01010000000010011101001011001111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00100101101010111001101011011001;
		correct = 32'b11011010010101000110010100100110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10000001111100101001100100100001;
		correct = 32'b01111110000011010110011011011110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01101100000001010001101110100110;
		correct = 32'b10010011111110101110010001011001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00000101010100001000010001010000;
		correct = 32'b11111010101011110111101110101111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00011110100010010000010101111010;
		correct = 32'b11100001011101101111101010000101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01110110110001101001110100010101;
		correct = 32'b10001001001110010110001011101010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01100001110101011110111010100110;
		correct = 32'b10011110001010100001000101011001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01100100100111000101011001011010;
		correct = 32'b10011011011000111010100110100101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01001001011100110100011011101100;
		correct = 32'b10110110100011001011100100010011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01110010000011100111100111111010;
		correct = 32'b10001101111100011000011000000101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01000110001101011001110000101000;
		correct = 32'b10111001110010100110001111010111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11000000111110011011010000111100;
		correct = 32'b00111111000001100100101111000011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11110101110000011011111011111110;
		correct = 32'b00001010001111100100000100000001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01001000110010111011100100101100;
		correct = 32'b10110111001101000100011011010011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11000000111111000001110000011100;
		correct = 32'b00111111000000111110001111100011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11110101111001100010001111011100;
		correct = 32'b00001010000110011101110000100011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00110101010100111011110001000101;
		correct = 32'b11001010101011000100001110111010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10000001010001011001010001010101;
		correct = 32'b01111110101110100110101110101010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00011000110101111011000101110110;
		correct = 32'b11100111001010000100111010001001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00010011101100100000011001110110;
		correct = 32'b11101100010011011111100110001001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01100100001001110110011011000111;
		correct = 32'b10011011110110001001100100111000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01101001011000011010011000100010;
		correct = 32'b10010110100111100101100111011101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11001111000110000011111100001011;
		correct = 32'b00110000111001111100000011110100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01011110011110010011001111111101;
		correct = 32'b10100001100001101100110000000010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11100110101011000011011110111010;
		correct = 32'b00011001010100111100100001000101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00011011000001000000000101001101;
		correct = 32'b11100100111110111111111010110010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11110000101010101010000001110011;
		correct = 32'b00001111010101010101111110001100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11111100100101001010010101100100;
		correct = 32'b00000011011010110101101010011011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00101111011001010000011101101110;
		correct = 32'b11010000100110101111100010010001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01001101101011100101101010011110;
		correct = 32'b10110010010100011010010101100001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11010110000000001000100110001100;
		correct = 32'b00101001111111110111011001110011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10110100110000001011111000010011;
		correct = 32'b01001011001111110100000111101100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01101100000110111011100111100111;
		correct = 32'b10010011111001000100011000011000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00001001101100001010110101101111;
		correct = 32'b11110110010011110101001010010000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01111111000101000001010000000101;
		correct = 32'b10000000111010111110101111111010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01111010011011010011001110111100;
		correct = 32'b10000101100100101100110001000011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11110000010000110011111000010010;
		correct = 32'b00001111101111001100000111101101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00110001101100110111001100011111;
		correct = 32'b11001110010011001000110011100000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11110010001110000000000011001110;
		correct = 32'b00001101110001111111111100110001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01000000101001000011010010101010;
		correct = 32'b10111111010110111100101101010101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11111000101000011110000101111011;
		correct = 32'b00000111010111100001111010000100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01100010001001111101010100010001;
		correct = 32'b10011101110110000010101011101110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01100111011010101001011011111101;
		correct = 32'b10011000100101010110100100000010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10000010001000100010000101101000;
		correct = 32'b01111101110111011101111010010111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01011101011101011101000010010100;
		correct = 32'b10100010100010100010111101101011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00101011000100100110001010101101;
		correct = 32'b11010100111011011001110101010010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11111100011110001000100100101111;
		correct = 32'b00000011100001110111011011010000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00100100101111011011111110011111;
		correct = 32'b11011011010000100100000001100000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11100101101101010111010110000110;
		correct = 32'b00011010010010101000101001111001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01100000000011100001011000000100;
		correct = 32'b10011111111100011110100111111011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01001010110001010010110001011010;
		correct = 32'b10110101001110101101001110100101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10010110011010111110000000111001;
		correct = 32'b01101001100101000001111111000110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00111100101011111110111101010110;
		correct = 32'b11000011010100000001000010101001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11000111110100001001010011101111;
		correct = 32'b00111000001011110110101100010000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11010011101100101111000111011110;
		correct = 32'b00101100010011010000111000100001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10101110010101111000010110101101;
		correct = 32'b01010001101010000111101001010010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00000001010101100110001101010001;
		correct = 32'b11111110101010011001110010101110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10101100111100111011100101010111;
		correct = 32'b01010011000011000100011010101000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01011000111001001110111110100011;
		correct = 32'b10100111000110110001000001011100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00101001011110001100111110000001;
		correct = 32'b11010110100001110011000001111110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01111000000010100010110001011001;
		correct = 32'b10000111111101011101001110100110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00000010100010011111001111011111;
		correct = 32'b11111101011101100000110000100000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10001010110010001111011011001111;
		correct = 32'b01110101001101110000100100110000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00010011110011010011111001100100;
		correct = 32'b11101100001100101100000110011011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10011011000011111100001101111001;
		correct = 32'b01100100111100000011110010000110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00101100101000010111100001000001;
		correct = 32'b11010011010111101000011110111110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10110110100011001100011010111110;
		correct = 32'b01001001011100110011100101000001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00100000110110100111011000010000;
		correct = 32'b11011111001001011000100111101111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00100001000011101111001100000110;
		correct = 32'b11011110111100010000110011111001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10001101010000110010100011100001;
		correct = 32'b01110010101111001101011100011110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10100101100010101100100100001101;
		correct = 32'b01011010011101010011011011110010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10001000000101101101110000110110;
		correct = 32'b01110111111010010010001111001001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00001110001111000100000010000101;
		correct = 32'b11110001110000111011111101111010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10010011101100111011001110010010;
		correct = 32'b01101100010011000100110001101101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11010100001011111110111101110110;
		correct = 32'b00101011110100000001000010001001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00110110100111110000001000100000;
		correct = 32'b11001001011000001111110111011111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01010010011100001110110110000001;
		correct = 32'b10101101100011110001001001111110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00111011011111111110010010101000;
		correct = 32'b11000100100000000001101101010111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00011100110110000000010001111110;
		correct = 32'b11100011001001111111101110000001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10111110100000110010011010100001;
		correct = 32'b01000001011111001101100101011110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00001111101010010101101101110111;
		correct = 32'b11110000010101101010010010001000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00010100000010001100001001000011;
		correct = 32'b11101011111101110011110110111100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01100100000011000111010101000011;
		correct = 32'b10011011111100111000101010111100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11001000010000110100100111011100;
		correct = 32'b00110111101111001011011000100011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01110111010011010101001101011001;
		correct = 32'b10001000101100101010110010100110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01000111101111000110010010011110;
		correct = 32'b10111000010000111001101101100001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00000001000001011000000110110110;
		correct = 32'b11111110111110100111111001001001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11010110101000111100001010110001;
		correct = 32'b00101001010111000011110101001110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11010001100111110000011001111001;
		correct = 32'b00101110011000001111100110000110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11100010011100110111001101110111;
		correct = 32'b00011101100011001000110010001000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11111100111000001010111010010010;
		correct = 32'b00000011000111110101000101101101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11110001000100010110010100001000;
		correct = 32'b00001110111011101001101011110111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01000110011110110100010110001011;
		correct = 32'b10111001100001001011101001110100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01001111001000001111100100110011;
		correct = 32'b10110000110111110000011011001100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00000100100001100011001010110110;
		correct = 32'b11111011011110011100110101001001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11110110111010110001110001001011;
		correct = 32'b00001001000101001110001110110100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10000110011110001100101110010000;
		correct = 32'b01111001100001110011010001101111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00001011100000011000011010010010;
		correct = 32'b11110100011111100111100101101101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11000000010001100000001111100000;
		correct = 32'b00111111101110011111110000011111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00011111111000101000111001011001;
		correct = 32'b11100000000111010111000110100110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00110001001001011010110001010001;
		correct = 32'b11001110110110100101001110101110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00000010001010011100000010110010;
		correct = 32'b11111101110101100011111101001101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01001010111010001010000101110010;
		correct = 32'b10110101000101110101111010001101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00111101011001100011000000000010;
		correct = 32'b11000010100110011100111111111101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11101110110110111001001000001100;
		correct = 32'b00010001001001000110110111110011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10111111010000000100011011101111;
		correct = 32'b01000000101111111011100100010000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00100111110101001001001011011011;
		correct = 32'b11011000001010110110110100100100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10101000001010011001011100111101;
		correct = 32'b01010111110101100110100011000010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01010110110101010110110100101001;
		correct = 32'b10101001001010101001001011010110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00111100101001011001110010101000;
		correct = 32'b11000011010110100110001101010111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00011111110110101011010100111000;
		correct = 32'b11100000001001010100101011000111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00100000010010110111100010111100;
		correct = 32'b11011111101101001000011101000011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10000011011011110101001110101111;
		correct = 32'b01111100100100001010110001010000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00011111111111110100000011111100;
		correct = 32'b11100000000000001011111100000011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11110011011111001101010001100010;
		correct = 32'b00001100100000110010101110011101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11011001100100110010000101011101;
		correct = 32'b00100110011011001101111010100010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10000111001111110111011000101100;
		correct = 32'b01111000110000001000100111010011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01110101111100111000010100001100;
		correct = 32'b10001010000011000111101011110011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10010001000100010100010010010100;
		correct = 32'b01101110111011101011101101101011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01110000001100100011000010011011;
		correct = 32'b10001111110011011100111101100100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10011110000110000000111001111010;
		correct = 32'b01100001111001111111000110000101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11101010011011010101000111111100;
		correct = 32'b00010101100100101010111000000011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01101111000001111101010100111000;
		correct = 32'b10010000111110000010101011000111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00111100001110010011110100001001;
		correct = 32'b11000011110001101100001011110110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11101000110111011011101100101010;
		correct = 32'b00010111001000100100010011010101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01101000010010100101100111101011;
		correct = 32'b10010111101101011010011000010100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01110101100010111111010111100111;
		correct = 32'b10001010011101000000101000011000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01111100101111011101011001100111;
		correct = 32'b10000011010000100010100110011000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01111011011100111111110111010101;
		correct = 32'b10000100100011000000001000101010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01010011110101111000000001101101;
		correct = 32'b10101100001010000111111110010010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01010101111111101010101101001110;
		correct = 32'b10101010000000010101010010110001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11110010110011100010111101010101;
		correct = 32'b00001101001100011101000010101010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10111001000010110000001001101001;
		correct = 32'b01000110111101001111110110010110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10011001001000111000011100000000;
		correct = 32'b01100110110111000111100011111111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01111111000001111010100101000101;
		correct = 32'b10000000111110000101011010111010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10111101111010110111011100001000;
		correct = 32'b01000010000101001000100011110111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10110110110101110011000110110010;
		correct = 32'b01001001001010001100111001001101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01110101110001011000111000011100;
		correct = 32'b10001010001110100111000111100011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01000010000111111001001011100111;
		correct = 32'b10111101111000000110110100011000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01001110011011010010001100011101;
		correct = 32'b10110001100100101101110011100010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01110101000011101100110011100001;
		correct = 32'b10001010111100010011001100011110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01011001101000001100101001001010;
		correct = 32'b10100110010111110011010110110101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01100000011111111101101110111100;
		correct = 32'b10011111100000000010010001000011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10110000011110011101010101111101;
		correct = 32'b01001111100001100010101010000010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01010110100011010100011001100001;
		correct = 32'b10101001011100101011100110011110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11110101010010110101000111110010;
		correct = 32'b00001010101101001010111000001101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01100111010111010110001000010010;
		correct = 32'b10011000101000101001110111101101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10011110010010001010100011001011;
		correct = 32'b01100001101101110101011100110100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10101011110000111010001001000111;
		correct = 32'b01010100001111000101110110111000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11000010011110000000010110011101;
		correct = 32'b00111101100001111111101001100010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11101010100100110100011100111010;
		correct = 32'b00010101011011001011100011000101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01101100010110000111001010011001;
		correct = 32'b10010011101001111000110101100110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11100110101111101011010101010111;
		correct = 32'b00011001010000010100101010101000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11010111101111101111111100010100;
		correct = 32'b00101000010000010000000011101011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11001000101011101010001010100000;
		correct = 32'b00110111010100010101110101011111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10100110000011011000101001100110;
		correct = 32'b01011001111100100111010110011001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01001000011000110101011001010111;
		correct = 32'b10110111100111001010100110101000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11110101101001001101101010010010;
		correct = 32'b00001010010110110010010101101101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00011000101100001000000101011111;
		correct = 32'b11100111010011110111111010100000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10011001001110010001110111000100;
		correct = 32'b01100110110001101110001000111011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11100100101011101001111011110000;
		correct = 32'b00011011010100010110000100001111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10011010101100111100101100001100;
		correct = 32'b01100101010011000011010011110011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01010110100010111101011100110001;
		correct = 32'b10101001011101000010100011001110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00001011100111100110111000101101;
		correct = 32'b11110100011000011001000111010010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00101011101110001100001111101000;
		correct = 32'b11010100010001110011110000010111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11000110000011011001111100101110;
		correct = 32'b00111001111100100110000011010001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11000011100001100110111100001001;
		correct = 32'b00111100011110011001000011110110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01101101100001100111101101101000;
		correct = 32'b10010010011110011000010010010111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00001100111011101000100110010000;
		correct = 32'b11110011000100010111011001101111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00100101010101001110011101111011;
		correct = 32'b11011010101010110001100010000100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11101110010100011010010011101011;
		correct = 32'b00010001101011100101101100010100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10000010000010101101010000011011;
		correct = 32'b01111101111101010010101111100100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11101000110011100001101001100101;
		correct = 32'b00010111001100011110010110011010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11000001001010110101001010110010;
		correct = 32'b00111110110101001010110101001101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00001011101110100000100010100010;
		correct = 32'b11110100010001011111011101011101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11101110101110101010110110000111;
		correct = 32'b00010001010001010101001001111000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11100101100000000101000100100110;
		correct = 32'b00011010011111111010111011011001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01111110110101011001000101100001;
		correct = 32'b10000001001010100110111010011110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10100011100111011110001111011011;
		correct = 32'b01011100011000100001110000100100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00110100110011101001101101111001;
		correct = 32'b11001011001100010110010010000110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00110010001110001101000111110100;
		correct = 32'b11001101110001110010111000001011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10101101100101100101011111100101;
		correct = 32'b01010010011010011010100000011010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10001001011111100010010110010101;
		correct = 32'b01110110100000011101101001101010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00101000101011111000100011011001;
		correct = 32'b11010111010100000111011100100110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00010011101000111111110010011101;
		correct = 32'b11101100010111000000001101100010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00000100111110010010000001011100;
		correct = 32'b11111011000001101101111110100011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00101011110110010010000101101101;
		correct = 32'b11010100001001101101111010010010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11000000000001000001111010001010;
		correct = 32'b00111111111110111110000101110101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11101111101010001111101000101000;
		correct = 32'b00010000010101110000010111010111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01110101111010000110011001100100;
		correct = 32'b10001010000101111001100110011011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01010101111111111001011100011101;
		correct = 32'b10101010000000000110100011100010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10110011100000100010110110100010;
		correct = 32'b01001100011111011101001001011101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00010110010101001000110000100100;
		correct = 32'b11101001101010110111001111011011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00111010111111010110100100110110;
		correct = 32'b11000101000000101001011011001001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10000000110111100101111101001101;
		correct = 32'b01111111001000011010000010110010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01101101100110100000010010111111;
		correct = 32'b10010010011001011111101101000000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11100000111111110100111011000010;
		correct = 32'b00011111000000001011000100111101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00110111000000101001100000001010;
		correct = 32'b11001000111111010110011111110101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11110101011011011011110101001100;
		correct = 32'b00001010100100100100001010110011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01111101101001000011101111000000;
		correct = 32'b10000010010110111100010000111111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00101000011110110000010110110111;
		correct = 32'b11010111100001001111101001001000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11101100000000110101110011101000;
		correct = 32'b00010011111111001010001100010111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11111101101001010100101010001001;
		correct = 32'b00000010010110101011010101110110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01110100111000000110110110110011;
		correct = 32'b10001011000111111001001001001100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10010111011111110100111010110110;
		correct = 32'b01101000100000001011000101001001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00100110100111111011000000111011;
		correct = 32'b11011001011000000100111111000100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11011100101011100010011011011101;
		correct = 32'b00100011010100011101100100100010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01101001110000111000010101101010;
		correct = 32'b10010110001111000111101010010101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00010110011010010110111011111110;
		correct = 32'b11101001100101101001000100000001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10100001111001011010101000111110;
		correct = 32'b01011110000110100101010111000001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11001100100111100101100101111111;
		correct = 32'b00110011011000011010011010000000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10101110011001010110011101111010;
		correct = 32'b01010001100110101001100010000101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00101010000110110100011000000110;
		correct = 32'b11010101111001001011100111111001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11011010110100100110000011111111;
		correct = 32'b00100101001011011001111100000000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11101001011001010001110000110110;
		correct = 32'b00010110100110101110001111001001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11011100011110001000100101010101;
		correct = 32'b00100011100001110111011010101010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01111110101001001100110100111010;
		correct = 32'b10000001010110110011001011000101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00010011011001100001111111110110;
		correct = 32'b11101100100110011110000000001001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00101010001101101101010101000110;
		correct = 32'b11010101110010010010101010111001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10111111111101100001110101100011;
		correct = 32'b01000000000010011110001010011100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10101110101111101110010001000110;
		correct = 32'b01010001010000010001101110111001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10011000000001100000000110111001;
		correct = 32'b01100111111110011111111001000110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00010000110011101000100101000110;
		correct = 32'b11101111001100010111011010111001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01111111110111000100000101000000;
		correct = 32'b10000000001000111011111010111111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01001110010001000100111110110111;
		correct = 32'b10110001101110111011000001001000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01000000011100001010101100010011;
		correct = 32'b10111111100011110101010011101100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10111110101010000101001100011011;
		correct = 32'b01000001010101111010110011100100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10101111110000111011101100100111;
		correct = 32'b01010000001111000100010011011000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01111101010010000100110000100011;
		correct = 32'b10000010101101111011001111011100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10000000010101010000001010111011;
		correct = 32'b01111111101010101111110101000100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01001110011110010100101101111111;
		correct = 32'b10110001100001101011010010000000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10010001000111000011000011000000;
		correct = 32'b01101110111000111100111100111111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10100111011111101011011001100101;
		correct = 32'b01011000100000010100100110011010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01011111000110101111000100110100;
		correct = 32'b10100000111001010000111011001011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01100100110101100010010100100010;
		correct = 32'b10011011001010011101101011011101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10101000001100001000010111000101;
		correct = 32'b01010111110011110111101000111010;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01101101000111101011100000100110;
		correct = 32'b10010010111000010100011111011001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01111010001010100011101100011010;
		correct = 32'b10000101110101011100010011100101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11011000001100000000010100001111;
		correct = 32'b00100111110011111111101011110000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00010010011100101100010100011011;
		correct = 32'b11101101100011010011101011100100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10110101100010100000010010011111;
		correct = 32'b01001010011101011111101101100000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01100000011010110010001110100001;
		correct = 32'b10011111100101001101110001011110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11011110100000001000011111100100;
		correct = 32'b00100001011111110111100000011011;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11101100010010101111001101010011;
		correct = 32'b00010011101101010000110010101100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00100111000110011101101110000110;
		correct = 32'b11011000111001100010010001111001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11110010011110011101000101101010;
		correct = 32'b00001101100001100010111010010101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00010101001011101100101001001111;
		correct = 32'b11101010110100010011010110110000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10101001100001100010010000000111;
		correct = 32'b01010110011110011101101111111000;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00000100111011111101100000111000;
		correct = 32'b11111011000100000010011111000111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11111111000011001101101111110011;
		correct = 32'b00000000111100110010010000001100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11101111101010001001110101100001;
		correct = 32'b00010000010101110110001010011110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11101101011001111100101101110001;
		correct = 32'b00010010100110000011010010001110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01010010110011111100001000011001;
		correct = 32'b10101101001100000011110111100110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10001111101100101110000000000110;
		correct = 32'b01110000010011010001111111111001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00010111011011000101001111001010;
		correct = 32'b11101000100100111010110000110101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01100100000001001000111010111001;
		correct = 32'b10011011111110110111000101000110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11010110100101001111101011101001;
		correct = 32'b00101001011010110000010100010110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b10000111101001100000110000001001;
		correct = 32'b01111000010110011111001111110110;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00000111011010011110100000111011;
		correct = 32'b11111000100101100001011111000100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11111110011000001111001110001110;
		correct = 32'b00000001100111110000110001110001;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11100010101111011000001011010011;
		correct = 32'b00011101010000100111110100101100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b00111011000001000111011110000010;
		correct = 32'b11000100111110111000100001111101;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01100101011110111001001100001011;
		correct = 32'b10011010100001000110110011110100;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b01000101010100010100110011111000;
		correct = 32'b10111010101011101011001100000111;
 #500; 
 			end 
 begin
			$display ("x1      : %x2 %x2 %x2", x1[31], x1[30:23], x1[22:0]);
			$display ("Output : %x2 %x2 %x2", correct[31], correct[30:23], correct[22:0]);
		x1 = 32'b11100010000010010100111101101100;
		correct = 32'b00011101111101101011000010010011;
 #500; 
 			end 
end
endmodule