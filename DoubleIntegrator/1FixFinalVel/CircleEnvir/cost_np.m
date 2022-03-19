%calculate the cost from root to to_point through parent from_node
function [cost, Tf] = cost_np(from_node, to_point, dim, Tf)

if dim == 2
    
    cost = DI_cost(Tf, from_node(1), from_node(2), from_node(3), from_node(4), to_point(1), to_point(2), to_point(3), to_point(4));
    cost = from_node(:, 2 * dim + 2) + cost;
    
elseif dim == 3
    
    cost = DI3d_cost(Tf, from_node(1), from_node(2), from_node(3), from_node(4), from_node(5), from_node(6), to_point(1), to_point(2), to_point(3), to_point(4), to_point(5), to_point(6));
    cost = from_node(:, 2 * dim + 2) + cost;
    
end

end