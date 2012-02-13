function plot_coverage_std_fixed_n(n)
% plot the probability coverage of std. 95% CI for binomial for
% fixed n
%% input:
% n - number of trials 

nt = 1000;

for p = 1:nt-1
    y(p) = get_coverage_std_fixed_n(p/nt,n);
end

plot((50:nt-50)/nt,y(50:nt-50));           
%plot((1:nt-1)/nt,y);

xlabel( 'observed trial probability' );
ylabel( 'probability coverage' );
grid on;
title('Plot of probability coverage for std. CI')

end