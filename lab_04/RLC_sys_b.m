function dXdt = RLC_sys_b(t, X)
e = 60;                 % supply voltage in volts
R1 = 10;                % in ohms
R2 = 10;                
L1 = 1;                 % in Henries
L2 = 1;                 % in Henries
C = 10;                 % in Farads

% dXdt = [di1/dt; di2/dt; dv3/dt]
% X = [i1; i2; v3] = [L1 current; L2 current; C voltage]
dXdt(1, 1) = e/L1 - X(1) * (R1 / L1) - X(3) / L1;
dXdt(2, 1) = X(3)/L2 - X(2) * (R2 / L2);
dXdt(3, 1) = X(1)/C - X(2) / C;