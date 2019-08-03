v0=0;% (initial speed) 
[t,v]=ode45('cruise_speed',[0 200],v0); 
plot(t,v); 
grid on; 
title('cruise speed time response to a constant fraction force Fa(t)')