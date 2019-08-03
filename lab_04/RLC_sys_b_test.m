% clear all; close all; clc;

%% ODE Solver for i1, i2, v3
X0 = [0 0 0];           % init values - i1, i2 v3
[t_C4, X_C4] = ode45('RLC_sys_b', [0, 500], X0);

%% PLOT R DATA 
%Plot L1 Current i1
subplot(3, 1, 1);
plot(t_r10, X_r10(:, 1), 'k');
xlabel('Time (\it{t/s})');
ylabel('L1 Current (\it{i_{L1}(t)/A})');
title('Current i_1(t)');
grid;
% Plot L2 Current i2
subplot(3, 1, 2);
plot(t, X(:, 2), 'k');
xlabel('Time (\it{t/s})');
ylabel('L2 Current (\it{i_{L2}(t)/A})');
title('Current i_2(t)');
grid;
% Plot C Voltage v3
subplot(3, 1, 3);
plot(t, X(:, 3), 'k');
xlabel('Time (\it{t/s})');
ylabel('C Voltage (\it{v_{C}(t)/V})');
title('Voltage v_3(t)');
grid;