function plotWorld(world,dim)
  % the first element is the north coordinate
  % the second element is the south coordinate
  if dim ==2

  axis([world.origincorner(1),world.endcorner(1),...
      world.origincorner(2), world.endcorner(2)]);
  hold on
  
%   N = 20;
%   th = 0:2*pi/N:2*pi;
  for i=1:world.NumObstacles
      
      X = [world.ox(i)    world.ox(i)+world.oa(i)    world.ox(i)+world.oa(i)  world.ox(i)  world.ox(i)];
      Y = [world.oy(i)    world.oy(i)                world.oy(i)+world.ob(i)  world.oy(i)+world.ob(i)   world.oy(i)];
      fill(X, Y, 'r');

  end

   
  elseif dim ==3
  axis([world.origincorner(1),world.endcorner(1),...
      world.origincorner(2), world.endcorner(2),...
      world.origincorner(3), world.endcorner(3)]);
  hold on

  for i=1:world.NumObstacles
      
      vert = [world.ox(i)               world.oy(i)              world.oz(i);
              world.ox(i)+world.oa(i)   world.oy(i)              world.oz(i);
              world.ox(i)+world.oa(i)   world.oy(i)+world.ob(i)  world.oz(i);
              world.ox(i)               world.oy(i)+world.ob(i)  world.oz(i);
              world.ox(i)               world.oy(i)              world.oz(i)+world.oc(i);
              world.ox(i)+world.oa(i)   world.oy(i)              world.oz(i)+world.oc(i);
              world.ox(i)+world.oa(i)   world.oy(i)+world.ob(i)  world.oz(i)+world.oc(i);
              world.ox(i)               world.oy(i)+world.ob(i)  world.oz(i)+world.oc(i)];
      face = [1 2 3 4;
              1 2 6 5;
              2 3 7 6;
              1 4 8 5;
              5 8 7 6;
              3 4 8 7];
      patch('Faces',face,'Vertices',vert,'FaceColor','[0.5 0.5 0.5]','EdgeColor','[0.2 0.2 0.2]','FaceAlpha',.5)
%       material shiny;
%       alpha('color');
%       alphamap('rampdown');
      
  end
  
  end

  xl = xlabel('$x  (m)$','Interpreter','LaTeX');
  yl = ylabel('$y  (m)$','Interpreter','LaTeX');
  zl = zlabel('$z  (m)$','Interpreter','LaTeX');
  set(xl,'FontSize',18);
  set(yl,'FontSize',18);
  set(zl,'FontSize',18);
  set(gca,'FontSize',16,'FontName','Times');
  axis equal
  
end
