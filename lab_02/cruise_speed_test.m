v0 = 0;											% initial speed
[t, v] = ode45(‘cruise_speed’, [0, 200], v0);
plot(t, v);
grid on;
title(‘Cruise Speed Time Response to a Constant Friction Force Fa(t)’);
