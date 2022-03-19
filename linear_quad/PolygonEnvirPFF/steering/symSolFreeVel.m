function symFunc = symSolFreeVel(dim)

if dim == 2
    
A = [0 0 1 0;
     0 0 0 1;
     0 0 0 0;
     0 0 0 0];
B = [0 0;
     0 0;
     1 0;
     0 1];
c = [0; 0; 0; 0];
R = eye(2);

elseif dim == 3
    init_quad;
end

obj.t = sym('t', 'positive');
obj.x = sym('x', 'positive'); %used for integration
obj.t_s = sym('t_s', 'real'); %optimal arrival time
        
state_dims = size(A,1);
obj.x0 = sym('x0',[state_dims,1]);
assume(obj.x0, 'real');
obj.x1 = sym('x1',[state_dims,1]);
assume(obj.x1, 'real');

%% Free Final Velocity
[obj.best_arrivalFreeVel, obj.states_eqFreeVel, ~, obj.cost_eqFreeVel]=calc_equationsFreeVel(obj, A, B, R, c);            
%%calculate the factors for the resulting polynomial explicitly
p1 = [];
it = 0;
while it < 20 && length(p1) <= 1 %just so mupad knows it's a polynomial
    p1 = feval(symengine,'coeff',simplifyFraction(obj.best_arrivalFreeVel*obj.t^it), obj.t, 'All');
    it = it+1;                          
end
if it > 20
    disp('either the result is not a polynomial or the degree is too high');
end

p([obj.x0', obj.x1(1:2)']) = fliplr(p1);
symFunc.eval_arrivalFreeVel_internal = matlabFunction(p); %matlabFunction(p, 'file', 'arrival_time.m'); %to write to file
symFunc.eval_costFreeVel_internal = matlabFunction(obj.cost_eqFreeVel);
symFunc.eval_statesFreeVel_internal = matlabFunction(obj.states_eqFreeVel);

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
symFunc.eval_arrival_internal = matlabFunction(p); %matlabFunction(p, 'file', 'arrival_time.m'); %to write to file

symFunc.eval_cost_internal = matlabFunction(obj.cost_eq);
symFunc.eval_states_internal = matlabFunction(obj.states_eq);
symFunc.eval_control_internal = matlabFunction(obj.control_eq);


