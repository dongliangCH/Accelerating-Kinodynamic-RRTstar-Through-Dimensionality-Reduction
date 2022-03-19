
% clc;
% close all;
% clear all;

num_of_runs = 1;
run_RRTstar = 1;

dim=3;
 
stepsize = 4;
radius = 4;
samples = 2000;

show_output = 1;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


    ItsM = [];
    timeM = [];
    costM = [];
    segmentLength = stepsize;

    if run_RRTstar == 1

        for i = 1:num_of_runs
            [Its, time, cost] = RRTstar3D(dim, segmentLength, radius, show_output, samples);
            costM = [costM; cost];
            timeM = [timeM; time];
            ItsM = [ItsM; Its];
        end

    end
