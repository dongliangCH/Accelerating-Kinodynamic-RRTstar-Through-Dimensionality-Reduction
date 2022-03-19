% linear quadrotor model
% 10 dimensional system,for the PFF controller, only the first three
% position is fixed, the other 7 dimension if free.

clear
envir_dim = 3;

% linear quadrotor (10d)
init_quad;
% S = diag([1,1,1,10,10,0,0]) * 0.2;  % working so so
% S = diag([0.2,0.2,0.2,10,10,0,0]) * 0.2;  % working ok
% S = diag([0,0,0,10,10,0,0]) * 0.2;  % working
S = diag([0,0,0,10,10,0,0]) * 0.4;
x0 = [1; 3; 2; 0; 0; 0; 0; 0; 0; 0];
x1 = [6; 2; 4; 0; 0; 0; 0; 0; 0; 0]; 

obj.t = sym('t', 'positive');
obj.x = sym('x', 'positive'); %used for integration
obj.t_s = sym('t_s', 'real'); %optimal arrival time
        
state_dims = size(A,1);
obj.x0 = sym('x0',[state_dims,1]);
assume(obj.x0, 'real');
obj.x1 = sym('x1',[state_dims,1]);
assume(obj.x1, 'real');

% %% Free final Velocity
% [obj.best_arrivalFreeVel, obj.states_eqFreeVel, obj.control_eqFreeVel, obj.cost_eqFreeVel]=calc_equationsFreeVel(obj, A, B, R, c, envir_dim, state_dims);
%             
% %%calculate the factors for the resulting polynomial explicitly
% p1 = [];
% it = 0;
% while it < 20 && length(p1) <= 1 %just so mupad knows it's a polynomial
%     p1 = feval(symengine,'coeff',simplifyFraction(obj.best_arrivalFreeVel*obj.t^it), obj.t, 'All');
%     it = it+1;                          
% end
% if it > 20
%     disp('either the result is not a polynomial or the degree is too high');
% end
% 
% p([obj.x0', obj.x1(1:envir_dim)']) = fliplr(p1);
% obj.eval_arrivalFreeVel_internal = matlabFunction(p); %matlabFunction(p, 'file', 'arrival_time.m'); %to write to file
% 
% obj.eval_costFreeVel_internal = matlabFunction(obj.cost_eqFreeVel);
% obj.eval_statesFreeVel_internal = matlabFunction(obj.states_eqFreeVel);
% obj.eval_controlFreeVel_internal = matlabFunction(obj.control_eqFreeVel);
% 
% in = num2cell([x0', x1(1:envir_dim)']);
% time = roots(obj.eval_arrivalFreeVel_internal(in{:}));
% time = time(imag(time)==0);
% time = min(time(time>=0));
% % time = 1;            
% cost = obj.eval_costFreeVel_internal(time, in{:});
% states = @(t)obj.eval_statesFreeVel_internal(t, time, in{:});
% inputs = @(t)obj.eval_controlFreeVel_internal(t, time, in{:});
%             
% dt = 0.1;
% Horizon = time/dt;
% t = linspace(0,time,Horizon);
% states = eval(subs(states,t));
% traj = states(1:envir_dim, :);
% 
% figure(1)
% 
%     plot(t, traj(1,1:size(t,2)), t, traj(2,1:size(t,2)), t, traj(3,1:size(t,2)),'color',[0.8500 0.3250 0.0980],'LineWidth',2);hold on
%     xl = xlabel('$x (m)$','Interpreter','LaTeX');
%     yl = ylabel('$y (m)$','Interpreter','LaTeX');
%     set(xl,'FontSize',18);
%     set(yl,'FontSize',18);
%     set(gca,'FontSize',16,'FontName','Times');  

%% Free final with quadratic terminal penalty 
[obj.best_arrivalFreeVel, obj.states_eqFreeVel, obj.control_eqFreeVel, obj.cost_eqFreeVel]=calc_equationsFreeVel1(obj, A, B, R, S, c, envir_dim, state_dims);
            
%%calculate the factors for the resulting polynomial explicitly
[n,~] = numden(obj.best_arrivalFreeVel);
p1 = feval(symengine,'coeff',simplifyFraction(n), obj.t, 'All');

% obj.best_arrivalFreeVel = simplify(obj.best_arrivalFreeVel, 'Steps',20);
% obj.best_arrivalFreeVel = vpa(obj.best_arrivalFreeVel, 5);
% 
% p1 = [];
% it = 0;
% while it < 20 && length(p1) <= 1 %just so mupad knows it's a polynomial
%     p1 = feval(symengine,'coeff',simplifyFraction(obj.best_arrivalFreeVel*obj.t^it), obj.t, 'All');
%     it = it+1;                          
% end
% if it >= 20
%     disp('either the result is not a polynomial or the degree is too high');
% end

p([obj.x0', obj.x1(1:envir_dim)']) = fliplr(p1);
p = vpa(p, 5);
obj.cost_eqFreeVel = vpa(obj.cost_eqFreeVel, 5);
obj.states_eqFreeVel = vpa(obj.states_eqFreeVel, 5);
obj.eval_arrivalFreeVel_internal = matlabFunction(p); %matlabFunction(p, 'file', 'arrival_time.m'); %to write to file
obj.eval_costFreeVel_internal = matlabFunction(obj.cost_eqFreeVel);
obj.eval_statesFreeVel_internal = matlabFunction(obj.states_eqFreeVel);
obj.eval_controlFreeVel_internal = matlabFunction(obj.control_eqFreeVel);

in = num2cell([x0', x1(1:envir_dim)']);
time = roots(obj.eval_arrivalFreeVel_internal(in{:}));
time = time(imag(time)==0);
time = min(time(time>=0));
% time = 1;            
cost = obj.eval_costFreeVel_internal(time, in{:});
states = @(t)obj.eval_statesFreeVel_internal(t, time, in{:});
inputs = @(t)obj.eval_controlFreeVel_internal(t, time, in{:});
            
dt = 0.1;
Horizon = time/dt;
t = linspace(0,time,Horizon);
states = eval(subs(states,t));
traj = states(1:envir_dim, :);

figure(1)

    plot(t, traj(1,1:size(t,2)), t, traj(2,1:size(t,2)), t, traj(3,1:size(t,2)),'color',[0.8500 0.3250 0.0980],'LineWidth',2);hold on
    xl = xlabel('$x (m)$','Interpreter','LaTeX');
    yl = ylabel('$y (m)$','Interpreter','LaTeX');
    set(xl,'FontSize',18);
    set(yl,'FontSize',18);
    set(gca,'FontSize',16,'FontName','Times');  
    
%% Fixed Final Velocity
[obj.best_arrival, obj.states_eq, obj.control_eq, obj.cost_eq]=calc_equations(obj, A, B, R, c);
            
%%calculate the factors for the resulting polynomial explicitly
p1 = [];
it = 0;
while it < 20 && length(p1) <= 1 %just so mupad knows it's a polynomial
    p1 = feval(symengine,'coeff',simplifyFraction(obj.best_arrival*obj.t^it), obj.t, 'All');
    it = it+1;                          
end
if it > 20
    disp('either the result is not a polynomial or the degree is too high');
end

p([obj.x0', obj.x1']) = fliplr(p1);
obj.eval_arrival_internal = matlabFunction(p); %matlabFunction(p, 'file', 'arrival_time.m'); %to write to file

obj.eval_cost_internal = matlabFunction(obj.cost_eq);
obj.eval_states_internal = matlabFunction(obj.states_eq);
obj.eval_control_internal = matlabFunction(obj.control_eq);
            
time_ = evaluate_arrival_time(obj, x0, x1);
% time_ = 2;
cost_ = evaluate_cost(obj, x0, x1, time_);
[states_, inputs_] = evaluate_states_and_inputs(obj, x0, x1, time_);

dt = 0.1;
Horizon = time_/dt;
t = linspace(0,time_,Horizon);
states_ = eval(subs(states_,t));
traj = states_(1:envir_dim, :);

figure(1)

    plot(t, traj(1,1:size(t,2)), t, traj(2,1:size(t,2)), t, traj(3,1:size(t,2)), 'color', [0.8500 0.3250 0.9080], 'LineWidth',2);hold on
    xl = xlabel('$x (m)$','Interpreter','LaTeX');
    yl = ylabel('$y (m)$','Interpreter','LaTeX');
    set(xl,'FontSize',18);
    set(yl,'FontSize',18);
    set(gca,'FontSize',16,'FontName','Times');  

