close all;

J = 0.01;
b = 1;
K = 0.01;
R = 1;
L = 0.5;

sim('fcs_lab_07_model_01');
% subplot(2, 1, 1); plot(t, omega, 'k'); grid; title('Motor Angular Speed');
% xlabel('Time (\it{t/s})'); ylabel('Angular Speed (\it{\omega/rad.s^{-1}})');
% 
% subplot(2, 1, 2); plot(t, angle, 'k'); grid; title('Motor Rotation Angle');
% xlabel('Time (\it{t/s})'); ylabel('Rotation Angle (\it{\theta/rads})');
