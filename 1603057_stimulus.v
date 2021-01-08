`timescale 1ns / 1ps
module stimulus;
reg A;
reg B;
reg C;
reg D;
reg E;
wire Z;
comparator  uut
(
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .E(E),
    .Z(Z)

);
initial begin 
$dumpfile("test.vcd");
$dumpvars(0,stimulus);
    A=0; B=0; C=0; D=0; E=0;
    #5
    A=0; B=0; C=0; D=0; E=1;
    #5
    A=0; B=0; C=0; D=1; E=1;
    #5
    A=0; B=0; C=1; D=1; E=1;
    #5
    A=0; B=1; C=1; D=1; E=1;
    #5
    A=1; B=1; C=1; D=1; E=1;
    #5
    A=1; B=0; C=0; D=0; E=0;
    #5
    A=1; B=0; C=1; D=0; E=0;
    #5
    A=1; B=0; C=1; D=0; E=1;
    #5
    A=1; B=0; C=1; D=1; E=1;
    #10;
end
initial begin
$monitor("A=%d,B=%d,C=%d,D=%d,E=%d,Z=%d \n",A,B,C,D,E,Z);
end
endmodule