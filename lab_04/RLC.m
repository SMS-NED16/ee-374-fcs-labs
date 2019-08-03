function dXdt=RLC(t,X)
e=50;  R=100;  L=10;  C=1;
dXdt(1,1)=(-1/R*C)*X(1)+(1/C)*X(2);
dXdt(2,1)=(-1/L)*X(1)+(1/L)*e;
