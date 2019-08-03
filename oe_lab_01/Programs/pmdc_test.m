%%  FCS Open Ended Lab 01 - Saad Mashkoor Siddiqui, EE-16163, Section D
%   pmdc_test.m - uses a differential equation-based mathematical model of
%   a PMDC motor to plot armature current and shaft speed as state variables
%% ODE Solver for d_omega/dt and dI_A/dt 
X_0 = [0 0];          % initially, both omega and I_A are 0

% sys_params are the electromechanical constants of the motor - 
t_span = [0, 5];                % the entire system is observed for 5 seconds

% t stores time and X stores omega/current approximated by ODE solver
[t_K10, X_K10] = ode45(@(time, outputs) update_state_vars(time, outputs), t_span, X_0);

%% Plot data
% subplot(2, 1, 1); plot(t_unity, X_unity(:, 1), 'k'); grid; 
% title('PMDC Response - Angular Speed against Time');
% xlabel('Time (\it{t/s})'); ylabel('Angular Speed \it({\omega/RPS})'); 
% 
% subplot(2, 1, 2); plot(t_unity, X_unity(:, 2), 'k'); grid; 
% title('PMDC Response - Armature Current against Time');
% xlabel('Time (\it{t/s})'); ylabel('Armature Current (\it{i_A/A})');