function p = get_coverage_std (pc, nc,alpha)
% get probability coverage of 95%-CI for given nc and pc
%% input:
% pc  - observed sample probability 
% nc  - number of trials
% alpha - obv.
    
    [cl, cu] = std_approx(nc, pc, alpha);
    p = coverage_prob(cl, cu, pc, nc);
end
