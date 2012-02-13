function p = get_coverage_std_fixed_n (pc, nc)
% get probability coverage of 95%-CI for given nc and pc
%% input:
% pc  - parameter p (probability)
% nc  - number of trials
    persistent cis cus nnc;
    alpha = 0.05;
    
    if (isempty(nnc) | (nnc ~= nc))
        nnc = nc;
        cis=zeros(nc+1,1);
        cus=zeros(nc+1,1);
        
        for x=2:nc
            [cl, cu] = std_approx(nc, x/nc);
            cis(x+1)=cl;
            cus(x+1)=cu;
        end
    end
    p = coverage_prob_fixed_n(cis, cus, pc, nc);

end

