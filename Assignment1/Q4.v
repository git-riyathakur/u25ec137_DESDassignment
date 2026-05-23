//dataflow
module ripple_carry_adder_4bit_dataflow (
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] Sum,
    output Cout
);
    wire [4:0] c;

    assign c[0] = Cin;
    
    // Continuous assignments for Sum and Carry logic
    assign Sum = A ^ B ^ c[3:0];
    assign c[4:1] = (A & B) | (c[3:0] & (A ^ B));
    
    assign Cout = c[4];
endmodule


//Behavioral
module ripple_carry_adder_4bit_behavioral (
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output reg [3:0] Sum,
    output reg Cout
);
    // Triggers whenever any input changes
    always @(*) begin
        {Cout, Sum} = A + B + Cin;
    end
endmodule


//Structural
module full_adder (
    input a, b, cin,
    output sum, cout
);
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (b & cin) | (cin & a);
endmodule
