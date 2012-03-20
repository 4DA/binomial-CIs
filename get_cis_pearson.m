function [cls, cus] = get_cis_pearson(n, alpha)
% get std confidence interval
%% input:
% n - number of trials
% nt - discretization
% alpha - alpha

cis=zeros(n+1,1);
cus=zeros(n+1,1);
        
for x=0:n
    [phat,pci] = binofit(x,n,alpha);
    cls(x+1)=pci(1); 
    cus(x+1)=pci(2);
end

% f = [cis cus];                          

end
