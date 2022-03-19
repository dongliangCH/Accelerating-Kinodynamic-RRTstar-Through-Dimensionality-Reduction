function cost = DI_costFreeVel(t_s,x01,x02,x03,x04,x11,x12)
     cost = t_s + (3*x03^2 + 3*x04^2)/t_s + (3*x01^2 - 6*x01*x11 + 3*x02^2....
     - 6*x02*x12 + 3*x11^2 + 3*x12^2)/t_s^3 + (6*x01*x03 + 6*x02*x04 - 6*x03*x11 - 6*x04*x12)/t_s^2;
end