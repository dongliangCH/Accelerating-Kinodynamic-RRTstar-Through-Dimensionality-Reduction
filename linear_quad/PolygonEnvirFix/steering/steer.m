clear
dim = 3;

if dim == 2
    A= [0 0 1 0;
        0 0 0 1;
        0 0 0 0;
        0 0 0 0];
    B = [0 0;
        0 0;
        1 0;
        0 1];
    c = [0; 0; 0; 0];
    R = eye(2);
    x0 = [2; 2; 0; 0];
    x1 = [3.3867; 1.6371; 1.0400; -0.2722];
    
elseif dim== 3
    A = [zeros(3,3), eye(3); zeros(3,6)];
    B = [zeros(3,3); eye(3)];
    c = zeros(6, 1);
    R = eye(3);
    x0 = [1; 3; 2; 1; 0; 0];
    x1 = [5; 2; 3; -1; 1; 0];    
end

obj.t = sym('t', 'positive');
obj.x = sym('x', 'positive'); %used for integration
obj.t_s = sym('t_s', 'real'); %optimal arrival time
        
state_dims = size(A,1);
obj.x0 = sym('x0',[state_dims,1]);
assume(obj.x0, 'real');
obj.x1 = sym('x1',[state_dims,1]);
assume(obj.x1, 'real');
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
            
time = evaluate_arrival_time(obj, x0, x1);
% time = 5.68;
cost = evaluate_cost(obj,x0,x1, time);
[states, inputs] = evaluate_states_and_inputs(obj, x0, x1, time);

dt = 0.1;
Horizon = time/dt;
t = linspace(0,time,Horizon);
states = eval(subs(states,t));
traj = states(1:dim, :);

figure(1)
if dim == 2
    plot(t, traj(1,1:size(t,2)),t, traj(2,1:size(t,2)),'color',[0.8500 0.3250 0.0980],'LineWidth',2);hold on
    xl = xlabel('$x (m)$','Interpreter','LaTeX');
    yl = ylabel('$y (m)$','Interpreter','LaTeX');
    set(xl,'FontSize',18);
    set(yl,'FontSize',18);
    set(gca,'FontSize',16,'FontName','Times');
elseif dim == 3
    plot(t, traj(1,1:size(t,2)), t, traj(2,1:size(t,2)), t, traj(3,1:size(t,2)),'color',[0.8500 0.3250 0.0980],'LineWidth',2);hold on
    xl = xlabel('$x (m)$','Interpreter','LaTeX');
    yl = ylabel('$y (m)$','Interpreter','LaTeX');
    set(xl,'FontSize',18);
    set(yl,'FontSize',18);
    set(gca,'FontSize',16,'FontName','Times');  
end
