
function dXdt=mass_spring(t,X)
 
M=750; % (Kg) 
B=15; % (Nsec/m) 
Fa=300; % (N) 
K=15; % (N/m) 
r=1; % dX/dt 
dXdt(1,1)=X(2); 
dXdt(2,1)=-B/M*X(2)-K/M*X(1)^r+Fa/M;
