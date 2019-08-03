%%  FCS Lab Session 09 Task 01 - Ramp Response
%   Saad Mashkoor Siddiqui, EE-16163, Section D, TE-EE 16-17

%%  Prepare workspace 
close all; clc;

%%  Define original transfer function
num_0 = [0 0 30];
denom_0 = [1 5 30];
tf_0 = tf(num_0, denom_0);
step_response_tf_0 = step(tf_0);
% step_output = tf(1, [1 0]);
figure(); plot(step_response_tf_0, 'k'); xlabel('Time (\it{t/s})');
ylabel('Amplitude (\it{c(t)/arbitrary units})'); grid;
title('Step Response of G(s)');
% hold on; plot(step_output, 'k--'); 
%%  Modify numerator and denominator for ramp response
num_1 = [0 num_0];
denom_1 = [denom_0 0];
tf_1 = tf(num_1, denom_1);          % same as multiplying by 1/s

%%  Find the step response for the new tf - this is actually the ramp response
[y1, x1, t1] = step(num_1, denom_1);

%%  Plotting the output and ramp function against time
figure();
axes_limits = [0 10 0 10];      %   [x_lim_low, x_lim_high, y_lim_low, y_lim_high]     
plot(t1, y1, 'k');              %   plot ramp response
axis(axes_limits); hold on;     %   also add axes limits to shrink response
plot(t1, t1, 'k--');            %   plot ramp function for comparison

%   Annotate the plot
grid;   title('Plot of unit ramp response of G(s) = 30/(s^2 + 5s + 30)');
xlabel('Time (\it{t/s})'); ylabel('Amplitude (\it{r(t)/arbitrary units})');
legend([{'Ramp Response'}, {'Ramp Input'}]);