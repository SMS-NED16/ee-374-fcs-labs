function dvdt = cruise_speed(t, v)
M = 750;
B = 30;
Fa = 300;
dvdt = Fa/M – B/M * v;
