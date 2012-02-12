function p = coverage_prob (cl, cu, pc, nc)
% get probability coverage of given CI and given sample
%% input:
% cl -  lower CI border
% cu -  upper CI border
% pc  - sample probability 
% nc  - number of trials
    
    R = binopdf(0:nc, nc, pc);
    p = 0;
    
    % R
    % cl
    % cu
    for x=0:nc                         
        if ((x/nc >= cl) & (x/nc <= cu))
            p = p + binopdf(x, nc, pc);
            % x/nc
            % p
        end
    end
end

% coverage_prob(0.6, 0.78, 0.7, 100)

%%get converge probability                 
%M = 10000;                              % 
%X = randn(100,M); % true mean = 0
%[muhat,sigmahat,muci,sigmaci] = normfit(X);
%
%[dummy,ord] = sort(muhat);
%muci = muci(:,ord);
%plot(1:M,muci(1,:),'.',1:M,muci(2,:),'.',[1 M],[0 0],'k-');
%
%coverage = sum((muci(1,:) < 0) & (0 < muci(2,:)))/M