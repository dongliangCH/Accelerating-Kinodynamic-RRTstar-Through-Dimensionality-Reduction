%calculate the cost from root to to_point through parent from_node
function [cost, Tf] = cost_np(from_node, to_point, dim, state_dim, Tf)

if dim == 2
    
    cost = DI_cost(Tf, from_node(1), from_node(2), from_node(3), from_node(4), to_point(1), to_point(2), to_point(3), to_point(4));
    cost = from_node(:, state_dim + 2) + cost;
    
elseif dim == 3
    
    cost = quad_cost(Tf, from_node(1), from_node(2), from_node(3), from_node(4), from_node(5), from_node(6), from_node(7), from_node(8), from_node(9), from_node(10), to_point(1), to_point(2), to_point(3), to_point(4), to_point(5), to_point(6), to_point(7), to_point(8), to_point(9), to_point(10));
    cost = from_node(:, state_dim + 2) + cost;
    if cost>100
        enter = 1;
    end
end

end