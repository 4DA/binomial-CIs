function p = coverage_prob (cl, cu, pc, nc)
% get probability coverage of given CI and given sample
%% input:
% cl -  lower CI border
% cu -  upper CI border
% pc  - sample probability 
% nc  - number of trials
% Sz  - number of generated binomial numbers

    Sz = 100000;
    
    R = binornd(nc, pc, Sz, 1);
    p = sum( ((R(:) ./ nc ) > cl) & ((R(:) ./ nc ) < cu) ) ./ Sz;
    % p = sum (R) ./ 10000;
    % p = R;
    % p = R(:) ./ nc;
end

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