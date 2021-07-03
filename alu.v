`include "modules.v"


module alu(clk, x1, x2, OpCode, x3);

	/* Assign wires and registers to the inputs and outputs */

	// input clk
	input 					 clk;

	// input OpCode
	input [2:0] 		  OpCode;

	// input x1
	input [31:0]		  	   x1; 
	wire [7:0]		   e1;
	wire [23:0]        m1;
	reg [31:0]       AdderAInput;
	reg [31:0]  MultiplierAInput;
	reg [31:0] 	   DividerAInput;
	reg [31:0]		   ANDAInput;
	reg [31:0]			ORAInput;
	reg [31:0]		   NOTAInput;
	
	// input x2
	input [31:0]			   x2;
	wire [7:0] 		   e2;
	wire [23:0]        m2;
	reg [31:0]       AdderBInput;
	reg [31:0]  MultiplierBInput;
	reg [31:0]     DividerBInput;
	reg [31:0]		   ANDBInput;
	reg [31:0]			ORBInput;

    // output x3
	output [31:0]        	   x3;
	wire [31:0] 			   x3;
	reg        			   s3;
	reg [7:0]          e3;
	reg [24:0] 		   m3;
	wire [31:0] 	 AdderOutput;
	wire [31:0] MultiplierOutput;
	wire [31:0]    DividerOutput;
	wire [31:0]    	   ANDOutput;
	wire [31:0]    	    OROutput;
	wire [31:0]    	   NOTOutput;


	/* Assign values*/
	
	// x1
	assign SignA = x1[31];
	assign e1[7:0] = x1[30:23];
	assign m1[23:0] = {1'b1, x1[22:0]};
	
	// x2
	assign SignB = x2[31];
	assign e2[7:0] = x2[30:23];
	assign m2[23:0] = {1'b1, x2[22:0]};

	// x3
	assign x3[31] = s3;
	assign x3[30:23] = e3;
	assign x3[22:0] = m3[22:0];

	/* Choose operations based on OpCode (Multiplexing) */
	assign ADD = !OpCode[2] & !OpCode[1] & !OpCode[0];  // 000
	assign SUB = !OpCode[2] & !OpCode[1] &  OpCode[0];  // 001
	assign DIV = !OpCode[2] &  OpCode[1] & !OpCode[0];  // 010
	assign MUL = !OpCode[2] &  OpCode[1] &  OpCode[0];  // 011
	assign AND =  OpCode[2] & !OpCode[1] & !OpCode[0];  // 100
	assign OR  =  OpCode[2] & !OpCode[1] &  OpCode[0];  // 101
	assign NOT =  OpCode[2] &  OpCode[1] & !OpCode[0];  // 110


	/* Connect modules to inputs and corresponding output wires */
	adder A1
	(
		.x1(AdderAInput),
		.x2(AdderBInput),
		.x3(AdderOutput)
	);

	multiplier M1
	(
		.x1(MultiplierAInput),
		.x2(MultiplierBInput),
		.x3(MultiplierOutput)
	);

	divider D1
	(
		.x1(DividerAInput),
		.x2(DividerBInput),
		.x3(DividerOutput)
	);

	AND and1
	(
		.x1(ANDAInput),
		.x2(ANDBInput),
		.x3(ANDOutput)
	);

	OR or1
	(
		.x1(ORAInput),
		.x2(ORBInput),
		.x3(OROutput)
	);

	NOT not1
	(
		.x1(NOTAInput),
		.x2(NOTOutput)
	);


	/* Main logic*/
	always @ (posedge clk) begin
		
		/** Addition **/
		if (ADD) begin
			//If x1 is NaN or x2 is zero return x1
			if ((e1 == 255 && m1 != 0) || (e2 == 0) && (m2 == 0)) begin
				s3 = SignA;
				e3 = e1;
				m3 = m1;
			//If x2 is NaN or x1 is zero return x2
			end else if ((e2 == 255 && m2 != 0) || (e1 == 0) && (m1 == 0)) begin
				s3 = SignB;
				e3 = e2;
				m3 = m2;
			//if x1 or x2 is inf return inf
			end else if ((e1 == 255) || (e2 == 255)) begin
				s3 = SignA ^ SignB;
				e3 = 255;
				m3 = 0;
			end else begin
				AdderAInput = x1;
				AdderBInput = x2;
				s3 = AdderOutput[31];
				e3 = AdderOutput[30:23];
				m3 = AdderOutput[22:0];
			end
		
		/** Subtraction **/
		end else if (SUB) begin
			//If x1 is NaN or x2 is zero return x1
			if ((e1 == 255 && m1 != 0) || (e2 == 0) && (m2 == 0)) begin
				s3 = SignA;
				e3 = e1;
				m3 = m1;
			//If x2 is NaN or x1 is zero return x2
			end else if ((e2 == 255 && m2 != 0) || (e1 == 0) && (m1 == 0)) begin
				s3 = SignB;
				e3 = e2;
				m3 = m2;
			//if x1 or x2 is inf return inf
			end else if ((e1 == 255) || (e2 == 255)) begin
				s3 = SignA ^ SignB;
				e3 = 255;
				m3 = 0;
			end else begin
				AdderAInput = x1;
				AdderBInput = {~x2[31], x2[30:0]};
				s3 = AdderOutput[31];
				e3 = AdderOutput[30:23];
				m3 = AdderOutput[22:0];
			end
		
		/** Division **/
		end else if (DIV) begin
			DividerAInput = x1;
			DividerBInput = x2;
			s3 = DividerOutput[31];
			e3 = DividerOutput[30:23];
			m3 = DividerOutput[22:0];
		
		/** Multiplication **/
		end else if (MUL) begin
			//If x1 is NaN return NaN
			if (e1 == 255 && m1 != 0) begin
				s3 = SignA;
				e3 = 255;
				m3 = m1;
			//If x2 is NaN return NaN
			end else if (e2 == 255 && m2 != 0) begin
				s3 = SignB;
				e3 = 255;
				m3 = m2;
			//If x1 or x2 is 0 return 0
			end else if ((e1 == 0) && (m1 == 0) || (e2 == 0) && (m2 == 0)) begin
				s3 = SignA ^ SignB;
				e3 = 0;
				m3 = 0;
			//if x1 or x2 is inf return inf
			end else if ((e1 == 255) || (e2 == 255)) begin
				s3 = SignA;
				e3 = 255;
				m3 = 0;
			end else begin
				MultiplierAInput = x1;
				MultiplierBInput = x2;
				s3 = MultiplierOutput[31];
				e3 = MultiplierOutput[30:23];
				m3 = MultiplierOutput[22:0];
			end
		
		/** AND **/
		end else if (AND) begin
			ANDAInput = x1;
			ANDBInput = x2;
			s3 = ANDOutput[31];
			e3 = ANDOutput[30:23];
			m3 = ANDOutput[22:0];
	
		/** OR **/
		end else if (OR) begin
			ORAInput = x1;
			ORBInput = x2;
			s3 = OROutput[31];
			e3 = OROutput[30:23];
			m3 = OROutput[22:0];
		
		/** NOT **/
		end else if (NOT) begin
			NOTAInput = x1;
			s3 = NOTOutput[31];
			e3 = NOTOutput[30:23];
			m3 = NOTOutput[22:0];

		end
	end
endmodule