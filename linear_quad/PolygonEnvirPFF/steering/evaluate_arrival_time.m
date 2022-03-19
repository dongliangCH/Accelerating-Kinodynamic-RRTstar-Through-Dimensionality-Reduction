        function [time] = evaluate_arrival_time(obj, x0_, x1_)
            %arr = subs(obj.best_arrival, obj.x0, x0_);
            %arr = subs(arr, obj.x1, x1_);
            %time_a = min(eval(solve(arr, 'Real', true))); %symbolical version

            in = num2cell([x0_', x1_']);
            time = roots(obj.eval_arrival_internal(in{:}));
            time = time(imag(time)==0);
            time = min(time(time>=0));

        end