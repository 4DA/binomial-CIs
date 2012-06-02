function [x, y] = stern_crow ( nc, pc, alfa )
%std_approx Sterne's approximation of binomial dist CI 
%% input:
% nc = sample size 
% pc = sample success probability
%% output:
% x - left confinence interval limit
% y - left confinence interval limit

    gm = 1.0 - alfa; % gamma
    
    ileft = 0;
    iright = 0;
    minlen = nc+1;
    
    P = binopdf(0:nc, nc, pc);
   
    for l=1:nc-1
        for r = l:nc
            if (sum(P(l:r)) > gm && r-l < minlen)
                ileft = l;
                iright = r;
                minlen = r-l;
            end
        end
    end
    
    x = ileft/nc;
    y = iright/nc;

end
