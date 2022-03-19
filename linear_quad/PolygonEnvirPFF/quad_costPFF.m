function cost = quad_costPFF(t_s,x01, x02, x03, x04, x05, x06, x07, x08, x09, x010, x11, x12, x13)
cost = (6.3312e62*t_s^14 + 1.284e63*t_s^12*x06^2 + 9.9677e61*t_s^12*x09^2 + 9.9677e61*t_s^12*x010^2 + 2.5679e63*t_s^11*x03*x06 - 2.5679e63*t_s^11*x06*x13 + 8.9709e62*t_s^11*x07*x09 + 8.9709e62*t_s^11*x08*x010 + 3.7379e62*t_s^11 + 1.284e63*t_s^10*x03^2 - 2.5679e63*t_s^10*x03*x13 + 2.1338e62*t_s^10*x04*x010 - 2.1338e62*t_s^10*x05*x09 + 2.5418e63*t_s^10*x07^2 + 2.5418e63*t_s^10*x08^2 + 1.284e63*t_s^10*x13^2 + 2.1338e62*t_s^9*x01*x010 - 2.1338e62*t_s^9*x02*x09 + 1.2803e63*t_s^9*x04*x08 - 1.2803e63*t_s^9*x05*x07 + 7.5804e62*t_s^9*x06^2 + 4.1193e61*t_s^9*x09^2 + 2.1338e62*t_s^9*x09*x12 + 4.1193e61*t_s^9*x010^2 - 2.1338e62*t_s^9*x010*x11 + 1.2803e63*t_s^8*x01*x08 - 1.2803e63*t_s^8*x02*x07 + 1.5161e63*t_s^8*x03*x06 + 1.6313e62*t_s^8*x04^2 + 1.6313e62*t_s^8*x05^2 - 1.5161e63*t_s^8*x06*x13 + 2.4716e62*t_s^8*x07*x09 + 1.2803e63*t_s^8*x07*x12 + 2.4716e62*t_s^8*x08*x010 - 1.2803e63*t_s^8*x08*x11 + 5.517e61*t_s^8 + 3.2626e62*t_s^7*x01*x04 + 3.2626e62*t_s^7*x02*x05 + 7.5804e62*t_s^7*x03^2 - 1.5161e63*t_s^7*x03*x13 + 5.039e61*t_s^7*x04*x010 - 3.2626e62*t_s^7*x04*x11 - 5.039e61*t_s^7*x05*x09 - 3.2626e62*t_s^7*x05*x12 + 3.7074e62*t_s^7*x07^2 + 3.7074e62*t_s^7*x08^2 + 7.5804e62*t_s^7*x13^2 + 1.6313e62*t_s^6*x01^2 + 5.039e61*t_s^6*x01*x010 - 3.2626e62*t_s^6*x01*x11 + 1.6313e62*t_s^6*x02^2 - 5.039e61*t_s^6*x02*x09 - 3.2626e62*t_s^6*x02*x12 + 1.5117e62*t_s^6*x04*x08 - 1.5117e62*t_s^6*x05*x07 + 1.1188e62*t_s^6*x06^2 + 6.08e60*t_s^6*x09^2 + 5.039e61*t_s^6*x09*x12 + 6.08e60*t_s^6*x010^2 - 5.039e61*t_s^6*x010*x11 + 1.6313e62*t_s^6*x11^2 + 1.6313e62*t_s^6*x12^2 + 1.5117e62*t_s^5*x01*x08 - 1.5117e62*t_s^5*x02*x07 + 2.2377e62*t_s^5*x03*x06 + 1.541e61*t_s^5*x04^2 + 1.541e61*t_s^5*x05^2 - 2.2377e62*t_s^5*x06*x13 + 3.648e61*t_s^5*x07*x09 + 1.5117e62*t_s^5*x07*x12 + 3.648e61*t_s^5*x08*x010 - 1.5117e62*t_s^5*x08*x11 + 3.0819e61*t_s^4*x01*x04 + 3.0819e61*t_s^4*x02*x05 + 1.1188e62*t_s^4*x03^2 - 2.2377e62*t_s^4*x03*x13 + 7.4373e60*t_s^4*x04*x010 - 3.0819e61*t_s^4*x04*x11 - 7.4373e60*t_s^4*x05*x09 - 3.0819e61*t_s^4*x05*x12 + 5.472e61*t_s^4*x07^2 + 5.472e61*t_s^4*x08^2 + 1.1188e62*t_s^4*x13^2 + 1.541e61*t_s^3*x01^2 + 7.4373e60*t_s^3*x01*x010 - 3.0819e61*t_s^3*x01*x11 + 1.541e61*t_s^3*x02^2 - 7.4373e60*t_s^3*x02*x09 - 3.0819e61*t_s^3*x02*x12 + 2.2312e61*t_s^3*x04*x08 - 2.2312e61*t_s^3*x05*x07 + 7.4373e60*t_s^3*x09*x12 - 7.4373e60*t_s^3*x010*x11 + 1.541e61*t_s^3*x11^2 + 1.541e61*t_s^3*x12^2 + 2.2312e61*t_s^2*x01*x08 - 2.2312e61*t_s^2*x02*x07 + 2.2744e60*t_s^2*x04^2 + 2.2744e60*t_s^2*x05^2 + 2.2312e61*t_s^2*x07*x12 - 2.2312e61*t_s^2*x08*x11 + 4.5488e60*t_s*x01*x04 + 4.5488e60*t_s*x02*x05 - 4.5488e60*t_s*x04*x11 - 4.5488e60*t_s*x05*x12 + 2.2744e60*x01^2 - 4.5488e60*x01*x11 + 2.2744e60*x02^2 - 4.5488e60*x02*x12 + 2.2744e60*x11^2 + 2.2744e60*x12^2)/(t_s^7*(2.5162e31*t_s^3 + 7.4276e30)^2);
end