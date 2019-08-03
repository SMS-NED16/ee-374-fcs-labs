%%  FCS Lab Session 09 Task 02 - Arbitrary Input Signal Response
%   Saad Mashkoor Siddiqui, EE-16163, Section D, TE-EE 16-17

%%  Prepare workspace
clear all; close all; clc;

%%  Defining the transfer function for the plant
num_plant = [1 5];
denom_plant = [1 2 3 5];
plant_tf = tf(num_plant, denom_plant)
t = 0 : 0.001 : 100;

%%  Defining input signal
input_signal = sin(t) + exp(-0.2 * t);

%%  Getting plant response for input signal
plant_response = lsim(num_plant, denom_plant, input_signal, t);

%%  Plotting Response with input signal
figure(); 
plot(t, input_signal, 'k--', t, plant_response, 'k');
grid; legend([{'Input r(t) = sin(t) + e^{-0.2t}'}, {'System Output'}]);
xlabel('Time (\it{t/s})'); ylabel('Signal (\it{f(t)/arbitrary units})');
title('System Response for r(t) = sin(t) + e^{-0.2t}');