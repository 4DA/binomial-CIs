function plot_coverage_pearson(p, N)
% plot the probability coverage of cl-pearson. 95% CI for binomial from 2
% to N trials
%% input:
% p - probability
% number of trials

for n = 1:N
    z(n) = get_coverage_pearson(p,n);
end

plot(1:N,z,1:N,0.95,'*');
% plot(0.95);
xlabel( 'number of trials' );
ylabel( 'probability coverage' );
grid on;

end