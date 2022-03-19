% check if a point is in collision
function collision_flag = collision_point(p, world, dim)

collision_flag = 0;

for i=1:dim
   if (p(i)>world.endcorner(i))||(p(i)<world.origincorner(i))
       collision_flag = 1;
   end
end

if collision_flag == 0 && dim ==2
      % check each obstacle
      for i=1:world.NumObstacles
        if  sqrt(sum(([p(1);p(2)]-[world.cx(i); world.cy(i)]).*([p(1);p(2)]-[world.cx(i); world.cy(i)])))<world.radius(i)+0.1   % (norm([p(1);p(2)]-[world.cx(i); world.cy(i)])<world.radius(i)+0.1)
            collision_flag = 1;
            return;
        end
      end

elseif collision_flag == 0 && dim ==3
      % check each obstacle
      for i=1:world.NumObstacles
        if (norm([p(1);p(2);p(3)]-[world.cx(i); world.cy(i); world.cz(i)])<=world.radius(i)+0.1)
            collision_flag = 1;
            return;
        end
      end
end
end