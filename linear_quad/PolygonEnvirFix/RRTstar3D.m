function [Its, time, Cost] =  RRTstar3D(dim, segmentLength, radius, show_output, samples)

time=[]; Cost=[]; Its = [];
firstSol=0;

% Planning in state space
if dim == 2  
    state_dim = 6;
    start_cord = [2,2,0,0];
    goal_cord = [18,18,0,0];
elseif dim == 3
    state_dim = 10;
    start_cord = [2,2,2,0,0,0,0,0,0,0];
    goal_cord = [18,8,8,0,0,0,0,0,0,0];
end

% Create random world
if dim == 2
    Size = 20;
    [world,~] = createKnownWorld(ones(1,dim)*Size,zeros(1,dim),dim);
elseif dim == 3
    [world,~] = createKnownWorld([20 10 10],zeros(1,dim),dim);
end

% Each Row Contains States, ConnectToEnd flag, Costz, ParentNodeIdx, and ChildNum
start_node = [start_cord,0,0,0,0];                
end_node = [goal_cord,0,0,0,0];

% Establish tree starting with the start node
tree = start_node;

GChild  = [];
coder.varsize('GChild')
% GChild = zeros(400, 500);

tic

% check to see if start_node connects directly to end_node
if norm(start_node(1:dim)-end_node(1:dim))<segmentLength && collision(start_node,end_node,world,dim,state_dim)==0
  path = [start_node; end_node];
else
  if samples >0
  numPaths = 0;
  for i = 1:samples
      [tree,GChild,flag] = extendTree(tree,GChild,end_node,segmentLength,radius,world,0,dim,state_dim);
      numPaths = numPaths + flag;

      if numPaths==1 && firstSol==0
        firstSol=1;
        tree_small = tree;
        Its = [Its, i];
        time = [time, toc];
      end
      if i==400
        tree_400 = tree;
        Its = [Its, i];
        time = [time, toc];
      end
      if i==600
        tree_600 = tree;
        Its = [Its, i];
        time = [time, toc];
      end
      if i==800
        tree_800 = tree;
        Its = [Its, i];
        time = [time, toc];
      end
      if i==1000
        tree_1000 = tree;
        Its = [Its, i];
        time = [time, toc];
      end
      if i==1200
        tree_1200 = tree;
        Its = [Its, i];
        time = [time, toc];
      end
      if i==1400
        tree_1400 = tree;
        Its = [Its, i];
        time = [time, toc];
      end
      if i==1600
        tree_1600 = tree;
        Its = [Its, i];
        time = [time, toc];
      end
      if i==1800
        tree_1800 = tree;
        Its = [Its, i];
        time = [time, toc];
      end
%       if i==2000
%         tree_2000 = tree;
%         Its = [Its, i];
%         time = [time, toc];
%       end
%       if i==2500
%         tree_2500 = tree;
%         Its = [Its, i];
%         time = [time, toc];
%       end
%       if i==3000
%         tree_3000 = tree;
%         Its = [Its, i];
%         time = [time, toc];
%       end
%       if i==3500
%         tree_3500 = tree;
%         Its = [Its, i];
%         time = [time, toc];
%       end
  end

  else
  i = 0;
  numPaths = 0;
  while numPaths < 1
      [tree,GChild,flag] = extendTree(tree,GChild,end_node,segmentLength,radius,world,0,dim,state_dim);
      numPaths = numPaths + flag;
      i = i+1;
  end
  i
  end

end

time = [time, toc];
Its = [Its, i];

if show_output == 1
% figure;
[path_first,cost] = findMinimumPath(tree_small,end_node,dim,state_dim);
Cost=[Cost, cost];
% plotExpandedTree(tree_small,dim,state_dim);
% plotWorld(world,dim);
% plotTraj(path_first,dim);
% figure;
[path_400,cost] = findMinimumPath(tree_400,end_node,dim,state_dim);
Cost=[Cost, cost];
% plotExpandedTree(tree_400,dim,state_dim);
% plotWorld(world,dim);
% plotTraj(path_400,dim);
% figure;
[path_600,cost] = findMinimumPath(tree_600,end_node,dim,state_dim);
Cost=[Cost, cost];
% plotExpandedTree(tree_600,dim,state_dim);
% plotWorld(world,dim);
% plotTraj(path_600,dim);
figure;
[path_800,cost] = findMinimumPath(tree_800,end_node,dim,state_dim);
Cost=[Cost, cost];
plotExpandedTree(tree_800,dim,state_dim);
plotWorld(world,dim);
plotTraj(path_800,dim);
% figure;
[path_1000,cost] = findMinimumPath(tree_1000,end_node,dim,state_dim);
Cost=[Cost, cost];
% % plotExpandedTree(tree_1000,dim,state_dim);
% plotWorld(world,dim);
% plotTraj(path_1000,dim);
% figure;
[path_1200,cost] = findMinimumPath(tree_1200,end_node,dim,state_dim);
Cost=[Cost, cost];
% plotExpandedTree(tree_1200,dim,state_dim);
% plotWorld(world,dim);
% plotTraj(path_1200,dim);
% figure;
[path_1400,cost] = findMinimumPath(tree_1400,end_node,dim,state_dim);
Cost=[Cost, cost];
% plotExpandedTree(tree_1400,dim,state_dim);
% plotWorld(world,dim);
% plotTraj(path_1400,dim);
% figure;
[path_1600,cost] = findMinimumPath(tree_1600,end_node,dim,state_dim);
Cost=[Cost, cost];
% plotExpandedTree(tree_1600,dim,state_dim);
% plotWorld(world,dim);
% plotTraj(path_1600,dim);
% figure;
[path_1800,cost] = findMinimumPath(tree_1800,end_node,dim,state_dim);
Cost=[Cost, cost];
% plotExpandedTree(tree_1800,dim,state_dim);
% plotWorld(world,dim);
% plotTraj(path_1800,dim);
% figure;
% [path_2000,cost] = findMinimumPath(tree_2000,end_node,dim,state_dim);
% Cost=[Cost, cost];
% plotExpandedTree(tree_2000,dim,state_dim);
% plotWorld(world,dim);
% plotTraj(path_2000,dim);
% figure;
% [path_2500,cost] = findMinimumPath(tree_2500,end_node,dim,state_dim);
% Cost=[Cost, cost];
% plotExpandedTree(tree_2500,dim,state_dim);
% plotWorld(world,dim);
% plotTraj(path_2500,dim);
% % figure;
% [path_3000,cost] = findMinimumPath(tree_3000,end_node,dim,state_dim);
% Cost=[Cost, cost];
% plotExpandedTree(tree_3000,dim,state_dim);
% plotWorld(world,dim);
% plotTraj(path_3000,dim);
% figure;
% [path_3500,cost] = findMinimumPath(tree_3500,end_node,dim,state_dim);
% Cost=[Cost, cost];
% plotExpandedTree(tree_3500,dim,state_dim);
% plotWorld(world,dim);
% plotTraj(path_3500,dim);

figure;
[path,cost] = findMinimumPath(tree,end_node,dim,state_dim);
Cost=[Cost, cost];
% plotExpandedTree(tree,dim,state_dim);
plotWorld(world,dim); hold on
plotTraj(path,dim);
end

end


function [new_tree, GChild, flag] = extendTree(tree, GChild, end_node, segmentLength, r, world, flag_chk, dim, state_dim)   % segmentLength: maximum stepsize, r: neighbor radius

  flag1 = 0;
  while flag1 == 0
    % select a random point
    if rand > 0
       randomPoint = zeros(1, state_dim);
       for i = 1 : dim
          randomPoint(1, i) = (world.endcorner(i) - world.origincorner(i)) * rand;
       end
    else
       randomPoint = end_node(1:state_dim);
    end

    % find node that is closest to randomPoint (Eucl. dist. between positions). 
    tmp = tree(:, 1 : dim) - randomPoint(1 : dim);
    sqr_dist = sqr_eucl_dist(tmp, dim);
    [min_dist, idx] = min(sqr_dist);
    min_parent_idx = idx;
    
    Vect = randomPoint(1:dim)-tree(idx,1:dim);
    Vect=Vect/norm(Vect);
%     if isnan(Vect)
%         new_point(dim + 1 : 2 * dim) = zeros(2,1);
%     end
    if dim == 2
        new_point(dim + 1 : state_dim) = 2.0 * [-1 + (1 - (-1)) * rand, -1 + (1 - (-1)) * rand];     % vmin = -1�� vmax = 1
    elseif dim == 3
        for j = dim+1 : state_dim
            new_point(j) = -1 + (1 - (-1)) * rand;
        end
        new_point(dim+1 : state_dim) = new_point(dim+1 : state_dim) * 1 * diag([2,2,2,0.6,0.6,3,3]);   % diag([2,2,2,1,1,4,4]);
    end
    
    % find new_point that is within the range of min_parent_idx in terms of segmentLength (Eucl. dist. between positions).
    if min_dist > segmentLength^2
        % generate a new point that is closest to randomPoint, segmentLength away from tree(idx,1:dim)
        new_point(1 : dim) = tree(idx, 1 : dim) + Vect * segmentLength;
    else
        new_point(1 : dim) = randomPoint(1 : dim);
    end

  % check if the new_point is in collision
  if collision_point(new_point, world, dim) == 0
      [collision_flag, Tf] = collision(tree(idx, :), new_point, world, dim, state_dim);    % this collision checking includes a steering function
                                                                                                                                         
    if collision_flag == 0  
        
      [min_cost, ~] = cost_np(tree(idx,:), new_point, dim, state_dim, Tf);                 % total cost from root to new_point through its parent tree(idx,:)
      new_node  = [new_point, 0, min_cost, idx, 0];                             % new node candidate

      tmp_dist = tree(:, 1 : dim) - new_point(1 : dim);
      dist_sqr = sqr_eucl_dist(tmp_dist, dim);
         
      % find near neighbors   
      if dim == 2
        gamma = 60;
      elseif dim == 3
        gamma = 40; 
      end      
      nun = size(tree, 1);
      ner = gamma * ( log(nun + 1) / nun )^(1 / dim);
      r1 = min(ner, r);    
      near_idx = find(dist_sqr <= r1^2);
      
      size_near = size(near_idx, 1);
      if size_near >= 1          
        for i = 1 : size_near                                                % choose parent node
            if near_idx(i) ~= idx
                [segcost, Tf] = segment_cost(tree(near_idx(i), :), new_point, dim);
                cost_near = tree(near_idx(i), state_dim + 2) + segcost;
                if cost_near + 0.001 < min_cost
                    [collision_flag, ~] = collisionKnowTf(tree(near_idx(i), :), new_node, world, dim, state_dim, Tf);
                    if collision_flag==0      
                        min_cost = cost_near;
                        min_parent_idx = near_idx(i);              
                    end
                end
            end
        end             
      end
      
      new_node = [new_point, 0 , min_cost, min_parent_idx, 0];
      new_tree = [tree; new_node];
      new_node_idx = size(new_tree, 1);      
      new_tree(min_parent_idx, state_dim + 4) = new_tree(min_parent_idx, state_dim + 4) + 1;     % ChildNum + 1
      GChild( min_parent_idx, new_tree(min_parent_idx, state_dim + 4) ) = new_node_idx;        % update GChild matrix
      
      if size_near >= 1                                                  % rewire
        reduced_idx = near_idx;
        for j = 1 : size_near
            if reduced_idx(j) ~= min_parent_idx
                near_cost = new_tree(reduced_idx(j), state_dim + 2);
                [lcost, Tf] = segment_cost(new_point, new_tree(reduced_idx(j), :), dim);
                rnewcost = min_cost + lcost;
                if near_cost > rnewcost + 0.001
                    [collision_flag, ~] = collisionKnowTf(new_node, new_tree(reduced_idx(j), :), world, dim, state_dim, Tf);
                    if collision_flag == 0 
           
                    ecost = rnewcost - near_cost;                
                    GChild( new_tree(reduced_idx(j),state_dim+3), GChild( new_tree(reduced_idx(j),state_dim+3),: ) == reduced_idx(j) ) = -1;      % parent of reduced_idx(j) before rewire, change its child list.
                    new_tree(reduced_idx(j),state_dim+2) = rnewcost;           % update the cost and parent information of the node being rewired, reduced_idx(j)
                    new_tree(reduced_idx(j),state_dim+3) = new_node_idx;
                                
                    new_tree(new_node_idx, state_dim+4) = new_tree(new_node_idx, state_dim+4) + 1;         % add the node being rewired to the child list of the new added node, new_node_idx.
                    GChild( new_node_idx, new_tree(new_node_idx, state_dim+4) ) = reduced_idx(j) ;
                
                    brunchCost(new_tree, GChild, reduced_idx(j), ecost, dim, state_dim);       % update all cost of the descendant of the node being rewired
                
                    end
                end
            end
        end
      end
      flag1=1;
    end
    
  end
    
  end

  flag = 0;
  if flag_chk == 0
    % check to see if new node connects directly to end_node
    if  norm(new_node(1 : dim) - end_node(1 : dim)) < 0.2
        flag = 1;
        new_tree(end, state_dim + 1) = 1;  % mark node as connecting to end.
    elseif  norm(new_node(1 : dim) - end_node(1 : dim)) < segmentLength 
        [collision_flag, ~] = collision(new_node, end_node, world, dim, state_dim);        
        if  collision_flag == 0
            flag = 1;
            new_tree(end, state_dim + 1) = 1;  % mark node as connecting to end.
        end
    end
  end
end

% update all cost of the descendant of the node being rewired, id_candidate
function brunchCost(new_tree, GChild, id_candidate, ecost, dim, state_dim)

   for i = 1 : new_tree(id_candidate,state_dim+4) 
        if GChild(id_candidate,i) ~= -1
            new_tree(GChild(id_candidate,i), state_dim+2) = new_tree(GChild(id_candidate,i),state_dim+2) + ecost;
            brunchCost(new_tree, GChild, GChild(id_candidate,i), ecost, dim, state_dim);
        end        
   end

end




