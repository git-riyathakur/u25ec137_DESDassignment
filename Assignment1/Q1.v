//Behavioral model
module xor_using_nand (
    input a, 
    input b, 
    output y
);
    wire s1 = ~(a & b); 
    wire s2 = ~(a & s1); 
    wire s3 = ~(b & s1);
    
    assign y = ~(s2 & s3); 
endmodule

//Structural model
module xor_structural (
    input a,
    input b,
    output y
);
    wire w1, w2, w3;

    nand g1 (w1, a, b);
    nand g2 (w2, a, w1);
    nand g3 (w3, b, w1);
    nand g4 (y, w2, w3);

endmodule
