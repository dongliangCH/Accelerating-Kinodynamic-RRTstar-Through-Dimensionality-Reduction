
        function [tau_star, states, control, cost] = calc_equationsFreeVel(obj, A, B, R, c, envir_dim, state_dims)
            %the solution of the equation 'tau_star = 0' gives the best arrival time
            %states, control, and cost depend on t_s which is the solution from above
            
            G = int(expm(A*(obj.t-obj.x))*B/R*B'*expm(A'*(obj.t-obj.x)), obj.x, 0, obj.t);
            G_11 = G(1:envir_dim, 1:envir_dim);
            x_bar = expm(A*obj.t)*obj.x0+int(expm(A*(obj.t-obj.x))*c, obj.x, 0, obj.t);
            y = x_bar - obj.x1;
            y_1 = y(1:envir_dim);
            lamda_1 = 2*(G_11\y_1);
            lamda = [lamda_1; zeros((state_dims - envir_dim),1)];
            tau_star = 1 + lamda'* c + lamda'*A*x_bar - lamda'*A/2 * G*lamda - 1/4*(lamda'*B/R*B'*lamda);                % shorter
            
            control = - 1/2 * (R\B'* expm(A'*(obj.t_s - obj.t))*subs(lamda,obj.t,obj.t_s));
            states = expm(A*obj.t)*obj.x0 + int(expm(A*(obj.t - obj.x)) * (B * subs(control, obj.t, obj.x) + c), obj.x, 0, obj.t);
            
%             H = 1 + subs(control, obj.t_s, obj.t)' * R * subs(control, obj.t_s, obj.t) + lamda'*(A*subs(states, obj.t_s, obj.t)+B*subs(control, obj.t_s, obj.t) + c);

%             cost = obj.t_s + (1/4) * subs(lamda,obj.t,obj.t_s)' * subs(G,obj.t,obj.t_s) * subs(lamda,obj.t,obj.t_s);   % shorter
            cost = int(1+control'*R*control, obj.t, 0, obj.t_s);   

        end