F = 30;
B = 30;
M = 750;
K = 15;

load 'mass_spring_force_data.mat';

figure(); 
subplot(2, 1, 1);
plot(v_f_30, 'k'); hold on; plot(v_f_300, 'k--'); plot(v_f_3000, 'k:');
legend({'F = 30', 'F = 300', 'F = 3000'}); grid on;
xlabel('Time (\it{t/s})'); ylabel('Velocity (\it{v/m.s^{-1}})');
title('Effect of Force on Mass-Spring System - Velocity');

subplot(2, 1, 2);
plot(x_f_30, 'k'); hold on; plot(x_f_300, 'k--'); plot(x_f_3000, 'k:');
legend({'F = 30', 'F = 300', 'F = 3000'}); grid on;
xlabel('Time (\it{t/s})'); ylabel('Displacement (\it{x/m})');
title('Effect of Force on Mass-Spring System - Displacement');