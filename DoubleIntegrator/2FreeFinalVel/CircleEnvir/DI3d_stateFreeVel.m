function states = DI3d_stateFreeVel(t,t_s,x01,x02,x03,x04,x05,x06,x11,x12,x13)
states = [  x01 + t*x04 + (t^2*(t - 3*t_s)*(x01 - x11 + t_s*x04))/(2*t_s^3);
            x02 + t*x05 + (t^2*(t - 3*t_s)*(x02 - x12 + t_s*x05))/(2*t_s^3);
            x03 + t*x06 + (t^2*(t - 3*t_s)*(x03 - x13 + t_s*x06))/(2*t_s^3);
            x04 + (3*t*(t - 2*t_s)*(x01 - x11 + t_s*x04))/(2*t_s^3);
            x05 + (3*t*(t - 2*t_s)*(x02 - x12 + t_s*x05))/(2*t_s^3);
            x06 + (3*t*(t - 2*t_s)*(x03 - x13 + t_s*x06))/(2*t_s^3)];
end