        function [cost, time] = evaluate_cost(obj, x0_, x1_, time)

            if ~exist('time','var') || isempty(time)
                time = evaluate_arrival_time(obj, x0_, x1_);
            end
            %c = subs(obj.cost_eq, obj.x0, x0_);
            %c = subs(c, obj.x1, x1_);
            %c = subs(c, obj.t_s, time);
            %cost = eval(c);

            in = num2cell([time, x0_', x1_']);
            cost = obj.eval_cost_internal(in{:});
        end