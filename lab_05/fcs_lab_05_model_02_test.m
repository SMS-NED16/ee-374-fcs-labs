e = 60;
R = 10;
L = 1;
C = 10;
sim('fcs_lab_05_model_02');
subplot(2, 1, 1); plot(t, v_C, 'k'); xlabel('Time (\it{t/s})');
ylabel('Capacitor Voltage (\it{v_C(t)/V})'); title('Capacitor Voltage'); grid;

subplot(2, 1, 2); plot(t, i_L, 'k'); xlabel('Time (\it{t/s})');
ylabel('Inductor Current (\it{i_L(t)/A})'); title('Inductor Current'); grid;