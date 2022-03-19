function [world, NumObstacles] = createKnownWorld(endcorner, origincorner, dim)
NumObstacles = 5;
  if dim == 2
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
    maxRadius = 3;

        world.radius(1) = maxRadius;
        cx = 6;
        cy = 6;
        world.cx(1) = cx;
        world.cy(1) = cy;

        world.radius(2) = maxRadius;
        cx = 15;
        cy = 14;
        world.cx(2) = cx;
        world.cy(2) = cy;

        world.radius(3) = maxRadius-1;
        cx = 10;
        cy = 11;
        world.cx(3) = cx;
        world.cy(3) = cy;

        world.radius(4) = maxRadius+0.5;
        cx = 5;
        cy = 15;
        world.cx(4) = cx;
        world.cy(4) = cy;

        world.radius(5) = maxRadius;
        cx = 15;
        cy = 5;
        world.cx(5) = cx;
        world.cy(5) = cy;
    end

  elseif dim == 3

    NumObstacles = 9;
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
        maxRadius = 3;

        world.radius(1) = maxRadius;
        cx = 10;
        cy = 10;
        cz = 10;
        world.cx(1) = cx;
        world.cy(1) = cy;
        world.cz(1) = cz;

        world.radius(2) = maxRadius;
        cx = 5;
        cy = 5;
        cz = 5;
        world.cx(2) = cx;
        world.cy(2) = cy;
        world.cz(2) = cz;

        world.radius(3) = maxRadius;
        cx = 15;
        cy = 15;
        cz = 15;
        world.cx(3) = cx;
        world.cy(3) = cy;
        world.cz(3) = cz;

        world.radius(4) = maxRadius;
        cx = 5;
        cy = 5;
        cz = 15;
        world.cx(4) = cx;
        world.cy(4) = cy;
        world.cz(4) = cz;

        world.radius(5) = maxRadius;
        cx = 15;
        cy = 15;
        cz = 5;
        world.cx(5) = cx;
        world.cy(5) = cy;
        world.cz(5) = cz;

        world.radius(6) = maxRadius;
        cx = 5;
        cy = 15;
        cz = 5;
        world.cx(6) = cx;
        world.cy(6) = cy;
        world.cz(6) = cz;

        world.radius(7) = maxRadius;
        cx = 15;
        cy = 5;
        cz = 5;
        world.cx(7) = cx;
        world.cy(7) = cy;
        world.cz(7) = cz;

        world.radius(8) = maxRadius;
        cx = 15;
        cy = 5;
        cz = 15;
        world.cx(8) = cx;
        world.cy(8) = cy;
        world.cz(8) = cz;


        world.radius(9) = maxRadius;
        cx = 5;
        cy = 15;
        cz = 15;
        world.cx(9) = cx;
        world.cy(9) = cy;
        world.cz(9) = cz;
     end
   end
end