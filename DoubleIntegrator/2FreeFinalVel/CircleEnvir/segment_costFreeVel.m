function [cost, Tf] = segment_costFreeVel(from_node, to_point, dim)

if dim==2
        
%     Tf = norm(from_node(1 : 4) - to_point(1 : 4))/0.8;
    Tf = roots(DI_timeFreeVel(from_node(1), from_node(2), from_node(3), from_node(4), to_point(1), to_point(2)));
    Tf = Tf(imag(Tf) == 0);
    Tf = min(Tf(Tf >= 0));

    cost = DI_costFreeVel(Tf, from_node(1), from_node(2), from_node(3), from_node(4), to_point(1), to_point(2));
    
elseif dim == 3
    
    Tf = roots(DI3d_timeFreeVel(from_node(1), from_node(2), from_node(3), from_node(4), from_node(5), from_node(6), to_point(1), to_point(2), to_point(3)));
        Tf = Tf(imag(Tf) == 0);
        Tf = min(Tf(Tf >= 0));

    cost = DI3d_costFreeVel(Tf, from_node(1), from_node(2), from_node(3), from_node(4), from_node(5), from_node(6), to_point(1), to_point(2), to_point(3));
    
end
    
end