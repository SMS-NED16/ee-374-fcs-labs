%%  FCS Open Ended Lab 01 - Saad Mashkoor Siddiqui, EE-16163, Section D
%   update_state_vars.m - passed as a function argument to ODE45 solver in
%   pmdc_test.m along with values of PMDC electromechanical constants.
%   Used to update numerical solution of differential state equations

function dX_dt = update_state_vars(t, X, sys_params)
% dX/dt = [d_omega/dt, d_Ia/dt] and X = [omega, I_a]

R = sys_params(1);              % armature resistance
L = sys_params(2);              % armature inductance
V_A = sys_params(3);            % applied armature voltage
B = sys_params(4);              % rotational damping 
J = sys_params(5);              % moment of inertia
K = sys_params(6);              % arbitrary rotational constant           

dw_dt = (K/J) * X(2) - (B/J) * X(1);
dI_dt = (-R/L) * X(2) + (-K/L) * X(1) + V_A/L;
dX_dt = [dw_dt; dI_dt];