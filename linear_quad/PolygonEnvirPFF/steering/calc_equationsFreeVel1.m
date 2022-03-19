
        function [H, states, control, cost] = calc_equationsFreeVel1(obj, A, B, R, S, c, envir_dim, state_dims)
            %the solution of the equation 'tau_star = 0' gives the best arrival time
            %states, control, and cost depend on t_s which is the solution from above
            
            G = int(expm(A*(obj.t-obj.x))*B/R*B'*expm(A'*(obj.t-obj.x)), obj.x, 0, obj.t);

            x_bar = expm(A*obj.t)*obj.x0+int(expm(A*(obj.t-obj.x))*c, obj.x, 0, obj.t);
            
            y = obj.x1;
            xf_1 = y(1:envir_dim);
            y = x_bar - [xf_1; zeros(state_dims-envir_dim,1)];
            GG = 0.5 * G * blkdiag(eye(envir_dim), S) + blkdiag(zeros(envir_dim,envir_dim), eye(state_dims-envir_dim));
            lamda = GG\y;
            xf = [xf_1; lamda(envir_dim+1 : state_dims)];
            lamda = blkdiag(eye(envir_dim), S) * lamda;     
            
            H = 1 + lamda'*(A*xf + c) - 1/4*(lamda'*B/R*B'*lamda);
%             tau_star = 1 + lamda'* c + lamda'*A*x_bar - lamda'*A/2 * G*lamda - 1/4*(lamda'*B/R*B'*lamda);             
            
            control = - 1/2 * (R\B'* expm(A'*(obj.t_s - obj.t))*subs(lamda,obj.t,obj.t_s));
            states = expm(A*obj.t)*obj.x0 + int(expm(A*(obj.t - obj.x)) * (B * subs(control, obj.t, obj.x) + c), obj.x, 0, obj.t);
            
%             H = 1 + subs(control, obj.t_s, obj.t)' * R * subs(control, obj.t_s, obj.t) + lamda'*(A*subs(states, obj.t_s, obj.t)+B*subs(control, obj.t_s, obj.t) + c);

%             cost = obj.t_s + (1/4) * subs(lamda,obj.t,obj.t_s)' * subs(G,obj.t,obj.t_s) * subs(lamda,obj.t,obj.t_s);   % shorter
            cost = int(1+control'*R*control, obj.t, 0, obj.t_s);   

        end