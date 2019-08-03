%% Resistance and speed
figure();
semilogy(t1, omega_r1, 'k--'); hold;
semilogy(t2, omega_r2, 'k:');
semilogy(t3, omega_r3, 'k-.');
semilogy(t4, omega_r4, 'k');
xlabel('Time (\it{t/s})'); ylabel('log_{10}(Angular Speed) (\it{\omega/rad.s^{-1}})');
grid; title('Motor Angular Speed');
legend('R = 10^2 ohms', 'R = 10^4 Ohms', 'R = 10^6 Ohms', 'R = 1 Ohm');

%% Inductance and Speed
figure();
plot(t_L1, omega_L1, 'k--'); hold;
plot(t_L2, omega_L2, 'k:');
plot(t_L3, omega_L3, 'k-.');
plot(t_L4, omega_L4, 'k');
xlabel('Time (\it{t/s})'); ylabel('Angular Speed(\it{\omega/rad.s^{-1}})');
grid; title('Motor Angular Speed');
legend('L = 0.005 H', 'L = 0.05 H', 'L = 0.5 H', 'L = 5 H');
%% Inertia and Speed
figure();
plot(t_J1, omega_J1, 'k--'); hold;
plot(t_J2, omega_J2, 'k:');
plot(t_J3, omega_J3, 'k-.');
plot(t_J4, omega_J4, 'k');
xlabel('Time (\it{t/s})'); ylabel('Angular Speed(\it{\omega/rad.s^{-1}})');
grid; title('Motor Angular Speed');
legend('J = 0.001', 'J = 0.01', 'J = 0.1', 'J = 1');
%% Friction and Speed
figure();
semilogy(t_b1, omega_b1, 'k--'); hold;
semilogy(t_b2, omega_b2, 'k:');
semilogy(t_b3, omega_b3, 'k-.');
semilogy(t_b4, omega_b4, 'k');
xlabel('Time (\it{t/s})'); ylabel('Angular Speed(\it{\omega/rad.s^{-1}})');
grid; title('Motor Angular Speed');
legend('B = 0.001', 'B = 0.01', 'B = 0.1', 'B = 1');

figure();

plot(t_b1, omega_b1, 'k--'); hold;
plot(t_b2, omega_b2, 'k:');
plot(t_b3, omega_b3, 'k-.');
plot(t_b4, omega_b4, 'k');
xlabel('Time (\it{t/s})'); ylabel('Angular Speed(\it{\omega/rad.s^{-1}})');
grid; title('Motor Angular Speed');
legend('B = 0.001', 'B = 0.01', 'B = 0.1', 'B = 1');