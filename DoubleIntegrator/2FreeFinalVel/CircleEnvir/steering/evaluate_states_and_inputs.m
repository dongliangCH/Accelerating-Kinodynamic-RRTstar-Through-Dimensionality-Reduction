        function [states, inputs] = evaluate_states_and_inputs(obj, x0_, x1_, time)

            if ~exist('time','var') || isempty(time)
                time = obj.evaluate_arrival_time(x0_, x1_);
            end

            %s = subs(obj.states_eq, obj.x0, x0_);
            %s = subs(s, obj.x1, x1_);
            %states = subs(s, obj.t_s, time);

            %c = subs(obj.control_eq, obj.x0, x0_);
            %c = subs(c, obj.x1, x1_);
            %inputs = subs(c, obj.t_s, time);

            in = num2cell([time, x0_', x1_']);
            states = @(t)obj.eval_states_internal(t, in{:});
            inputs = @(t)obj.eval_control_internal(t, in{:});

        end