module HalfAdder(a1,b1,sum,carry);
input a1,b1;
output sum,carry;
xor(sum,a1,b1);
and(carry,a1,b1);
endmodule

module FullAdder(a2,b2,Ci,Co,S);
input a2,b2,Ci;
output Co,S;
wire w1,w2,w3,w4;
and G1(w1,a2,b2);
and G2(w2,a2,Ci);
and G3(w3,b2,Ci);
or G4(Co,w1,w2,w3);
 xor G5(w4,a2,b2);
xor G6(S,w4,Ci);
endmodule

module twobitadder(a3,b3,c1,su1,su2);
input [1:0] a3,b3;
input c1;
output su1,su2;
wire c2;
wire u1;
FullAdder unit1(a3[0],b3[0],ci,u1,su2);
FullAdder unit2(a3[1],b3[1],u1,c2,su1);
endmodule


module threebythree(in1,in2,out);
input [2:0] in1,in2;
output [5:0] out;
wire v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15;

and g1(out[0],in1[0],in2[0]);
and g2(v1,in1[1],in2[0]);
and g3(v2,in1[0],in2[1]);
and g4(v3,in1[0],in2[2]);
and g5(v4,in1[1],in2[1]);
and g6(v5,in1[2],in2[0]);
and g7(v6,in1[2],in2[1]);
and g8(v7,in1[1],in2[2]);
and g9(v8,in1[2],in2[2]);

HalfAdder ha1(v1,v2,out[1],v9);
FullAdder fa1(v3,v4,v5,v10,v11);
HalfAdder ha2(v6,v7,v12,v13);
twobitadder ba1(v10,v11,v9,v14,out[2]);
twobitadder ba2(v12,v13,v14,v15,out[3]);
twobitadder ba3(v15,v8,v12,out[5],out[4]);
endmodule

module sixbitCarryLookAhead( A , B, incarry , outcarry , sum);
input [5:0] A,B ;
input incarry ;
output outcarry ;
output [5:0] sum;

wire [5:0] G,P,C ;
wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15, w16, w17, w18, w19, w20, w21;
genvar i ;

for( i=0 ; i<6; i=i+1 )begin
and (G[i],A[i],B[i]) ;
xor ( P[i] , A[i],B[i] );
end

buf(C[0], incarry);
and(w1, P[0], incarry);
or (C[1], w1, G[0]);

 
and(w2, P[1], G[0]);
and(w3, P[1], P[0], incarry);
or(C[2], G[1], w2, w3);


and(w4, P[2], G[1]);
and(w5, P[2], P[1], G[0]);
and(w6, P[2], P[1], P[0], incarry);
or(C[3], G[2], w4, w5, w6);


and(w7, P[3], G[2]);
and(w8, P[3], P[2], G[1]);
and(w9, P[3], P[2], P[1], G[0]);
and(w10, P[3], P[2], P[1], P[0], incarry);
or(C[4], G[3], w7, w8, w9,w10);
 
and(w11, P[4], G[3]);
and(w12, P[4], P[3], G[2]);
and(w13, P[4], P[3], P[2], G[1]);
and(w14, P[4], P[3], P[2], P[1], G[0]);
and(w15, P[4], P[3], P[2], P[1], P[0], incarry);
or(C[5], G[4], w11, w12, w13, w14, w15);

and(w16, P[5], G[4]);
and(w17, P[5], P[4], G[3]);
and(w18, P[5], P[4], P[3], G[2]);
and(w19, P[5], P[4], P[3], P[2], G[1]);
and(w20, P[5], P[4], P[3], P[2], P[1], G[0]);
and(w21, P[5], P[4], P[3], P[2], P[1], P[0], incarry); 
or(outcarry, G[5], w16, w17, w18, w19, w20, w21);

genvar j;
for(j=0; j<6; j = j+1) begin 
xor(sum[j], P[j], C[j]);
end 
endmodule

module twelvebitcla( A,B,incarry, outcarry, sum);

input [11:0] A,B;
input incarry;
output outcarry;
output [11:0] sum;
wire w1;
sixbitCarryLookAhead Z1 (A[5:0], B[5:0], incarry, w1, sum[5:0]);
sixbitCarryLookAhead Z2 (A[11:6], B[11:6], w1, outcarry, sum[11:6]);
endmodule 

module bit24cla(A,B,incarry, outcarry, sum);
input [23:0] A,B;
input incarry;
output outcarry;
output [23:0] sum;
wire w1;
twelvebitcla Z3 (A[11:0], B[11:0], incarry, w1, sum[11:0]);
twelvebitcla Z4 (A[23:12], B[23:12], w1, outcarry, sum[23:12]);
endmodule

module sixbysix(in1, in2, out);
input [5:0] in1, in2;
output [11:0] out;
wire [5:0] w1, w2, w3, w4;
wire [8:0] s1,s2;
threebythree u1(in1[2:0], in2[2:0],w1[5:0]);
threebythree u2(in1[2:0], in2[5:3],w2[5:0]);
threebythree u3(in1[5:3], in2[2:0],w3[5:0]);
threebythree u4(in1[5:3], in2[5:3],w4[5:0]);
assign s1[2:0]=w1[2:0];
assign s1[8:3]=w1[5:3]+w2[5:0];

assign s2[2:0]=w3[2:0];
assign s2[8:3]=w3[5:3]+w4[5:0];

assign out[2:0]=s1[2:0];
assign out[11:3]=s1[8:3]+s2[8:0];

endmodule

module twelvex(in1, in2, out);
input [11:0] in1, in2;
output [23:0] out;
wire [11:0] w1, w2, w3, w4;
wire [17:0] s1,s2;
sixbysix u1(in1[5:0], in2[5:0],w1[11:0]);
sixbysix u2(in1[5:0], in2[11:6],w2[11:0]);
sixbysix u3(in1[11:6], in2[5:0],w3[11:0]);
sixbysix u4(in1[11:6], in2[11:6],w4[11:0]);
assign s1[5:0]=w1[5:0];
assign s1[17:6]=w1[11:6]+w2[11:0];

assign s2[5:0]=w3[5:0];
assign s2[17:6]=w3[11:6]+w4[11:0];

assign out[5:0]=s1[5:0];
assign out[23:6]=s1[17:6]+s2[17:0];

endmodule

module vedic(in1,in2,out);
input [23:0] in1, in2;
output [47:0] out;
wire [23:0] w1, w2, w3, w4;
wire [11:0] s1,s2,s3;
wire c1,c2,c3,c4,c5,c6;
twelvex u1(in1[11:0], in2[11:0],w1[23:0]);
twelvex u2(in1[11:0], in2[23:12],w2[23:0]);
twelvex u3(in1[23:12], in2[11:0],w3[23:0]);
twelvex u4(in1[23:12], in2[23:12],w4[23:0]);

bit24cla b1(w2[11:0],w3[11:0],0,c1,s1[11:0]);
assign out[11:0]=w1[11:0];
bit24cla b2(s1[11:0],w1[23:12],0,c2,out[23:12]);
bit24cla b3(w2[23:12],w3[23:12],0,c3,s2[11:0]);
HalfAdder h1(c1,c2,c5,c6);
bit24cla b4(s2[11:0],w4[11:0],c5,c4,out[35:24]);
assign out[47:36]=w4[23:12]+c3+c4+c6;

endmodule

module multiplier(x1,x2,x3);
input [31:0] x1,x2;
output [63:0] x3;
reg s1,s2,s3,e1,e2,e3,m1,m2,m3;

assign s1=x1[31];
assign s2=x2[31];
assign e1=x1[30:23];
assign e2=x2[30:23];
assign m1=x1[22:0];
assign m2=x2[22:0];

xor g1(s3,s1,s2);
assign e3=e1+e2-8'b01111110;
vedic v1(m1,m2,m3);

assign x3[31] = s3;
assign x3[30:23] = e3;
assign x3[22:0] = m3[22:0];

endmodule
