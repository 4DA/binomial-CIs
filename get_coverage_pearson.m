function p = get_coverage_pearson (pc, nc, alpha)
% get probability coverage of 95%-CI for given nc and pc
%% input:
% pc  - observed sample probability 
% nc  - number of trials
% alpha - obv.
    
    [ph, ci] = binofit(nc.*pc, nc, alpha);      
    p = coverage_prob(ci(1), ci(2), pc, nc);
end

