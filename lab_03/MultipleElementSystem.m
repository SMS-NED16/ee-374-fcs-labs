clear all; clc; close all;

X0=[0;0;0;0];	% (Initial xb, Vb, xa, Va)

[t,X]=ode45('multiple_element_sys',[0 200],X0);
subplot(2, 1, 1); plot(t, X(:, 1), 'k'); hold; 
plot(t, X(:, 3), 'k--'); xlabel('Time (\it{t/s})'); ylabel('Displacement (\it{x/m})');
title('Mass-Spring System: Displacement'); grid; legend('x_b', 'x_a');

subplot(2, 1, 2); plot(t, X(:, 2), 'k'); hold; 
plot(t, X(:, 4), 'k--'); xlabel('Time (\it{t/s})'); ylabel('Velocity (\it{v/m.s^{-1}})');
title('Mass-Spring System: Velocity'); grid; legend('v_b', 'v_a');
% figure;
% subplot(2,1,1); 
% 
% plot(t,X(:,1));             % xb
% hold;
% plot(t,X(:,2),'r');          % vb
% xlabel('Time(t)');
% ylabel('Position xb / Speed Vb');
% title('Mass spring system');
% legend('xb', 'Vb');
% grid;
% subplot(2,1,2)
% 
% plot(t,X(:,3));         % xa
% hold;       
% plot(t,X(:,4),'r');     % va
% xlabel('Time(t)');
% ylabel('Position xa / Speed Va');
% title('Mass spring system');
% legend('xa', 'Va');
% grid;
