function time_equ = DI3d_time(x01, x02, x03, x04, x05, x06, x11, x12, x13, x14, x15, x16)
time_equ = [ 1, 0, ...
    - 4*x04^2 - 4*x04*x14 - 4*x05^2 - 4*x05*x15 - 4*x06^2 - 4*x06*x16 - 4*x14^2 - 4*x15^2 - 4*x16^2, ...
    24*x04*x11 - 24*x02*x05 - 24*x03*x06 - 24*x01*x14 - 24*x01*x04 - 24*x02*x15 + 24*x05*x12 - 24*x03*x16 + 24*x06*x13 + 24*x11*x14 + 24*x12*x15 + 24*x13*x16, ...
    - 36*x01^2 + 72*x01*x11 - 36*x02^2 + 72*x02*x12 - 36*x03^2 + 72*x03*x13 - 36*x11^2 - 36*x12^2 - 36*x13^2];
end