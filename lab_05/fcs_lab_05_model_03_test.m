e = 60; % supply voltage in volts
R1 = 10; % in ohms
R2 = 10;
L1 = 1; % in Henries
L2 = 1; % in Henries
C = 10; % in Farads 

sim('fcs_lab_05_model_03');
subplot(3, 1, 1); plot(t, i_1, 'k'); title('Inductor 1 Current i_{L1}(t)');
xlabel('Time (\it{t/s})'); ylabel('Current (\it{i_{L1}(t)/A)}'); grid;

subplot(3, 1, 2); plot(t, i_2, 'k'); title('Inductor 2 Current i_{L2}(t)');
xlabel('Time (\it{t/s})'); ylabel('Current (\it{i_{L2}(t)/A)}'); grid;

subplot(3, 1, 3); plot(t, v_3, 'k'); title('Capacitor Voltage v_{C}(t)');
xlabel('Time (\it{t/s})'); ylabel('Voltage (\it{v_{C}(t)/V)}'); grid;