clear all; close all; clc;

X0 = [0; 0; 0; 0];          % Initial xb, vb, xa, va
[t,X] = ode45('multiple_element_sys', [0, 200], X0);

figure;
subplot(2, 1, 1);

plot(t, X(:,1)); hold;
plot(t, X(:,2)); hold;
xlabel('Time (\it{t/s})');
ylabel('Position xb/Speed vb');
title('Mass Spring System');
legend('x_b', 'v_b');
grid;