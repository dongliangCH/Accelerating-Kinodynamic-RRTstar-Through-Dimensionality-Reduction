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
    for k = 1:size(connectingNodes)
        if  norm(connectingNodes(k, 1 : dim) - end_node(1 : dim)) >= 0.2
            [lcost, ~] = segment_cost(connectingNodes(k, :), end_node, dim);
            connectingNodes(k, 2*dim+2) = connectingNodes(k, 2*dim+2) + lcost;
        end
    end           
    
    % find minimum cost last node
    [cost,idx] = min(connectingNodes(:,2*dim+2));
    
    % construct lowest cost path
    if  norm(connectingNodes(idx, 1 : dim) - end_node(1 : dim)) >= 0.2
        [lcost, ~] = segment_cost(connectingNodes(idx, :), end_node, dim);
        connectingNodes(idx, 2*dim+2) = connectingNodes(idx, 2*dim+2) - lcost;
        path = [connectingNodes(idx,:); end_node];
        parent_node = connectingNodes(idx,2*dim+3);
        while parent_node>=1
            path = [tree(parent_node,:); path];
            parent_node = tree(parent_node,2*dim+3);       
        end
    else
        path = [connectingNodes(idx,:)];
        parent_node = connectingNodes(idx,2*dim+3);
        while parent_node>=1
            path = [tree(parent_node,:); path];
            parent_node = tree(parent_node,2*dim+3);       
        end    
    end

end