function states = DI_state(t,t_s,x01,x02,x03,x04,x11,x12,x13,x14)
 states = [x11 + x13*(t - t_s) + ((t - t_s)^3*(2*x01 - 2*x11 + t_s*x03 + t_s*x13))/t_s^3 + ((t - t_s)^2*(3*x01 - 3*x11 + t_s*x03 + 2*t_s*x13))/t_s^2;
           x12 + x14*(t - t_s) + ((t - t_s)^3*(2*x02 - 2*x12 + t_s*x04 + t_s*x14))/t_s^3 + ((t - t_s)^2*(3*x02 - 3*x12 + t_s*x04 + 2*t_s*x14))/t_s^2;
           x13 + (2*(t - t_s)*(3*x01 - 3*x11 + t_s*x03 + 2*t_s*x13))/t_s^2 + (3*(t - t_s)^2*(2*x01 - 2*x11 + t_s*x03 + t_s*x13))/t_s^3;
           x14 + (2*(t - t_s)*(3*x02 - 3*x12 + t_s*x04 + 2*t_s*x14))/t_s^2 + (3*(t - t_s)^2*(2*x02 - 2*x12 + t_s*x04 + t_s*x14))/t_s^3];
end