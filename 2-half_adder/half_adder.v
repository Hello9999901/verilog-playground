module sample (A,B,S,C);

    input A;
    input B;

    output S;
    output C;

    xor g1(S, A, B);
    and g2(C, A, B);

endmodule