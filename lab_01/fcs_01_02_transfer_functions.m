%% EXAMPLE 1 - TRANSFER FUNCTION DECOMPOSITION
%   Obtain the partial fractions of the function F(s) = (s+1)/(s^2+2s+1)
clear all; close all; clc; 

p_numer = [1, 1];
p_denom = [1, 1, 1];
[residues, poles, konsts] = residue(p_numer, p_denom);

% Find the resideues, poles, and direct terms of a partial expansion

% Output the result to console for verification
residues
poles
konsts
%% EXAMPLE 2 - CREATING A TRANSFER FUNCCTION
%   Define the following transfer function G(s) = 5(s)(s+1)(s+2)/(s)(s+3)(s^2+4s+8)
clear all; close all; clc;

% Defining numerator and denominator
g_numer = 5 * conv([1, 0], conv([1,1], [1,2]));
g_denom = conv([1, 0], conv([1,3], [1,4,8]));

% Creating transfer function
sys_tf = tf(g_numer, g_denom)

%% EXAMPLE 3 - PLOTTING POLES AND ZEROES OF TRANSFER FUNCTIONS
%   F(s) = (2s^2 + 8s + 6)/(s^4 + 6s^3 + 12s^2 + 24s)
close all; clear all; clc;

sys_numer = [2, 8, 6];
sys_denom = [1, 6, 12, 24, 0];
[residues, poles, konsts] = tf2zp(sys_numer, sys_denom)

% Plotting transfer functions pole-zero map
pzmap(sys_numer, sys_denom)

%% EXAMPLE 4 - PLOTTING TRANSFER FUNCTION FROM ZEROES, POLES, and GAIN
close all; clear all; clc;
zeroes = [-3; -1];
poles = [0; -4.5198; -0.7401 + 2.1882j; -0.7401 - 2.1882j];
k = 2;
[numer, denom] = zp2tf(zeroes, poles, k);

% prints transfer function as a ratio of two polynomials in the transform
% variable s
printsys(numer, denom, 's') 

%% EXAMPLE 5 - FIND THE LAPLACE TRANSFORM OF f(t) = e^(-t).(1-sin(t))
clear all; close all; clc;
syms t % define a symbolic variable `t` to use in defining a function
f_t = exp(-t) * (1 - sin(t));
F_s = laplace(f_t)

%% EXAMPLE 6 - FIND THE INVERSE LAPLACE TRANSFORM OF THE GIVEN FUNCTION
%   F(s) = 1/(s+4)
clear all; close all; clc;

% Defining symbolic objects for Laplace transform variable `s` and time `t`
syms t s;

% Defining laplace transform in terms of s
F_s = 1 / (s + 4);

% Computing inverse Laplace transform
f_t = ilaplace(F_s)
