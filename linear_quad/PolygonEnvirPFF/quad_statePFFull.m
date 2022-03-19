function states = quad_statePFFull(t,t_s,x01, x02, x03, x04, x05, x06, x07, x08, x09, x010, x11, x12, x13)
states = [ x01 + t*x04 + 4.905*t^2*x08 + 1.635*t^3*x010 + (1.6513e32*t^4*x01)/(2.5162e31*t_s^4 + 7.4276e30*t_s) - (1.6513e32*t^4*x11)/(2.5162e31*t_s^4 + 7.4276e30*t_s) - (3.3025e31*t^5*x01)/(2.5162e31*t_s^5 + 7.4276e30*t_s^2) - (1.2998e31*t^4*x01)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) + (7.799e30*t^5*x01)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) - (2.5997e30*t^6*x01)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) + (3.3025e31*t^5*x11)/(2.5162e31*t_s^5 + 7.4276e30*t_s^2) + (3.7138e29*t^7*x01)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7) + (1.2998e31*t^4*x11)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) - (7.799e30*t^5*x11)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) + (2.5997e30*t^6*x11)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) - (3.7138e29*t^7*x11)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7) - (2.7521e32*t^4*t_s^3*x01)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) - (1.2342e32*t^5*t_s^2*x08)/(2.5162e31*t_s^5 + 7.4276e30*t_s^2) + (1.6513e32*t^5*t_s^3*x01)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) - (2.7521e32*t^4*t_s^4*x04)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) - (6.3757e31*t^4*t_s^2*x08)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) - (1.5427e31*t^5*t_s^3*x010)/(2.5162e31*t_s^5 + 7.4276e30*t_s^2) - (5.5042e31*t^6*t_s^3*x01)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) + (1.6513e32*t^5*t_s^4*x04)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) - (2.1252e31*t^4*t_s^3*x010)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) - (1.0799e33*t^4*t_s^5*x08)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) + (3.8254e31*t^5*t_s^2*x08)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) + (7.8631e30*t^7*t_s^3*x01)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7) + (2.7521e32*t^4*t_s^3*x11)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) - (5.5042e31*t^6*t_s^4*x04)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) - (1.7999e32*t^4*t_s^6*x010)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) + (1.2751e31*t^5*t_s^3*x010)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) + (6.4795e32*t^5*t_s^5*x08)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) - (1.2751e31*t^6*t_s^2*x08)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) - (1.6513e32*t^5*t_s^3*x11)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) + (7.8631e30*t^7*t_s^4*x04)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7) + (1.0799e32*t^5*t_s^6*x010)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) - (4.2505e30*t^6*t_s^3*x010)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) - (2.1598e32*t^6*t_s^5*x08)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) + (1.8216e30*t^7*t_s^2*x08)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7) + (5.5042e31*t^6*t_s^3*x11)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) - (3.5997e31*t^6*t_s^6*x010)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) + (6.0721e29*t^7*t_s^3*x010)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7) + (3.0855e31*t^7*t_s^5*x08)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7) - (7.8631e30*t^7*t_s^3*x11)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7) + (5.1425e30*t^7*t_s^6*x010)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7) + (1.6513e32*t^4*t_s*x04)/(2.5162e31*t_s^4 + 7.4276e30*t_s) - (3.3025e31*t^5*t_s*x04)/(2.5162e31*t_s^5 + 7.4276e30*t_s^2) + (6.171e32*t^4*t_s^2*x08)/(2.5162e31*t_s^4 + 7.4276e30*t_s) - (1.2998e31*t^4*t_s*x04)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) + (7.7137e31*t^4*t_s^3*x010)/(2.5162e31*t_s^4 + 7.4276e30*t_s) + (7.799e30*t^5*t_s*x04)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) - (2.5997e30*t^6*t_s*x04)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) + (3.7138e29*t^7*t_s*x04)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7);
            x02 + t*x05 - 4.905*t^2*x07 - 1.635*t^3*x09 + (1.6513e32*t^4*x02)/(2.5162e31*t_s^4 + 7.4276e30*t_s) - (1.6513e32*t^4*x12)/(2.5162e31*t_s^4 + 7.4276e30*t_s) - (3.3025e31*t^5*x02)/(2.5162e31*t_s^5 + 7.4276e30*t_s^2) - (1.2998e31*t^4*x02)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) + (7.799e30*t^5*x02)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) - (2.5997e30*t^6*x02)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) + (3.3025e31*t^5*x12)/(2.5162e31*t_s^5 + 7.4276e30*t_s^2) + (3.7138e29*t^7*x02)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7) + (1.2998e31*t^4*x12)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) - (7.799e30*t^5*x12)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) + (2.5997e30*t^6*x12)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) - (3.7138e29*t^7*x12)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7) - (2.7521e32*t^4*t_s^3*x02)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) + (1.2342e32*t^5*t_s^2*x07)/(2.5162e31*t_s^5 + 7.4276e30*t_s^2) + (1.6513e32*t^5*t_s^3*x02)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) + (6.3757e31*t^4*t_s^2*x07)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) - (2.7521e32*t^4*t_s^4*x05)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) + (1.5427e31*t^5*t_s^3*x09)/(2.5162e31*t_s^5 + 7.4276e30*t_s^2) - (5.5042e31*t^6*t_s^3*x02)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) + (2.1252e31*t^4*t_s^3*x09)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) + (1.0799e33*t^4*t_s^5*x07)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) - (3.8254e31*t^5*t_s^2*x07)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) + (1.6513e32*t^5*t_s^4*x05)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) + (7.8631e30*t^7*t_s^3*x02)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7) + (2.7521e32*t^4*t_s^3*x12)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) + (1.7999e32*t^4*t_s^6*x09)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) - (1.2751e31*t^5*t_s^3*x09)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) - (6.4795e32*t^5*t_s^5*x07)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) + (1.2751e31*t^6*t_s^2*x07)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) - (5.5042e31*t^6*t_s^4*x05)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) - (1.6513e32*t^5*t_s^3*x12)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) - (1.0799e32*t^5*t_s^6*x09)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) + (4.2505e30*t^6*t_s^3*x09)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) + (2.1598e32*t^6*t_s^5*x07)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) - (1.8216e30*t^7*t_s^2*x07)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7) + (7.8631e30*t^7*t_s^4*x05)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7) + (5.5042e31*t^6*t_s^3*x12)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) + (3.5997e31*t^6*t_s^6*x09)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) - (6.0721e29*t^7*t_s^3*x09)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7) - (3.0855e31*t^7*t_s^5*x07)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7) - (7.8631e30*t^7*t_s^3*x12)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7) - (5.1425e30*t^7*t_s^6*x09)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7) + (1.6513e32*t^4*t_s*x05)/(2.5162e31*t_s^4 + 7.4276e30*t_s) - (6.171e32*t^4*t_s^2*x07)/(2.5162e31*t_s^4 + 7.4276e30*t_s) - (3.3025e31*t^5*t_s*x05)/(2.5162e31*t_s^5 + 7.4276e30*t_s^2) - (1.2998e31*t^4*t_s*x05)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) - (7.7137e31*t^4*t_s^3*x09)/(2.5162e31*t_s^4 + 7.4276e30*t_s) + (7.799e30*t^5*t_s*x05)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) - (2.5997e30*t^6*t_s*x05)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) + (3.7138e29*t^7*t_s*x05)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          x03 + t*x06 + (0.5*t^2*(t - 3.0*t_s)*(x03 - 1.0*x13 + t_s*x06))/t_s^3;
            x04 + 9.81*t*x08 + 4.905*t^2*x010 + (6.605e32*t^3*x01)/(2.5162e31*t_s^4 + 7.4276e30*t_s) - (6.605e32*t^3*x11)/(2.5162e31*t_s^4 + 7.4276e30*t_s) - (1.6513e32*t^4*x01)/(2.5162e31*t_s^5 + 7.4276e30*t_s^2) - (5.1993e31*t^3*x01)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) + (3.8995e31*t^4*x01)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) - (1.5598e31*t^5*x01)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) + (1.6513e32*t^4*x11)/(2.5162e31*t_s^5 + 7.4276e30*t_s^2) + (2.5997e30*t^6*x01)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7) + (5.1993e31*t^3*x11)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) - (3.8995e31*t^4*x11)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) + (1.5598e31*t^5*x11)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) - (2.5997e30*t^6*x11)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7) - (1.1008e33*t^3*t_s^3*x01)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) - (6.171e32*t^4*t_s^2*x08)/(2.5162e31*t_s^5 + 7.4276e30*t_s^2) + (8.2563e32*t^4*t_s^3*x01)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) - (1.1008e33*t^3*t_s^4*x04)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) - (2.5503e32*t^3*t_s^2*x08)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) - (7.7137e31*t^4*t_s^3*x010)/(2.5162e31*t_s^5 + 7.4276e30*t_s^2) - (3.3025e32*t^5*t_s^3*x01)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) + (8.2563e32*t^4*t_s^4*x04)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) - (8.5009e31*t^3*t_s^3*x010)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) - (4.3197e33*t^3*t_s^5*x08)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) + (1.9127e32*t^4*t_s^2*x08)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) + (5.5042e31*t^6*t_s^3*x01)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7) + (1.1008e33*t^3*t_s^3*x11)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) - (3.3025e32*t^5*t_s^4*x04)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) - (7.1995e32*t^3*t_s^6*x010)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) + (6.3757e31*t^4*t_s^3*x010)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) + (3.2398e33*t^4*t_s^5*x08)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) - (7.6508e31*t^5*t_s^2*x08)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) - (8.2563e32*t^4*t_s^3*x11)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) + (5.5042e31*t^6*t_s^4*x04)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7) + (5.3996e32*t^4*t_s^6*x010)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) - (2.5503e31*t^5*t_s^3*x010)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) - (1.2959e33*t^5*t_s^5*x08)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) + (1.2751e31*t^6*t_s^2*x08)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7) + (3.3025e32*t^5*t_s^3*x11)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) - (2.1598e32*t^5*t_s^6*x010)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) + (4.2505e30*t^6*t_s^3*x010)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7) + (2.1598e32*t^6*t_s^5*x08)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7) - (5.5042e31*t^6*t_s^3*x11)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7) + (3.5997e31*t^6*t_s^6*x010)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7) + (6.605e32*t^3*t_s*x04)/(2.5162e31*t_s^4 + 7.4276e30*t_s) - (1.6513e32*t^4*t_s*x04)/(2.5162e31*t_s^5 + 7.4276e30*t_s^2) + (2.4684e33*t^3*t_s^2*x08)/(2.5162e31*t_s^4 + 7.4276e30*t_s) - (5.1993e31*t^3*t_s*x04)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) + (3.0855e32*t^3*t_s^3*x010)/(2.5162e31*t_s^4 + 7.4276e30*t_s) + (3.8995e31*t^4*t_s*x04)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) - (1.5598e31*t^5*t_s*x04)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) + (2.5997e30*t^6*t_s*x04)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7);
                       x05 - 9.81*t*x07 - 4.905*t^2*x09 + (6.605e32*t^3*x02)/(2.5162e31*t_s^4 + 7.4276e30*t_s) - (6.605e32*t^3*x12)/(2.5162e31*t_s^4 + 7.4276e30*t_s) - (1.6513e32*t^4*x02)/(2.5162e31*t_s^5 + 7.4276e30*t_s^2) - (5.1993e31*t^3*x02)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) + (3.8995e31*t^4*x02)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) - (1.5598e31*t^5*x02)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) + (1.6513e32*t^4*x12)/(2.5162e31*t_s^5 + 7.4276e30*t_s^2) + (2.5997e30*t^6*x02)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7) + (5.1993e31*t^3*x12)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) - (3.8995e31*t^4*x12)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) + (1.5598e31*t^5*x12)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) - (2.5997e30*t^6*x12)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7) - (1.1008e33*t^3*t_s^3*x02)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) + (6.171e32*t^4*t_s^2*x07)/(2.5162e31*t_s^5 + 7.4276e30*t_s^2) + (8.2563e32*t^4*t_s^3*x02)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) + (2.5503e32*t^3*t_s^2*x07)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) - (1.1008e33*t^3*t_s^4*x05)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) + (7.7137e31*t^4*t_s^3*x09)/(2.5162e31*t_s^5 + 7.4276e30*t_s^2) - (3.3025e32*t^5*t_s^3*x02)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) + (8.5009e31*t^3*t_s^3*x09)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) + (4.3197e33*t^3*t_s^5*x07)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) - (1.9127e32*t^4*t_s^2*x07)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) + (8.2563e32*t^4*t_s^4*x05)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) + (5.5042e31*t^6*t_s^3*x02)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7) + (1.1008e33*t^3*t_s^3*x12)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) + (7.1995e32*t^3*t_s^6*x09)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) - (6.3757e31*t^4*t_s^3*x09)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) - (3.2398e33*t^4*t_s^5*x07)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) + (7.6508e31*t^5*t_s^2*x07)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) - (3.3025e32*t^5*t_s^4*x05)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) - (8.2563e32*t^4*t_s^3*x12)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) - (5.3996e32*t^4*t_s^6*x09)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) + (2.5503e31*t^5*t_s^3*x09)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) + (1.2959e33*t^5*t_s^5*x07)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) - (1.2751e31*t^6*t_s^2*x07)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7) + (5.5042e31*t^6*t_s^4*x05)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7) + (3.3025e32*t^5*t_s^3*x12)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) + (2.1598e32*t^5*t_s^6*x09)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) - (4.2505e30*t^6*t_s^3*x09)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7) - (2.1598e32*t^6*t_s^5*x07)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7) - (5.5042e31*t^6*t_s^3*x12)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7) - (3.5997e31*t^6*t_s^6*x09)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7) + (6.605e32*t^3*t_s*x05)/(2.5162e31*t_s^4 + 7.4276e30*t_s) - (2.4684e33*t^3*t_s^2*x07)/(2.5162e31*t_s^4 + 7.4276e30*t_s) - (1.6513e32*t^4*t_s*x05)/(2.5162e31*t_s^5 + 7.4276e30*t_s^2) - (5.1993e31*t^3*t_s*x05)/(2.5162e31*t_s^7 + 7.4276e30*t_s^4) - (3.0855e32*t^3*t_s^3*x09)/(2.5162e31*t_s^4 + 7.4276e30*t_s) + (3.8995e31*t^4*t_s*x05)/(2.5162e31*t_s^8 + 7.4276e30*t_s^5) - (1.5598e31*t^5*t_s*x05)/(2.5162e31*t_s^9 + 7.4276e30*t_s^6) + (2.5997e30*t^6*t_s*x05)/(2.5162e31*t_s^10 + 7.4276e30*t_s^7);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    x06 + (1.5*t*(t - 2.0*t_s)*(x03 - 1.0*x13 + t_s*x06))/t_s^3;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          x07 + t*x09 - (0.00038226*t^2*(4.1595e33*t^3*x02 - 4.1595e33*t^3*x12 - 4.1595e34*t_s^3*x02 - 3.5227e35*t_s^6*x02 - 4.1595e34*t_s^4*x05 + 2.0402e35*t_s^5*x07 - 3.5227e35*t_s^7*x05 + 4.1595e34*t_s^3*x12 + 6.8007e34*t_s^6*x09 + 1.481e36*t_s^8*x07 + 3.5227e35*t_s^6*x12 + 3.2912e35*t_s^9*x09 + 4.1595e34*t*t_s^2*x02 - 2.0797e34*t^2*t_s*x02 + 7.0453e35*t*t_s^5*x02 + 4.1595e34*t*t_s^3*x05 + 4.1595e33*t^3*t_s*x05 - 2.0402e35*t*t_s^4*x07 + 7.0453e35*t*t_s^6*x05 - 4.1595e34*t*t_s^2*x12 - 6.8007e34*t*t_s^5*x09 - 2.7975e36*t*t_s^7*x07 + 2.0797e34*t^2*t_s*x12 - 7.0453e35*t*t_s^5*x12 - 4.9368e35*t*t_s^8*x09 - 4.4033e35*t^2*t_s^4*x02 + 8.8067e34*t^3*t_s^3*x02 - 2.0797e34*t^2*t_s^2*x05 + 1.0201e35*t^2*t_s^3*x07 - 4.4033e35*t^2*t_s^5*x05 - 2.0402e34*t^3*t_s^2*x07 + 8.8067e34*t^3*t_s^4*x05 + 3.4004e34*t^2*t_s^4*x09 + 1.7279e36*t^2*t_s^6*x07 - 6.8007e33*t^3*t_s^3*x09 - 3.4557e35*t^3*t_s^5*x07 + 4.4033e35*t^2*t_s^4*x12 + 2.8798e35*t^2*t_s^7*x09 - 8.8067e34*t^3*t_s^3*x12 - 5.7596e34*t^3*t_s^6*x09))/(t_s^7*(2.5162e31*t_s^3 + 7.4276e30));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 x08 + t*x010 + (0.00038226*t^2*(4.1595e33*t^3*x01 - 4.1595e33*t^3*x11 - 4.1595e34*t_s^3*x01 - 3.5227e35*t_s^6*x01 - 4.1595e34*t_s^4*x04 - 3.5227e35*t_s^7*x04 - 2.0402e35*t_s^5*x08 + 4.1595e34*t_s^3*x11 - 6.8007e34*t_s^6*x010 - 1.481e36*t_s^8*x08 + 3.5227e35*t_s^6*x11 - 3.2912e35*t_s^9*x010 + 4.1595e34*t*t_s^2*x01 - 2.0797e34*t^2*t_s*x01 + 7.0453e35*t*t_s^5*x01 + 4.1595e34*t*t_s^3*x04 + 4.1595e33*t^3*t_s*x04 + 7.0453e35*t*t_s^6*x04 + 2.0402e35*t*t_s^4*x08 - 4.1595e34*t*t_s^2*x11 + 2.0797e34*t^2*t_s*x11 + 6.8007e34*t*t_s^5*x010 + 2.7975e36*t*t_s^7*x08 - 7.0453e35*t*t_s^5*x11 + 4.9368e35*t*t_s^8*x010 - 4.4033e35*t^2*t_s^4*x01 + 8.8067e34*t^3*t_s^3*x01 - 2.0797e34*t^2*t_s^2*x04 - 4.4033e35*t^2*t_s^5*x04 + 8.8067e34*t^3*t_s^4*x04 - 1.0201e35*t^2*t_s^3*x08 + 2.0402e34*t^3*t_s^2*x08 - 3.4004e34*t^2*t_s^4*x010 - 1.7279e36*t^2*t_s^6*x08 + 6.8007e33*t^3*t_s^3*x010 + 3.4557e35*t^3*t_s^5*x08 + 4.4033e35*t^2*t_s^4*x11 - 8.8067e34*t^3*t_s^3*x11 - 2.8798e35*t^2*t_s^7*x010 + 5.7596e34*t^3*t_s^6*x010))/(t_s^7*(2.5162e31*t_s^3 + 7.4276e30));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                x09 + (0.0019113*t*(t - 2.0*t_s)*(4.1595e33*t^2*x12 - 4.1595e33*t^2*x02 - 8.319e33*t_s^2*x02 - 7.0453e34*t_s^5*x02 - 8.319e33*t_s^3*x05 + 4.0804e34*t_s^4*x07 - 7.0453e34*t_s^6*x05 + 8.319e33*t_s^2*x12 + 1.3601e34*t_s^5*x09 + 2.9621e35*t_s^7*x07 + 7.0453e34*t_s^5*x12 + 6.5824e34*t_s^8*x09 + 1.7613e35*t*t_s^4*x02 + 8.319e33*t*t_s^2*x05 - 4.1595e33*t^2*t_s*x05 - 4.0804e34*t*t_s^3*x07 + 1.7613e35*t*t_s^5*x05 - 1.3601e34*t*t_s^4*x09 - 6.9115e35*t*t_s^6*x07 - 1.7613e35*t*t_s^4*x12 - 1.1519e35*t*t_s^7*x09 - 8.8067e34*t^2*t_s^3*x02 + 2.0402e34*t^2*t_s^2*x07 - 8.8067e34*t^2*t_s^4*x05 + 6.8007e33*t^2*t_s^3*x09 + 3.4557e35*t^2*t_s^5*x07 + 8.8067e34*t^2*t_s^3*x12 + 5.7596e34*t^2*t_s^6*x09 + 8.319e33*t*t_s*x02 - 8.319e33*t*t_s*x12))/(t_s^7*(2.5162e31*t_s^3 + 7.4276e30));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         x010 + (0.0019113*t*(t - 2.0*t_s)*(4.1595e33*t^2*x01 - 4.1595e33*t^2*x11 + 8.319e33*t_s^2*x01 + 7.0453e34*t_s^5*x01 + 8.319e33*t_s^3*x04 + 7.0453e34*t_s^6*x04 + 4.0804e34*t_s^4*x08 - 8.319e33*t_s^2*x11 + 1.3601e34*t_s^5*x010 + 2.9621e35*t_s^7*x08 - 7.0453e34*t_s^5*x11 + 6.5824e34*t_s^8*x010 - 1.7613e35*t*t_s^4*x01 - 8.319e33*t*t_s^2*x04 + 4.1595e33*t^2*t_s*x04 - 1.7613e35*t*t_s^5*x04 - 4.0804e34*t*t_s^3*x08 - 1.3601e34*t*t_s^4*x010 - 6.9115e35*t*t_s^6*x08 + 1.7613e35*t*t_s^4*x11 - 1.1519e35*t*t_s^7*x010 + 8.8067e34*t^2*t_s^3*x01 + 8.8067e34*t^2*t_s^4*x04 + 2.0402e34*t^2*t_s^2*x08 + 6.8007e33*t^2*t_s^3*x010 + 3.4557e35*t^2*t_s^5*x08 - 8.8067e34*t^2*t_s^3*x11 + 5.7596e34*t^2*t_s^6*x010 - 8.319e33*t*t_s*x01 + 8.319e33*t*t_s*x11))/(t_s^7*(2.5162e31*t_s^3 + 7.4276e30))];
end