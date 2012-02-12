function p = get_coverage_pearson_fixed_n (pc, nc)
% get probability coverage of 95%-CI for given nc and pc
%% input:
% pc  - probability 
% nc  - number of trials
    pc
    alpha = 0.05;
    p = 0;    
    p1=zeros(nc+1,1);
    p2=zeros(nc+1,1);

    for x=0:nc
        [phat,pci] = binofit(x,nc,alpha);
        p1(x+1)=pci(1); 
        p2(x+1)=pci(2);
    end;

    for x=0:nc                         
        if (pc >= p1(x+1)) & (pc <= p2(x+1))
            p = p + binopdf(x, nc, pc);
        end
    end

end

