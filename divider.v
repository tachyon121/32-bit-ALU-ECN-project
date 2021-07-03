module divider (x1, x2, x3);
	// Inputs
	input [31:0] x1;
	input [31:0] x2;

	// Outputs
	output [31:0] x3;

	// Wires
	wire [31:0] Reciprocal_x2;

	/* Connect modules to inputs and corresponding output wires */
	reciprocal recip
	(
		.in(x2),
		.out(Reciprocal_x2)
	);

	multiplier mult
	(
		.x1(x1),
		.x2(Reciprocal_x2),
		.x3(x3)
	);
endmodule