function [collision_flag, Tf, xf] = collisionFreeVelKnowTf(parent, node, world, dim, state_dim, Tf)

collision_flag = 0;

if collision_flag == 0 && dim == 2
    
    states = @(t)DI_stateFreeVel(t, Tf, parent(1), parent(2), parent(3), parent(4), node(1), node(2));
    checkpoints = 10;
    state = zeros(state_dim, checkpoints);
    t = linspace(0, Tf, checkpoints + 2);
    for i = 1 : checkpoints
        state(:, i) = states(t(i + 1));
    end
    traj = state(1 : dim, :);
    
    xf = states(Tf);
    
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

%%%%% dim=3 case has not been implemented yet %%%%%
elseif collision_flag == 0 && dim ==3
    
    states = @(t)quad_statePFF(t, Tf, parent(1), parent(2), parent(3), parent(4), parent(5), parent(6), parent(7), parent(8), parent(9), parent(10), node(1), node(2), node(3));
    checkpoints = 10;
    state = zeros(dim, checkpoints);
    t = linspace(0, Tf, checkpoints + 2);
    for i = 1 : checkpoints
        state(:, i) = states(t(i + 1));
    end
    traj = state(1 : dim, :);
    
    xf = quad_statePFFull(Tf, Tf, parent(1), parent(2), parent(3), parent(4), parent(5), parent(6), parent(7), parent(8), parent(9), parent(10), node(1), node(2), node(3));
    
    for j = 1 : checkpoints
    p = traj(:, j);
    
    for i=1:dim
        if (p(i)>world.endcorner(i))||(p(i)<world.origincorner(i))
            collision_flag = 1;
            return;   
        end
    end
    
      % check each obstacle
      for i=1:world.NumObstacles
        if p(1) >= world.ox(i) && p(1) <= world.ox(i)+world.oa(i) && p(2) >= world.oy(i) && p(2) <= world.oy(i)+world.ob(i) && p(3) >= world.oz(i) && p(3) <= world.oz(i)+world.oc(i) 
            collision_flag = 1;
            return;    
        end
      end
    end
    
end
end