function states = DI_stateFreeVel(t,t_s,x01,x02,x03,x04,x11,x12)

states = [ x01 + t*x03 + (t^2*(t - 3*t_s)*(x01 - x11 + t_s*x03))/(2*t_s^3);
           x02 + t*x04 + (t^2*(t - 3*t_s)*(x02 - x12 + t_s*x04))/(2*t_s^3);
           x03 + (3*t*(t - 2*t_s)*(x01 - x11 + t_s*x03))/(2*t_s^3);
           x04 + (3*t*(t - 2*t_s)*(x02 - x12 + t_s*x04))/(2*t_s^3)];

end