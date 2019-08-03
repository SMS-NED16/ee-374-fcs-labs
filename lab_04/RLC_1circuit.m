% clear all; close all; clc;

% X0=[0 0];
% [t_C100,X_C100]=ode45('RLC1',[0 500],X0);

%% Plotting e data
figure();
subplot(2,1,1);  
plot(t_e6,X_e6(:,1), 'k'); hold;
plot(t_e60,X_e60(:,1), 'k--');
plot(t_e600,X_e600(:,1), 'k:');  
legend('Capacitor Voltage');  
grid on;  
title('Capacitor Voltage v_C(t)');
xlabel('Time (\it{t/s})');
ylabel('Capacitor Voltage (\it{v_C/V})');
legend('e = 6V', 'e = 60V', 'e = 600V');

subplot(2,1,2);  
plot(t_e6,X_e6(:,2), 'k');  hold;
plot(t_e60,X_e60(:,2), 'k--');
plot(t_e600,X_e600(:,2), 'k:'); ; 
legend('Inductor Current');
grid on;  
title('Inductor Current i_L(t)');
xlabel('Time (\it{t/s})');
ylabel('Inductor Current (\it{i_L(t)/A})');
legend('e = 6V', 'e = 60V', 'e = 600V');
%% Plotting R data
figure();
subplot(2,1,1);  
plot(t_r1,X_r1(:,1), 'k'); hold;
plot(t_r10,X_r10(:,1), 'k--');
plot(t_r100,X_r100(:,1), 'k:');  
legend('Capacitor Voltage');  
grid on;  
title('Capacitor Voltage v_C(t)');
xlabel('Time (\it{t/s})');
ylabel('Capacitor Voltage (\it{v_C/V})');
legend('R = 1 ohm', 'R = 10 ohm', 'R = 100 ohm');

subplot(2,1,2);  
plot(t_r1,X_r1(:,2), 'k'); hold;
plot(t_r10,X_r10(:,2), 'k--');
plot(t_r100,X_r100(:,2), 'k:');
legend('Inductor Current');
grid on;  
title('Inductor Current i_L(t)');
xlabel('Time (\it{t/s})');
ylabel('Inductor Current (\it{i_L(t)/A})');
legend('R = 1 ohm', 'R = 10 ohm', 'R = 100 ohm');
%% Plotting L data
figure();
subplot(2,1,1);  
plot(t_l0_1,X_l0_1(:,1), 'k'); hold;
plot(t_l1,X_l1(:,1), 'k--');
plot(t_l10,X_l10(:,1), 'k:');  
legend('Capacitor Voltage');  
grid on;  
title('Capacitor Voltage v_C(t)');
xlabel('Time (\it{t/s})');
ylabel('Capacitor Voltage (\it{v_C/V})');
legend('L = 0.1 H', 'L = 1 H', 'L = 10 H');

subplot(2,1,2);  
plot(t_l0_1,X_l0_1(:,2), 'k'); hold;
plot(t_l1,X_l1(:,2), 'k--');
plot(t_l10,X_l10(:,2), 'k:'); 
legend('Inductor Current');
grid on;  
title('Inductor Current i_L(t)');
xlabel('Time (\it{t/s})');
ylabel('Inductor Current (\it{i_L(t)/A})');
legend('L = 0.1 H', 'L = 1 H', 'L = 10 H');
%% Plotting C data
figure();
subplot(2,1,1);  
plot(t_C1,X_C1(:,1), 'k'); hold;
plot(t_C10,X_C10(:,1), 'k--');
plot(t_C100,X_C100(:,1), 'k:');  
legend('Capacitor Voltage');  
grid on;  
title('Capacitor Voltage v_C(t)');
xlabel('Time (\it{t/s})');
ylabel('Capacitor Voltage (\it{v_C/V})');
legend('C = 1 F', 'C = 10 F', 'C = 100 F');

subplot(2,1,2);  
plot(t_C1,X_C1(:,2), 'k'); hold;
plot(t_C10,X_C10(:,2), 'k--');
plot(t_C100,X_C100(:,2), 'k:');  
legend('Inductor Current');
grid on;  
title('Inductor Current i_L(t)');
xlabel('Time (\it{t/s})');
ylabel('Inductor Current (\it{i_L(t)/A})');
legend('C = 1 F', 'C = 10 F', 'C = 100 F');