%% SECTION 1 - Polynomials in MATLAB
% polynomials are represented by row vectors containing coefficients
% ordered by descending powers
p1 = [1, 0, -2, -5];   % p(x) = x^3 - 0x^2 - 2x - 5

% Roots of the polynomial are returned by `roots` as an array
p1_roots = roots(p1);

% Echo roots to console
p1_roots

% Use the `poly` function to return coefficients from roots
p1_from_roots = poly(p1_roots)

% p1_from_roots = [1.0, 0, -2.0, -5.0] 
% p1_from_roots = x^3 - 0x^2 -2x -5 

% Use the `polyval` function to evaluate value of polynomial at given point
% assume polynomial is s^3 - 0s^2 - 2s - 5 = f(s) 
% So to evaluate f(s) when s = 5
p1_5 = polyval(p1, 5) % 110
%% SECTION 2 - CONVOLUTION AND DECONVOLUTION
% Convolution - multiplication of polynomials 
% Deconvolution - division of polynomials 
p_A = [ 1, 2, 3 ];  % 1x^2 + 2x + 3 = f_a(x)
p_B = [ 4, 5, 6 ];  % 4x^2 + 5x + 6 = f_b(x)

% Product of f_a(x) and f_b(x) given by
prod_AB = conv(p_A, p_B)

% Deconv returns the quotient and the remainder after poly division
[pAB_quotient, pAB_remainder] = deconv(prod_AB, p_A)
[PAB_quotient, pAB_remainder] = deconv(prod_AB, p_B)

% Line 32 returns [4, 5, 6] i.e 4x^2 + 5x + 6
% Line 33 returns [1, 2, 3] i.e 1x^2 + 2x + 3 
% In both cases, because exact division, remainder is 0
%% SECTION 3 - DERIVATIVE OF POLYNOMIALS
%   The derivative of a polynomial is calculate with `polyder`
d_p1 = polyder(p1)

% `polyder` can also be used to compute derivative of product of 2 polys
%  using overloaded version which takes two functions as arguments
p2_A = [1, 3, 5]; p2_B = [2, 4, 6];
d_prodAB = polyder(p2_A, p2_B)
%% SECTION 4 - PARTIAL FRACTION EXPANSION
%   For a function in the form b(s) / a(s), `residue` returns partials
p_numer = [-4, 8]; 
p_denom = [1, 6, 8];
[residues, poles, konsts] = residue(p_numer, p_denom)

% So partial fraction expansion is -12/(s-4) + 8/(s-2) + 0