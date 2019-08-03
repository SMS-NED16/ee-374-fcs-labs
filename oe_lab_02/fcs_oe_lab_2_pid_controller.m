%%  FCS Lab 10 Exercise 01 - PID Controller and 2nd Order System Characteristics
%   Investigating the use of a P, I, and D controllers on the time response
%   characteristics of a 2nd order mass-spring system

%%  Initialization
%   prepare workspace
clear all; close all; clc;

%   Define mechanical constants and transfer fcn for mass-spring system
M = 1; B = 10; k = 20;
plant_tf = tf(1, [M, B, k]);   % echo for confirmation
%%  Plant-Controller Setup
%   Define coefficients for each controller
k_p = 350; k_i = 300; k_d = 50; 

%   Set up transfer function for each plant
p_sys = tf([0 0 k_p], [M, B, k + k_p]);     
i_sys = tf([0 0 k_i], [M, B, k, k_p]);
d_sys = tf([0 k_d 0], [M, (B + k_d), k]);

%%   For more complicated combinations, using MATLAB's built-in functions
%   PD Controller
pd_controller = tf([k_d, k_p], 1);
pd_sys = feedback(pd_controller * plant_tf, 1);

%   PI Controller
pi_controller = tf([k_p, k_i], [1, 0]);
pi_sys = feedback(pi_controller * plant_tf, 1);

%   PID Controller
pid_controller = tf([k_d, k_p, k_i], [1, 0]);
pid_sys = feedback(pid_controller * plant_tf, 1);
%%  Plotting each system's response
t = 0:0.01:2;           % time domain for all plots

%   P controller
figure(); step(p_sys, t, 'k'); xlabel('(Time \it{t/s})'); 
ylabel('Displacement (\it{x(t)/m})'); grid on;
title('Mass-Spring Displacement with P Controller');

%   I controller
figure(); step(i_sys, t, 'k'); xlabel('(Time \it{t/s})'); 
ylabel('Displacement (\it{x(t)/m})'); grid on;
title('Mass-Spring Displacement with I Controller');

%   D controller
figure(); step(d_sys, t, 'k'); xlabel('(Time \it{t/s})'); 
ylabel('Displacement (\it{x(t)/m})'); grid on;
title('Mass-Spring Displacement with D Controller');

%   PI controller
figure(); step(pi_sys, t, 'k'); xlabel('(Time \it{t/s})'); 
ylabel('Displacement (\it{x(t)/m})'); grid on;
title('Mass-Spring Displacement with PI Controller');

%   PD controller
figure(); step(pd_sys, t, 'k'); xlabel('(Time \it{t/s})'); 
ylabel('Displacement (\it{x(t)/m})'); grid on;
title('Mass-Spring Displacement with PD Controller');

%   PID controller
figure(); step(pid_sys, t, 'k'); xlabel('(Time \it{t/s})'); 
ylabel('Displacement (\it{x(t)/m})'); grid on;
title('Mass-Spring Displacement with PID Controller');