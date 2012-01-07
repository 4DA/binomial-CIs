function [x, y] = std_approx ( nc, pc )
%std_approx Standart distribution approximation of binomial dist CI (95 %)
%% input:
% nc = sample size 
% pc = sample success probability

    alfa = 0.05;
    qc = 1.0 - pc;

    k = norminv(1 - alfa / 2);
    
    npq = (pc * qc ./ nc) .^ (1 ./ 2);
    
    cl = pc - k .* npq;
    cu = pc + k .* npq;
    
    x = cl;
    y = cu;

end

%%TODO: ask why 1/normcdf is worse than norminv!

%% in R we have:
% binom.confint(21, 35, 0.95, methods = "all")
%           method  x  n      mean     lower     upper
% 1  agresti-coull 21 35 0.6000000 0.4354419 0.7447779
% 2     asymptotic 21 35 0.6000000 0.4376996 0.7623004
% 3          bayes 21 35 0.5972222 0.4351076 0.7490989
% 4        cloglog 21 35 0.6000000 0.4200188 0.7402155
% 5          exact 21 35 0.6000000 0.4211177 0.7612919
% 6          logit 21 35 0.6000000 0.4327140 0.7468188
% 7         probit 21 35 0.6000000 0.4337843 0.7496669
% 8        profile 21 35 0.6000000 0.4348970 0.7509297
% 9            lrt 21 35 0.6000000 0.4348925 0.7509489
% 10     prop.test 21 35 0.6000000 0.4220904 0.7564794
% 11        wilson 21 35 0.6000000 0.4357271 0.7444927

