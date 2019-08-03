F = 300;
M1 = 750;
M2 = 750;
B1 = 20;
B2 = 30;
B3 = 30;
K1 = 15;
K2 = 15;
sim('fcs_lab_05_model_01');

subplot(2, 1, 1); plot(t_mass_spring, v_a, 'k'); hold; plot(t_mass_spring, v_b, 'k--'); 
grid; xlabel('Time (\it{t/s})'); ylabel('Velocity (\it{v/m.s^{-1})}');
title('Mass-Spring System - Velocity Simulation'); legend('v_a', 'v_b');

subplot(2, 1, 2); plot(t_mass_spring, d_a, 'k'); hold; plot(t_mass_spring, d_b, 'k--'); 
grid; xlabel('Time (\it{t/s})'); ylabel('Displacement (\it{x/m})');
title('Mass-Spring System - Displacement Simulation'); legend('x_a', 'x_b');