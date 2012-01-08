function plot_coverage_std_fixed_n(n)
% plot the probability coverage of std. 95% CI for binomial for
% fixed n
%% input:
% n - number of trials 

N = 1000;

for p = 1:N-1
    y(p) = get_coverage_std(p/N,n);
end

plot((1:N-1)/N,y);

xlabel( 'trial probability' );
ylabel( 'probability coverage' );
grid on;
title('Plot of probability coverage for std. CI')

end