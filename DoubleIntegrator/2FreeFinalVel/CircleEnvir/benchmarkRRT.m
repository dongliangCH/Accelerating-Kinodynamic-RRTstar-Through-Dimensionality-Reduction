
% clc;
% close all;
% clear all;

num_of_runs = 1;
run_RRTstar = 1;

dim=2;
 
if dim == 2
    stepsize = 4;
    radius = 3;
    samples = 1400;
elseif dim == 3
    stepsize = 5;
    radius = 5;
    samples = 2000;
end

random_world = 0;
show_output = 1;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


    ItsM = [];
    timeM = [];
    costM = [];
    segmentLength = stepsize;

    if run_RRTstar == 1

        for i = 1:num_of_runs
            [Its, time, cost] = RRTstar3D(dim, segmentLength, radius, random_world, show_output, samples);
            costM = [costM; cost];
            timeM = [timeM; time];
            ItsM = [ItsM; Its];
        end

    end
