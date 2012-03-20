function [cis, cus] = get_cis_std(n, alpha)
% get std confidence interval
%% input:
% n - number of trials
% nt - discretization
% alpha - alpha

cis=zeros(n+1,1);
cus=zeros(n+1,1);
        
for x=2:n
    [cl, cu] = std_approx(n, x/n, alpha);
    cis(x+1)=cl;
    cus(x+1)=cu;
end

% f = [cis cus];                          

end
