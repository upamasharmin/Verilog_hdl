module comparator
(
    input A,
    input B,
    input C,
    input D,
    input E,
    output Z
);

wire B_,D_,E_,P,Q;
not(B_,B);
not(D_,D);
not(E_,E);
and(P,A,B_,C,D_,E_);
and(Q,A_,B,C);
or(Z,P,Q);

endmodule
