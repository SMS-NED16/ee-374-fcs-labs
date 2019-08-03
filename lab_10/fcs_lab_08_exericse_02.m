%%  FCS Lab 08 Exercise 02 - Reduction of a multiploop feedback system
%   Saad Mashkoor Siddiqui, EE-16163, Section D, TE-EE 16-17

%%  Prepare workspace and IDE for program
clear all; close all; clc;

%%  Define all transfer functions
G1 = tf([0, 1], [1, 10]);
G2 = tf([0, 1], [1, 1]);
G3 = tf([1, 0, 1], [1, 4, 4]);
G4 = tf([1, 1], [1, 6]);
H1 = tf([1, 1], [1, 2]);
H2 = [1]

%%  Block diagram reduction
G5 = series(G2, G4);
G6 = parallel(G5, G3);
G7 = feedback(G1, H1, -1);
G8 = series(G7, G6);
G_sys = feedback(G8, H2, -1);

%%  Echo system's transfer function
G_sys

%%  Create pole-zero map
pzmap(G_sys, 'k')

stepinfo(G_sys)

%%  Visualizing Step Response
figure(); step(G_sys, 'k');
grid on; xlabel('Time (\it{t/s})'); ylabel('Amplitude (\it{x(t)/arbitrary units})');
title('System Step Response'); 

%%  Visualizing Unit Impulse Response
figure(); impulse(G_sys, 'k');
grid on; xlabel('Time (\it{t/s})'); ylabel('Amplitude (\it{x(t)/arbitrary units})');
title('System Unit Impulse Response'); 
