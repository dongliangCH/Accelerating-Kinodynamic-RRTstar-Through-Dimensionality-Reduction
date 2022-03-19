function [world, NumObstacles] = createKnownWorld(endcorner, origincorner, dim)

  if dim == 2
      
    NumObstacles = 2;
  % check to make sure that the region is nonempty
    if (endcorner(1) <= origincorner(1)) || (endcorner(2) <= origincorner(2))
      disp('Not valid corner specifications!')
      world=[];
  % create world data structure
    else
    world.NumObstacles = NumObstacles;
    world.endcorner = endcorner;
    world.origincorner = origincorner;

    % create NumObstacles
    
        x = 4;
        y = 6;
        a = 4;
        b = 6;
        world.ox(1) = x;
        world.oy(1) = y;
        world.oa(1) = a;
        world.ob(1) = b;

        x = 14;
        y = 14;
        a = 2;
        b = 2;
        world.ox(2) = x;
        world.oy(2) = y;
        world.oa(2) = a;
        world.ob(2) = b;
   
    end

  elseif dim == 3

    NumObstacles = 4;
    % check to make sure that the region is nonempty
    if (endcorner(1) <= origincorner(1)) || (endcorner(2) <= origincorner(2)) || (endcorner(3) <= origincorner(3))
      disp('Not valid corner specifications!')
      world=[];

    % create world data structure
    else
    world.NumObstacles = NumObstacles;
    world.endcorner = endcorner;
    world.origincorner = origincorner;

        % create NumObstacles
        
%         x = 5;
%         y = 3;
%         z = 3;
%         a = 2;
%         b = 1;
%         c = 2;
%         world.ox(1) = x;
%         world.oy(1) = y;
%         world.oz(1) = z;
%         world.oa(1) = a;
%         world.ob(1) = b;
%         world.oc(1) = c;
% 
%         x = 12;
%         y = 6;
%         z = 5;
%         a = 3;
%         b = 3;
%         c = 3;
%         world.ox(2) = x;
%         world.oy(2) = y;
%         world.oz(2) = z;
%         world.oa(2) = a;
%         world.ob(2) = b;
%         world.oc(2) = c;
        
        x = 6;
        y = 0;
        z = 0;
        a = 2;
        b = 5;
        c = 10;
        world.ox(1) = x;
        world.oy(1) = y;
        world.oz(1) = z;
        world.oa(1) = a;
        world.ob(1) = b;
        world.oc(1) = c;

        x = 6;
        y = 5; %0;
        z = 0;
        a = 2;
        b = 5; %10;
        c = 5;
        world.ox(2) = x;
        world.oy(2) = y;
        world.oz(2) = z;
        world.oa(2) = a;
        world.ob(2) = b;
        world.oc(2) = c;
        
        x = 12;
        y = 5;
        z = 0;
        a = 2;
        b = 5;
        c = 10;
        world.ox(3) = x;
        world.oy(3) = y;
        world.oz(3) = z;
        world.oa(3) = a;
        world.ob(3) = b;
        world.oc(3) = c;

        x = 12;
        y = 0;
        z = 5;
        a = 2;
        b = 5;
        c = 5;
        world.ox(4) = x;
        world.oy(4) = y;
        world.oz(4) = z;
        world.oa(4) = a;
        world.ob(4) = b;
        world.oc(4) = c;
        
     end
   end
end