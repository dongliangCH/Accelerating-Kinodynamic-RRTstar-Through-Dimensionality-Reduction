function states = DI5_state(t,t_s,x01, x02, x03, x04, x05, x06, x07, x08, x09, x010, x011, x012, x013, x014, x015, x016, x017, x018, x019, x020, x11, x12, x13, x14, x15, x16, x17, x18, x19, x110, x111, x112, x113, x114, x115, x116, x117, x118, x119, x120)
 states = [x11 + x111*(t - t_s) + ((t - t_s)^3*(2*x01 - 2*x11 + t_s*x011 + t_s*x111))/t_s^3 + ((t - t_s)^2*(3*x01 - 3*x11 + t_s*x011 + 2*t_s*x111))/t_s^2;
      x12 + x112*(t - t_s) + ((t - t_s)^3*(2*x02 - 2*x12 + t_s*x012 + t_s*x112))/t_s^3 + ((t - t_s)^2*(3*x02 - 3*x12 + t_s*x012 + 2*t_s*x112))/t_s^2;
      x13 + x113*(t - t_s) + ((t - t_s)^3*(2*x03 - 2*x13 + t_s*x013 + t_s*x113))/t_s^3 + ((t - t_s)^2*(3*x03 - 3*x13 + t_s*x013 + 2*t_s*x113))/t_s^2;
      x14 + x114*(t - t_s) + ((t - t_s)^3*(2*x04 - 2*x14 + t_s*x014 + t_s*x114))/t_s^3 + ((t - t_s)^2*(3*x04 - 3*x14 + t_s*x014 + 2*t_s*x114))/t_s^2;
      x15 + x115*(t - t_s) + ((t - t_s)^3*(2*x05 - 2*x15 + t_s*x015 + t_s*x115))/t_s^3 + ((t - t_s)^2*(3*x05 - 3*x15 + t_s*x015 + 2*t_s*x115))/t_s^2;
      x16 + x116*(t - t_s) + ((t - t_s)^3*(2*x06 - 2*x16 + t_s*x016 + t_s*x116))/t_s^3 + ((t - t_s)^2*(3*x06 - 3*x16 + t_s*x016 + 2*t_s*x116))/t_s^2;
      x17 + x117*(t - t_s) + ((t - t_s)^3*(2*x07 - 2*x17 + t_s*x017 + t_s*x117))/t_s^3 + ((t - t_s)^2*(3*x07 - 3*x17 + t_s*x017 + 2*t_s*x117))/t_s^2;
      x18 + x118*(t - t_s) + ((t - t_s)^3*(2*x08 - 2*x18 + t_s*x018 + t_s*x118))/t_s^3 + ((t - t_s)^2*(3*x08 - 3*x18 + t_s*x018 + 2*t_s*x118))/t_s^2;
      x19 + x119*(t - t_s) + ((t - t_s)^3*(2*x09 - 2*x19 + t_s*x019 + t_s*x119))/t_s^3 + ((t - t_s)^2*(3*x09 - 3*x19 + t_s*x019 + 2*t_s*x119))/t_s^2;
 x110 + x120*(t - t_s) + ((t - t_s)^3*(2*x010 - 2*x110 + t_s*x020 + t_s*x120))/t_s^3 + ((t - t_s)^2*(3*x010 - 3*x110 + t_s*x020 + 2*t_s*x120))/t_s^2;
                    x111 + (2*(t - t_s)*(3*x01 - 3*x11 + t_s*x011 + 2*t_s*x111))/t_s^2 + (3*(t - t_s)^2*(2*x01 - 2*x11 + t_s*x011 + t_s*x111))/t_s^3;
                    x112 + (2*(t - t_s)*(3*x02 - 3*x12 + t_s*x012 + 2*t_s*x112))/t_s^2 + (3*(t - t_s)^2*(2*x02 - 2*x12 + t_s*x012 + t_s*x112))/t_s^3;
                    x113 + (2*(t - t_s)*(3*x03 - 3*x13 + t_s*x013 + 2*t_s*x113))/t_s^2 + (3*(t - t_s)^2*(2*x03 - 2*x13 + t_s*x013 + t_s*x113))/t_s^3;
                    x114 + (2*(t - t_s)*(3*x04 - 3*x14 + t_s*x014 + 2*t_s*x114))/t_s^2 + (3*(t - t_s)^2*(2*x04 - 2*x14 + t_s*x014 + t_s*x114))/t_s^3;
                    x115 + (2*(t - t_s)*(3*x05 - 3*x15 + t_s*x015 + 2*t_s*x115))/t_s^2 + (3*(t - t_s)^2*(2*x05 - 2*x15 + t_s*x015 + t_s*x115))/t_s^3;
                    x116 + (2*(t - t_s)*(3*x06 - 3*x16 + t_s*x016 + 2*t_s*x116))/t_s^2 + (3*(t - t_s)^2*(2*x06 - 2*x16 + t_s*x016 + t_s*x116))/t_s^3;
                    x117 + (2*(t - t_s)*(3*x07 - 3*x17 + t_s*x017 + 2*t_s*x117))/t_s^2 + (3*(t - t_s)^2*(2*x07 - 2*x17 + t_s*x017 + t_s*x117))/t_s^3;
                    x118 + (2*(t - t_s)*(3*x08 - 3*x18 + t_s*x018 + 2*t_s*x118))/t_s^2 + (3*(t - t_s)^2*(2*x08 - 2*x18 + t_s*x018 + t_s*x118))/t_s^3;
                    x119 + (2*(t - t_s)*(3*x09 - 3*x19 + t_s*x019 + 2*t_s*x119))/t_s^2 + (3*(t - t_s)^2*(2*x09 - 2*x19 + t_s*x019 + t_s*x119))/t_s^3;
                x120 + (2*(t - t_s)*(3*x010 - 3*x110 + t_s*x020 + 2*t_s*x120))/t_s^2 + (3*(t - t_s)^2*(2*x010 - 2*x110 + t_s*x020 + t_s*x120))/t_s^3];
end