function [collision_flag, Tf, xf] = collisionFreeVel(parent, node, world, dim)

collision_flag = 0;

if collision_flag == 0 && dim == 2
    
%     Tf = norm(parent(1 : 4) - node(1 : 4))/0.8;
    Tf = roots(DI_timeFreeVel(parent(1), parent(2), parent(3), parent(4), node(1), node(2)));
    Tf = Tf(imag(Tf) == 0);
    Tf = min(Tf(Tf >= 0));
    
    states = @(t)DI_stateFreeVel(t, Tf, parent(1), parent(2), parent(3), parent(4), node(1), node(2));
    checkpoints = 10;
    state = zeros(2*dim, checkpoints);
    t = linspace(0, Tf, checkpoints + 2);
    for i = 1 : checkpoints
        state(:, i) = states(t(i + 1));
    end
    traj = state(1 : 2, :);
    
    xf = states(Tf);
    
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
        if sum(([p(1);p(2)]-[world.cx(i); world.cy(i)]).*([p(1);p(2)]-[world.cx(i); world.cy(i)]))<(world.radius(i)+0.1)^2  % (norm([p(1);p(2)]-[world.cx(i); world.cy(i)])<=1*world.radius(i))
            collision_flag = 1;
            return;    
        end
      end
    end

%%%%% dim=3 case has not been implemented yet %%%%%
elseif collision_flag == 0 && dim ==3
    
    Tf = roots(DI3d_timeFreeVel(parent(1), parent(2), parent(3), parent(4), parent(5), parent(6), node(1), node(2), node(3)));
    Tf = Tf(imag(Tf) == 0);
    Tf = min(Tf(Tf >= 0));
    
    states = @(t)DI3d_stateFreeVel(t, Tf, parent(1), parent(2), parent(3), parent(4), parent(5), parent(6), node(1), node(2), node(3));
    checkpoints = 10;
    state = zeros(2*dim, checkpoints);
    t = linspace(0, Tf, checkpoints + 2);
    for i = 1 : checkpoints
        state(:, i) = states(t(i + 1));
    end
    traj = state(1 : 3, :);
    
    xf = states(Tf);
    
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
        if sum(([p(1);p(2);p(3)]-[world.cx(i); world.cy(i); world.cz(i)]).*([p(1);p(2);p(3)]-[world.cx(i); world.cy(i); world.cz(i)]))<(world.radius(i)+0.1)^2  % (norm([p(1);p(2)]-[world.cx(i); world.cy(i)])<=1*world.radius(i))
            collision_flag = 1;
            return;    
        end
      end
    end
    
end
end