figure();
%Plot L1 Current i1
subplot(3, 1, 1); plot(t_r10, X_r10(:, 1), 'k'); hold;
plot(t_r2, X_r2(:, 1), 'k--'); plot(t_r3, X_r3(:, 1), 'k:');
xlabel('Time (\it{t/s})'); ylabel('L1 Current (\it{i_{L1}(t)/A})');
title('Current i_1(t)'); grid;
legend('R1 = 10, R2 = 10', 'R1 = 1, R2 = 10', 'R1 = 10, R2 = 1');

% Plot L2 Current i2
subplot(3, 1, 2); plot(t_r10, X_r10(:, 2), 'k'); xlabel('Time (\it{t/s})'); hold;
plot(t_r2, X_r2(:, 2), 'k--'); plot(t_r3, X_r3(:, 2), 'k:');
ylabel('L2 Current (\it{i_{L2}(t)/A})'); title('Current i_2(t)'); grid;
legend('R1 = 10, R2 = 10', 'R1 = 1, R2 = 10', 'R1 = 10, R2 = 1');

% Plot C Voltage v3
subplot(3, 1, 3); plot(t_r10, X_r10(:, 3), 'k'); xlabel('Time (\it{t/s})'); hold;
plot(t_r2, X_r2(:, 3), 'k--'); plot(t_r3, X_r3(:, 3), 'k:');
ylabel('C Voltage (\it{v_{C}(t)/V})'); title('Voltage v_3(t)');grid;
legend('R1 = 10, R2 = 10', 'R1 = 1, R2 = 10', 'R1 = 10, R2 = 1');

%% Plotting Voltage Figures
figure();
%Plot L1 Current i1
subplot(3, 1, 1); plot(t_e1, X_e1(:, 1), 'k'); hold;
plot(t_e2, X_e2(:, 1), 'k--'); plot(t_e3, X_e3(:, 1), 'k:');
xlabel('Time (\it{t/s})'); ylabel('L1 Current (\it{i_{L1}(t)/A})');
title('Current i_1(t)'); grid;
legend('e1 = 30V', 'e2 = 60 V', 'e3 = 90V');

% Plot L2 Current i2
subplot(3, 1, 2); plot(t_e1, X_e1(:, 2), 'k'); xlabel('Time (\it{t/s})'); hold;
plot(t_e2, X_e2(:, 2), 'k--'); plot(t_e3, X_e3(:, 2), 'k:');
ylabel('L2 Current (\it{i_{L2}(t)/A})'); title('Current i_2(t)'); grid;
legend('e1 = 30V', 'e2 = 60 V', 'e3 = 90V');

% Plot C Voltage v3
subplot(3, 1, 3); plot(t_e1, X_e1(:, 3), 'k'); xlabel('Time (\it{t/s})'); hold;
plot(t_e2, X_e2(:, 3), 'k--'); plot(t_e3, X_e3(:, 3), 'k:');
ylabel('C Voltage (\it{v_{C}(t)/V})'); title('Voltage v_3(t)');grid;
legend('e1 = 30V', 'e2 = 60 V', 'e3 = 90V');

%% Plotting Inductance Figures
figure();
%Plot L1 Current i1
subplot(3, 1, 1); plot(t_L1, X_L1(:, 1), 'k'); hold;
plot(t_L2, X_L2(:, 1), 'k--'); plot(t_L3, X_L3(:, 1), 'k:');
xlabel('Time (\it{t/s})'); ylabel('L1 Current (\it{i_{L1}(t)/A})');
title('Current i_1(t)'); grid;
legend('L1 = 1H, L2 = 1H', 'L1 = 10H, L2 = 1H', 'L1 = 1H, L2 = 10H');

% Plot L2 Current i2
subplot(3, 1, 2); plot(t_L1, X_L1(:, 2), 'k'); xlabel('Time (\it{t/s})'); hold;
plot(t_L2, X_L2(:, 2), 'k--'); plot(t_L3, X_L3(:, 2), 'k:');
ylabel('L2 Current (\it{i_{L2}(t)/A})'); title('Current i_2(t)'); grid;
legend('L1 = 1H, L2 = 1H', 'L1 = 10H, L2 = 1H', 'L1 = 1H, L2 = 10H');

% Plot C Voltage v3
subplot(3, 1, 3); plot(t_L1, X_L1(:, 3), 'k'); xlabel('Time (\it{t/s})'); hold;
plot(t_L2, X_L2(:, 3), 'k--'); plot(t_L3, X_L3(:, 3), 'k:');
ylabel('C Voltage (\it{v_{C}(t)/V})'); title('Voltage v_3(t)');grid;
legend('L1 = 1H, L2 = 1H', 'L1 = 10H, L2 = 1H', 'L1 = 1H, L2 = 10H');

%% %% Plotting Capacitance Figures
figure();
%Plot L1 Current i1
subplot(3, 1, 1); plot(t_C1, X_C1(:, 1), 'k'); hold;
plot(t_C2, X_C2(:, 1), 'k--'); plot(t_C3, X_C3(:, 1), 'k:');
xlabel('Time (\it{t/s})'); ylabel('L1 Current (\it{i_{L1}(t)/A})');
title('Current i_1(t)'); grid;
legend('C1 = 10F', 'C2 = 20F', 'C3 = 30F');

% Plot L2 Current i2
subplot(3, 1, 2); plot(t_C1, X_C1(:, 2), 'k'); xlabel('Time (\it{t/s})'); hold;
plot(t_C2, X_C2(:, 2), 'k--'); plot(t_C3, X_C3(:, 2), 'k:');
ylabel('L2 Current (\it{i_{L2}(t)/A})'); title('Current i_2(t)'); grid;
legend('C1 = 10F', 'C2 = 20F', 'C3 = 30F');

% Plot C Voltage v3
subplot(3, 1, 3); plot(t_C1, X_C1(:, 3), 'k'); xlabel('Time (\it{t/s})'); hold;
plot(t_C2, X_C2(:, 3), 'k--'); plot(t_C3, X_C3(:, 3), 'k:');
ylabel('C Voltage (\it{v_{C}(t)/V})'); title('Voltage v_3(t)');grid;
legend('C1 = 10F', 'C2 = 20F', 'C3 = 30F');