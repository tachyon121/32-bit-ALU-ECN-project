module reciprocal (in, out);
	input [31:0] in;

	output [31:0] out;
	wire [31:0] N0;
	wire [31:0] N1;
	wire [31:0] N2;
	wire [31:0] D;
	assign D = {1'b0, 8'h80, in[22:0]};

	assign out[31] = in[31];
	assign out[22:0] = N2[22:0];
	assign out[30:23] = (D==9'b100000000)? 9'h102 - in[30:23] : 9'h101 - in[30:23];

	

	wire [31:0] C1; //C1 = 48/17
	assign C1 = 32'h4034B4B5;
	wire [31:0] C2; //C2 = 32/17
	assign C2 = 32'h3FF0F0F1;
	wire [31:0] C3; //C3 = 2.0
	assign C3 = 32'h40000000;

	

	//Temporary connection wires
	wire [31:0] S0_2D_out;
	wire [31:0] S1_DN0_out;
	wire [31:0] S1_2min_DN0_out;
	wire [31:0] S2_DN1_out;
	wire [31:0] S2_2minDN1_out;

	wire [31:0] S0_N0_in;

	assign S0_N0_in = {~S0_2D_out[31], S0_2D_out[30:0]};

	//S0
	multiplier S0_2D
	(
		.x1(C2),
		.x2(D),
		.x3(S0_2D_out)
	);

	adder S0_N0
	(
		.x1(C1),
		.x2(S0_N0_in),
		.x3(N0)
	);

	//S1
	multiplier S1_DN0
	(
		.x1(D),
		.x2(N0),
		.x3(S1_DN0_out)
	);

	adder S1_2minDN0
	(
		.x1(C3),
		.x2({~S1_DN0_out[31], S1_DN0_out[30:0]}),
		.x3(S1_2min_DN0_out)
	);

	multiplier S1_N1
	(
		.x1(N0),
		.x2(S1_2min_DN0_out),
		.x3(N1)
	);

	//S2
	multiplier S2_DN1
	(
		.x1(D),
		.x2(N1),
		.x3(S2_DN1_out)
	);

	adder S2_2minDN1
	(
		.x1(C3),
		.x2({~S2_DN1_out[31], S2_DN1_out[30:0]}),
		.x3(S2_2minDN1_out)
	);

	multiplier S2_N2
	(
		.x1(N1),
		.x2(S2_2minDN1_out),
		.x3(N2)
	);

endmodule