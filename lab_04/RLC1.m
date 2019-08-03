function dXdt=RLC1(t,X)
e=60;  R=10;  L=1;  C=100;
dXdt(1,1)=(1/C)*X(2);
dXdt(2,1)=(-1/L)*X(1)-(R/L)*X(2)+(1/L)*e;