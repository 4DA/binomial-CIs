function p = get_coverage_pearson_fixed_n (pc, nc)
% get probability coverage of 95%-CI for given nc and pc
%% input:
% pc  - probability 
% nc  - number of trials
    pc 
    persistent cis cus nnc;
    
    alpha = 0.05;
    
    if (isempty(nnc) | (nnc ~= nc))
        nnc = nc;
        cis=zeros(nc+1,1);
        cus=zeros(nc+1,1);

        for x=0:nc
            [phat,pci] = binofit(x,nc,alpha);
            cis(x+1)=pci(1); 
            cus(x+1)=pci(2);
        end

    end

    p = coverage_prob_fixed_n(cis, cus, pc, nc);
end

