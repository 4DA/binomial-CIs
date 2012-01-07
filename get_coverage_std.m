function p = get_coverage_std (pc, nc)
% get probability coverage of 95%-CI for given nc and pc
%% input:
% pc  - sample probability 
% nc  - number of trials
    [cl, cu] = std_approx(nc, pc);
    p = coverage_prob(cl, cu, pc, nc);
end
