%%	FCS Lab Session 08 - Exercise 01: Step Response of First Order System
%	Saad Mashkoor Siddiqui, EE-16163, Section D, TE-EE 16-17
%	Tests the step response of 1st order RC ckts with different time constants

%%	Preparing workspace
clear all; close all; clc;

%%	Initializibng data
R1 = 2e3; R2 = 2.5e3;           % Ohms
C1 = 0.01; C2 = 0.003;          % Farads
tau_1 = R1 * C1;                % Time constant for first circuit		
tau_2 = R2 * C2;                % Time constant for second circuit	

%   Defining different time domain for each system. Upper limit is 5 * tau
%   because all transient behaviour has ceased by approximately this time.
t_sys_1 = 0: 0.01 : tau_1 * 5;  
t_sys_2 = 0: 0.01 : tau_2 * 5;

%%	Initializing transfer functions for both circuits
sys_1 = tf([0 1], [tau_1, 1]);
sys_2 = tf([0 1], [tau_2, 1]);

%%	Storing step response data for both inputs
step_data_sys_1 = stepinfo(sys_1);
step_data_sys_2 = stepinfo(sys_2);

%%	Visualizing step responses
%	System 1
figure(); step(sys_1, t_sys_1, 'k'); grid on; xlabel('Time (\it{t/s})');
ylabel('Control Signal (\it{v_C(t)/V})');
title(sprintf('RC System 1 Step Response - R = %.2f, C = %.2f', R1, C1));

%   System 2 
figure(); step(sys_2, t_sys_2, 'k'); grid on; xlabel('Time (\it{t/s})');
ylabel('Control Signal (\it{v_C(t)/V})');
title(sprintf('RC System 2 Step Response - R = %.2f, C = %.3f', R2, C2));

%   System 1 and 2 on the same graph
figure(); step(sys_1, t_sys_1, 'k'); hold on; step(sys_2, t_sys_1, 'k--'); 
legend = ['System 1', 'System 2']; grid on;
xlabel('Time (\it{t/s})'); ylabel('Control Signal (\it{v_C(t)/V})'); 
title('Comparing Responses for Both Systems'); 