function [cost, Tf] = segment_cost(from_node, to_point, dim)

if dim==2
        
%     Tf = norm(from_node(1 : 4) - to_point(1 : 4))/0.8;
    Tf = roots(DI_time(from_node(1), from_node(2), from_node(3), from_node(4), to_point(1), to_point(2), to_point(3), to_point(4)));
    Tf = Tf(imag(Tf) == 0);
    Tf = min(Tf(Tf >= 0));

    cost = DI_cost(Tf, from_node(1), from_node(2), from_node(3), from_node(4), to_point(1), to_point(2), to_point(3), to_point(4));
    
elseif dim == 3
    
    Tf = roots(quad_time(from_node(1), from_node(2), from_node(3), from_node(4), from_node(5), from_node(6), from_node(7), from_node(8), from_node(9), from_node(10),to_point(1), to_point(2), to_point(3), to_point(4), to_point(5), to_point(6), to_point(7), to_point(8), to_point(9), to_point(10)));
    Tf = Tf(imag(Tf) == 0);
    Tf = Tf(Tf >= 0);
    tf = Tf(1);
    cost = quad_cost(Tf(1), from_node(1), from_node(2), from_node(3), from_node(4), from_node(5), from_node(6), from_node(7), from_node(8), from_node(9), from_node(10), to_point(1), to_point(2), to_point(3), to_point(4), to_point(5), to_point(6), to_point(7), to_point(8), to_point(9), to_point(10));
    for i = 2 : size(Tf)
        costnow = quad_cost(Tf(i), from_node(1), from_node(2), from_node(3), from_node(4), from_node(5), from_node(6), from_node(7), from_node(8), from_node(9), from_node(10), to_point(1), to_point(2), to_point(3), to_point(4), to_point(5), to_point(6), to_point(7), to_point(8), to_point(9), to_point(10));
        if costnow<cost
            tf = Tf(i);
            cost = costnow;
        end
    end
    Tf = tf;

    if cost>100 || cost<0
        enter = 1;
    end
end
    
end