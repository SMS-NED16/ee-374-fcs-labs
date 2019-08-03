function plot_response_data(t_1, X_1, t_2, X_2, t_3, X_3, param_name)
figure();
subplot(2, 1, 1); plot(t_1, X_1(:, 1), 'k--'); hold on;
plot(t_2, X_2(:, 1), 'k'); plot(t_3, X_3(:, 1), 'k.');
legend('0.1', '1', '10');
xlabel('Time (\it{t/s})'); ylabel('Angular Speed (\it{\omega/rad.s^{-1}})');
title_str = sprintf('Effect of %s on Angular Speed', param_name);
title(title_str); grid on;

subplot(2, 1, 2); plot(t_1, X_1(:, 2), 'k--'); hold on;
plot(t_2, X_2(:, 2), 'k'); plot(t_3, X_3(:, 2), 'k.');
legend('0.1', '1', '10');
xlabel('Time (\it{t/s})'); ylabel('Armature Current (\it{i_A/A})');
title_str = sprintf('Effect of %s on Armature Current', param_name);
title(title_str); grid on;