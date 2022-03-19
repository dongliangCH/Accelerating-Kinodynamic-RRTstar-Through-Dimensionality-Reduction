function plotExpandedTree(tree,dim,state_dim)

    ind = size(tree,1);
    while ind>1
        node = tree(ind,:);
        parent_node = tree(node(state_dim+3),:);
    
        ind = ind - 1;
        if dim == 2
            
        in = num2cell([parent_node(1 : 4), node(1 : 4)]);
%       Tf = norm(path(i, 1 : 4) - path(i + 1, 1 : 4))/0.8;
        Tf = roots(DI_time(in{:}));
        Tf = Tf(imag(Tf) == 0);
        Tf = min(Tf(Tf >= 0));

        states = @(t)DI_state(t, Tf, in{:});
        dt = 0.2;
        Horizon = Tf / dt;
        t = linspace(0,Tf,Horizon);
        state = zeros(state_dim, length(t));        
        for j = 1 : Horizon
            state(:, j) = states(t(j));
        end

        traj = state(1 : dim, :);
    
        p = plot(traj(1,1:size(t,2)),traj(2,1:size(t,2)));
        set(p,'Color','[0.5 0.5 0.5]','LineWidth',0.5);
        hold on;   
        plot(node(1),node(2),'Marker','.','MarkerSize',10,'MarkerEdgeColor','[0.5 0.5 0.5]');

        elseif dim == 3
            
        in = num2cell([parent_node(1 : 10), node(1 : 10)]);
        Tf = roots(quad_time(in{:}));
        Tf = Tf(imag(Tf) == 0);
        Tf = Tf(Tf >= 0);
        tf = Tf(1);
        cost = quad_cost(Tf(1), in{:});
        for i = 2 : size(Tf)
            costnow = quad_cost(Tf(i), in{:});
            if costnow<cost
                tf = Tf(i);
                cost = costnow;
            end
        end
        Tf = tf;

        states = @(t)quad_state(t, Tf, in{:});
        dt = 0.2;
        Horizon = Tf / dt;
        t = linspace(0,Tf,Horizon);
        state = zeros(state_dim, length(t));
        for j = 1 : Horizon
            state(:, j) = states(t(j));
        end

        traj = state(1 : dim, :);
    
        p = plot3(traj(1,1:size(t,2)), traj(2,1:size(t,2)), traj(3,1:size(t,2)));
        set(p,'Color','[0.5 0.5 0.5]','LineWidth',0.5);
        hold on;   
        plot3(node(1), node(2), node(3),'Marker','.','MarkerEdgeColor','[0.5 0.5 0.5]'); 
        
        end
    end
end