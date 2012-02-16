function plot_coverage_pearson(p, N, alpha)
% plot the probability coverage of cl-pearson. 95% CI for binomial from 2
% to N trials
%% input:
% p - probability
% number of trials
    
%alpha = 0.05;
s = 3;
for n = s:N
    z(n) = get_coverage_pearson(p,n,alpha);
end

plot(s:N,z(s:N));
% plot(0.95);
xlabel( 'number of trials' );
ylabel( 'probability coverage' );
grid on;

end