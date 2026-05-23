// 2-bit Comparator using Continuous Assignment
module comparator_2bit_dataflow (
    input [1:0] A, 
    input [1:0] B, 
    output A_gt_B, 
    output A_lt_B,
    output A_eq_B
);
    assign A_gt_B = (A > B);
    assign A_lt_B = (A < B);
    assign A_eq_B = (A == B);

endmodule

// 2-bit Comparator using Procedural Statements
module comparator_2bit_behavioral (
    input [1:0] A, B,
    output reg A_gt_B, A_lt_B, A_eq_B 
);
    // Logic inside always block
    always @(*) begin
        if (A > B) begin
            A_gt_B = 1; A_lt_B = 0; A_eq_B = 0;
        end else if (A < B) begin
            A_gt_B = 0; A_lt_B = 1; A_eq_B = 0;
        end else begin
            A_gt_B = 0; A_lt_B = 0; A_eq_B = 1;
        end
    end
endmodule
mv Q2.v Assignment1
git add.
git commit -m "Moved Q2.v to Assignment1"
git push
