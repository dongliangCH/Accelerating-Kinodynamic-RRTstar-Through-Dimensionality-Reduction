function [collision_flag, Tf] = collision(parent, node, world, dim, state_dim)

collision_flag = 0;

if collision_flag == 0 && dim == 2

%     Tf = norm(parent(1 : 4) - node(1 : 4))/0.8;
    Tf = roots(DI_time(parent(1), parent(2), parent(3), parent(4), node(1), node(2), node(3), node(4)));
    Tf = Tf(imag(Tf) == 0);
    Tf = min(Tf(Tf >= 0));

    states = @(t)DI_state(t, Tf, parent(1), parent(2), parent(3), parent(4), node(1), node(2), node(3), node(4));
    checkpoints = 10;
    state = zeros(state_dim, checkpoints);
    t = linspace(0, Tf, checkpoints + 2);
    for i = 1 : checkpoints
        state(:, i) = states(t(i + 1));
    end
    traj = state(1 : dim, :);
    
    for j = 1 : checkpoints
    p = traj(:, j);
    
    for i=1:dim
        if (p(i)>world.endcorner(i))||(p(i)<world.origincorner(i))
            collision_flag = 1;
            return;    % break;
        end
    end
    
      % check each obstacle
      for i=1:world.NumObstacles
        if p(1) >= world.ox(i) && p(1) <= world.ox(i)+world.oa(i) && p(2) >= world.oy(i) && p(2) <= world.oy(i)+world.ob(i)
            collision_flag = 1;
            return;    % break;
        end
      end
    end

%%%%% dim=3 case %%%%%
elseif collision_flag == 0 && dim ==3
    
    Tf = roots(quad_time(parent(1), parent(2), parent(3), parent(4), parent(5), parent(6), parent(7), parent(8), parent(9), parent(10), node(1), node(2), node(3), node(4), node(5), node(6), node(7), node(8), node(9), node(10)));
    Tf = Tf(imag(Tf) == 0);
    Tf = Tf(Tf >= 0);
    tf = Tf(1);
    cost = quad_cost(Tf(1), parent(1), parent(2), parent(3), parent(4), parent(5), parent(6), parent(7), parent(8), parent(9), parent(10), node(1), node(2), node(3), node(4), node(5), node(6), node(7), node(8), node(9), node(10));
    for i = 2 : size(Tf)
        costnow = quad_cost(Tf(i), parent(1), parent(2), parent(3), parent(4), parent(5), parent(6), parent(7), parent(8), parent(9), parent(10), node(1), node(2), node(3), node(4), node(5), node(6), node(7), node(8), node(9), node(10));
        if costnow<cost
            tf = Tf(i);
            cost = costnow;
        end
    end
    Tf = tf;
    
    states = @(t)quad_state(t, Tf, parent(1), parent(2), parent(3), parent(4), parent(5), parent(6), parent(7), parent(8), parent(9), parent(10), node(1), node(2), node(3), node(4), node(5), node(6), node(7), node(8), node(9), node(10));
    checkpoints = 10;
    state = zeros(state_dim, checkpoints);
    t = linspace(0, Tf, checkpoints + 2);
    for i = 1 : checkpoints
        state(:, i) = states(t(i + 1));
    end
    traj = state(1 : dim, :);
    
    for j = 1 : checkpoints
    p = traj(:, j);
    
    for i=1:dim
        if (p(i)>world.endcorner(i))||(p(i)<world.origincorner(i))
            collision_flag = 1;
            return;    % break;
        end
    end
    
      % check each obstacle
      for i=1:world.NumObstacles
        if p(1) >= world.ox(i) && p(1) <= world.ox(i)+world.oa(i) && p(2) >= world.oy(i) && p(2) <= world.oy(i)+world.ob(i) && p(3) >= world.oz(i) && p(3) <= world.oz(i)+world.oc(i)
            collision_flag = 1;
            return;    % break;
        end
      end
    end
    
end
end