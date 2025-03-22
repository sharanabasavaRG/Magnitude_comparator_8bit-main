// Code your design here

module magnitude_comparator_8bit (
    input  [7:0] A, B,
    output A_greater, A_less, A_equal
);
    
    assign A_greater = (A > B) ? 1 : 0;
    assign A_less    = (A < B) ? 1 : 0;
    assign A_equal   = (A == B) ? 1 : 0;
    
endmodule
