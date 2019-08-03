%%  FCS Lab 08 Exercise 01 - Reduction of a multiploop feedback system
%   Saad Mashkoor Siddiqui, EE-16163, Section D, TE-EE 16-17

%%  Prepare workspace and IDE for program
clear all; close all; clc;

%%  Define individual transfer functions 
G1 = tf([1], [1 10]);
G2 = tf([1], [1, 1]);
G3 = tf([1, 0, 1], [1, 4, 4]);
G4 = tf([1, 1], [1, 6]);
H1 = tf([1, 1], [1, 2]);
H2 = [2];
H3 = [1];

%%  Block reduction
G5 = feedback(series(G3, G4), H1, +1);
G6 = feedback(series(G2, G5), H2/G4, -1);
G_sys= feedback(series(G1, G6), H3, -1);

%%  Output final transfer function
G_sys

%%
stepinfo(G_sys)

%%  Pole-Zero Map
pzmap(G_sys, 'k')

%%  Visualizing Step Response
figure(); step(G_sys, 'k');
grid on; xlabel('Time (\it{t/s})'); ylabel('Amplitude (\it{x(t)/arbitrary units})');
title('System Step Response'); 

%%  Visualizing Unit Impulse Response
figure(); impulse(G_sys, 'k');
grid on; xlabel('Time (\it{t/s})'); ylabel('Amplitude (\it{x(t)/arbitrary units})');
title('System Unit Impulse Response');