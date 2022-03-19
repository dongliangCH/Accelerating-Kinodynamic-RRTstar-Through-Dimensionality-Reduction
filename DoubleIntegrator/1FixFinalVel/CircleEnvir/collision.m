function [collision_flag, Tf] = collision(parent, node, world, dim)

collision_flag = 0;

if collision_flag == 0 && dim == 2
    
%         Tf = norm(parent(1 : 4) - node(1 : 4))/0.8;
        Tf = roots(DI_time(parent(1), parent(2), parent(3), parent(4), node(1), node(2), node(3), node(4)));
        Tf = Tf(imag(Tf) == 0);
        Tf = min(Tf(Tf >= 0));
%         Tf = min(Tf(Tf > 0.0001));
    
    states = @(t)DI_state(t, Tf, parent(1), parent(2), parent(3), parent(4), node(1), node(2), node(3), node(4));
    checkpoints = 10;
    state = zeros(2*dim, checkpoints);
    t = linspace(0, Tf, checkpoints + 2);
    for i = 1 : checkpoints
        state(:, i) = states(t(i + 1));
    end
    traj = state(1 : 2, :);
    
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

%%%%% dim=3 case %%%%%
elseif collision_flag == 0 && dim ==3
    
    Tf = roots(DI3d_time(parent(1), parent(2), parent(3), parent(4), parent(5), parent(6), node(1), node(2), node(3), node(4), node(5), node(6)));
    Tf = Tf(imag(Tf) == 0);
    Tf = min(Tf(Tf >= 0));
    
    states = @(t)DI3d_state(t, Tf, parent(1), parent(2), parent(3), parent(4), parent(5), parent(6), node(1), node(2), node(3), node(4), node(5), node(6));
    checkpoints = 10;
    state = zeros(2*dim, checkpoints);
    t = linspace(0, Tf, checkpoints + 2);
    for i = 1 : checkpoints
        state(:, i) = states(t(i + 1));
    end
    traj = state(1 : 3, :);
    
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