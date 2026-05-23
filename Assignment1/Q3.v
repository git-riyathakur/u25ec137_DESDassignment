// 3 bit Full Adder using Structural 
module full_adder (
    input a, b, cin,
    output sum, cout
);
    wire w1, w2, w3;
    xor g1(w1, a, b);
    xor g2(sum, w1, cin);
    and g3(w2, a, b);
    and g4(w3, w1, cin);
    or g5(cout, w2, w3);
endmodule


module adder_3bit_structural (
    input [2:0] A, B,
    input Cin,
    output [2:0] Sum,
    output Cout
);
    wire c1, c2;
    full_adder fa0 (.a(A[0]), .b(B[0]), .cin(Cin), .sum(Sum[0]), .cout(c1));
    full_adder fa1 (.a(A[1]), .b(B[1]), .cin(c1), .sum(Sum[1]), .cout(c2));
    full_adder fa2 (.a(A[2]), .b(B[2]), .cin(c2), .sum(Sum[2]), .cout(Cout));
endmodule


// Dataflow module
module adder_3bit_dataflow (
    input [2:0] A, B,
    input Cin,
    output [2:0] Sum,
    output Cout
);
    assign {Cout, Sum} = A + B + Cin;
endmodule


//Behavioral module
module adder_3bit_behavioral (
    input [2:0] A, B,
    input Cin,
    output reg [2:0] Sum,
    output reg Cout
);
    always @(*) begin
        {Cout, Sum} = A + B + Cin;
    end
endmodule

