
        function [tau_star, states, control, cost] = calc_equations(obj, A, B, R, c)
            %the solution of the equation 'tau_star = 0' gives the best arrival time
            %states, control, and cost depend on t_s which is the solution from above
            state_dims = size(A,1);

            G = int(expm(A*(obj.t-obj.x))*B/R*B'*expm(A'*(obj.t-obj.x)), obj.x, 0, obj.t);
            x_bar = expm(A*obj.t)*obj.x0+int(expm(A*(obj.t-obj.x))*c, obj.x, 0, obj.t);

            d = G\(obj.x1-x_bar);
            tau_star = 1-2*(A*obj.x1+c)'*d-d'*B/R*B'*d;

            solution = expm([A, B/R*B';zeros(state_dims), -A']*(obj.t-obj.t_s))*[obj.x1;subs(d,obj.t,obj.t_s)]+ ...
                int(expm([A, B/R*B';zeros(state_dims), -A']*(obj.t-obj.x))*[c; zeros(state_dims,1)],obj.x,obj.t_s,obj.t);

            control = R\B'*solution(state_dims+1:2*state_dims,:);
            states = solution(1:state_dims);

            cost = int(1+control'*R*control, obj.t, 0, obj.t_s);

        end