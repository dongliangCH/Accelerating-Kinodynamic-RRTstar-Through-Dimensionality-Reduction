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
        if  p(1) >= world.ox(i) && p(1) <= world.ox(i)+world.oa(i) && p(2) >= world.oy(i) && p(2) <= world.oy(i)+world.ob(i) 
            collision_flag = 1;
            break;
        end
      end

elseif collision_flag == 0 && dim ==3
      % check each obstacle
      for i=1:world.NumObstacles
        if p(1) >= world.ox(i) && p(1) <= world.ox(i)+world.oa(i) && p(2) >= world.oy(i) && p(2) <= world.oy(i)+world.ob(i) && p(3) >= world.oz(i) && p(3) <= world.oz(i)+world.oc(i) 
            collision_flag = 1;
            break;
        end
      end
end
end