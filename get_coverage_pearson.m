function p = get_coverage_pearson (pc, nc)
% get probability coverage of 95%-CI for given nc and pc
%% input:
% pc  - sample probability 
% nc  - number of trials
    [ph, ci] = binofit(nc.*pc, nc);
    p = coverage_prob(ci(1), ci(2), pc, nc);
end