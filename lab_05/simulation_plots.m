%% Varying mass
figure();
subplot(2, 1, 1);
plot(v_m100, 'k'); hold; 
plot(v_m500, 'k--'); 
plot(v_m750, 'k:'); 
grid; title('Mass Spring System Response - Velocity');
xlabel('Time (\it{t/s})');
ylabel('Velocity (\it{v/m.s^{-1}})');
legend('100 kg', '500 kg', '750 kg');

subplot(2, 1, 2);
plot(d_m100, 'k'); hold; 
plot(d_m500, 'k--'); 
plot(d_m750, 'k:'); 
grid; title('Mass Spring System Response - Displacement');
xlabel('Time (\it{t/s})');
ylabel('Displacement (\it{x/m})');
legend('100 kg', '500 kg', '750 kg')
%% Varying spring constant k
figure();
subplot(2, 1, 1);
plot(v_K1_5, 'k'); hold; 
plot(v_K15, 'k--'); 
plot(v_K150, 'k:'); 
grid; title('Mass Spring System Response - Velocity');
xlabel('Time (\it{t/s})');
ylabel('Velocity (\it{v/m.s^{-1}})');
legend('1.5 N/m', '15 N/m', '150 N/m');

subplot(2, 1, 2);
plot(d_K1_5, 'k'); hold; 
plot(d_K15, 'k--'); 
plot(d_K150, 'k:'); 
grid; title('Mass Spring System Response - Displacement');
xlabel('Time (\it{t/s})');
ylabel('Displacement (\it{x/m})');
legend('1.5 N/m', '15 N/m', '150 N/m')

%% Varying coefficient of viscous friction B
figure();
subplot(2, 1, 1);
plot(v_b3, 'k'); hold; 
plot(v_b30, 'k--'); 
plot(v_b300, 'k:'); 
grid; title('Mass Spring System Response - Velocity');
xlabel('Time (\it{t/s})');
ylabel('Velocity (\it{v/m.s^{-1}})');
legend('3 N.s/m', '30 N.s/m', '300 N.s/m');

subplot(2, 1, 2);
plot(d_b3, 'k'); hold; 
plot(d_b30, 'k--'); 
plot(d_b300, 'k:'); 
grid; title('Mass Spring System Response - Displacement');
xlabel('Time (\it{t/s})');
ylabel('Displacement (\it{x/m})');
legend('3 N.s/m', '30 N.s/m', '300 N.s/m');

%% Default response
figure();
subplot(2, 1, 1); 
plot(v_b300, 'k'); title('Mass-Spring System Response - Velocity');
grid; xlabel('Time (\it{t/s})');
ylabel('Velocity (\it{v/m.s^{-1}})');

subplot(2, 1, 2);
plot(d_b300, 'k'); title('Mass-Spring System Response - Displacement');
grid; xlabel('Time (\it{t/s})');
ylabel('Displacement (\it{x/m})');