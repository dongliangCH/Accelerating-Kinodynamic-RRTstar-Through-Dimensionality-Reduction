% plot trajectory from path and NN controller
function plotTraj(path,dim)

for i=1:size(path,1)-1
    
    if dim==2     
        
    in = num2cell([path(i, 1 : 4), path(i + 1, 1 : 4)]);
%     Tf = norm(path(i, 1 : 4) - path(i + 1, 1 : 4))/0.8;
    Tf = roots(DI_time(in{:}));
    Tf = Tf(imag(Tf) == 0);
    Tf = min(Tf(Tf >= 0));

    states = @(t)DI_state(t, Tf, in{:});
    dt = 0.2;
    Horizon = Tf / dt;
    t = linspace(0,Tf,Horizon);
    state = zeros(2*dim, length(t));
    for j = 1 : Horizon
        state(:, j) = states(t(j));
    end

    traj = state(1 : 2, :);
    
    plot(path(i,1),path(i,2),'Marker','o','MarkerSize',8,'MarkerEdgeColor','[0.1 0.1 0.1]','LineWidth',1.5);
    plot(traj(1,1:size(t,2)),traj(2,1:size(t,2)),'color',[0.8500 0.3250 0.0980],'LineWidth',2);hold on
    xl = xlabel('$x (m)$','Interpreter','LaTeX');
    yl = ylabel('$y (m)$','Interpreter','LaTeX');
    set(xl,'FontSize',18);
    set(yl,'FontSize',18);
    set(gca,'FontSize',16,'FontName','Times');
%     figure(2)
%     plot(t,traj(1,1:size(t,2)),'LineWidth',2);hold on
%     plot(t,traj(2,1:size(t,2)),'LineWidth',2);
%     figure(3)
%     plot(t,traj(3,1:size(t,2)),'LineWidth',2);hold on
%     plot(t,traj(4,1:size(t,2)),'LineWidth',2);hold on
    
%     plot(traj(1,end),traj(2,end),'o','LineWidth',2,'MarkerSize',8);hold on
%     plot(path(i+1,1),path(i+1,2),'o','LineWidth',2,'MarkerSize',8);hold on

    elseif dim == 3
        
    in = num2cell([path(i, 1 : 6), path(i + 1, 1 : 6)]);
    Tf = roots(DI3d_time(in{:}));
    Tf = Tf(imag(Tf) == 0);
    Tf = min(Tf(Tf >= 0));

    states = @(t)DI3d_state(t, Tf, in{:});
    dt = 0.2;
    Horizon = Tf / dt;
    t = linspace(0,Tf,Horizon);
    state = zeros(2*dim, length(t));
    for j = 1 : Horizon
        state(:, j) = states(t(j));
    end
    traj = state(1 : 3, :);
    
    plot3(path(i,1),path(i,2),path(i,3),'Marker','o','MarkerSize',8,'MarkerEdgeColor','[0.1 0.1 0.1]','LineWidth',1.5);
    plot3(traj(1,1:size(t,2)),traj(2,1:size(t,2)),traj(3,1:size(t,2)),'color',[0.8500 0.3250 0.0980],'LineWidth',2);hold on
    xl = xlabel('$x (m)$','Interpreter','LaTeX');
    yl = ylabel('$y (m)$','Interpreter','LaTeX');
    zl = zlabel('$z (m)$','Interpreter','LaTeX');
    set(xl,'FontSize',18);
    set(yl,'FontSize',18);
    set(zl,'FontSize',18);
    set(gca,'FontSize',16,'FontName','Times');
    end        
       
end
end