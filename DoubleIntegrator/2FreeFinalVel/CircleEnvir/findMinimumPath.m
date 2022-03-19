function [path, cost] = findMinimumPath(tree,end_node,dim)

    % find nodes that connect to end_node
%     connectingNodes = [];
%     for i=1:size(tree,1)
%         if tree(i,2*dim+1)==1
%             tree(i,2*dim+2)=tree(i,2*dim+2)+segment_cost(tree(i,:),end_node(1:2*dim),dim);
%             connectingNodes = [connectingNodes ; tree(i,:)];
%         end
%     end
    idx = tree(:,2*dim+1)==1;
    connectingNodes = tree(idx,:);
    PathCost = zeros(size(connectingNodes,1),1);
    for k = 1:size(connectingNodes,1)
        [lcost, ~] = segment_cost(connectingNodes(k, :), end_node, dim);
        PathCost(k) = connectingNodes(k, 2*dim+2) + lcost;
    end           
    
    % find minimum cost last node
    [cost,idx] = min(PathCost);
    
    % construct lowest cost path        
    path = [connectingNodes(idx,:); end_node];
    parent_node = connectingNodes(idx,2*dim+3);
    while parent_node>=1
        path = [tree(parent_node,:); path];
        parent_node = tree(parent_node,2*dim+3);       
    end

end