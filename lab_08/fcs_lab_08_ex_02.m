%%	FCS Lab Session 08 - Exercise 02: Step Response of Second Order System
%	Saad Mashkoor Siddiqui, EE-16163, Section D, TE-EE 16-17
%	Tests the step response of 1st order RC ckts with different time constants

%%  Preparing workspace
clear all; close all; clc;

%%  Initializing parameters
nat_freq = 1;                                       % radians/second
damping_factors = [0.1, 0.4, 0.7, 1.0, 2.0];        % several values of damping factor
step_info_array = [];                   
step_response_array = [];          
zeta_index = 1;       % counter variable
num = [nat_freq^2];
t = 0:0.01:50;

%%  Getting Step Responses for all values of damping factor
figure(); grid on; xlabel('Time (\it{t/s})'); 
ylabel('Control Signal \it{c(t)/arbitrary units})');
title('Comparing 2^{nd} Order System Responses');

for zeta = damping_factors
    % Create a transfer function for this value of eta
    transfer_fcn = tf(num, [1, 2 * zeta * nat_freq, nat_freq^2]);
    
    % Get step response for this transfer function
    step_response_array(:, zeta_index) = step(transfer_fcn, t);
    
    % Store step info for this transfer function
    step_info_array(:, zeta_index) = stepinfo(transfer_fcn);
    
    % start holding plots from first response
    if zeta_index == 1
        hold on;
    end
    
    % plot the step response
    plot(step_response_array(:, zeta_index));
        
    % Increment counter
    zeta_index = zeta_index + 1;s
end

%   Once all plots have been added, create a legend
legend('0.1', '0.4', '0.7', '1.0', '2.0');