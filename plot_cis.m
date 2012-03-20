function plot_cis(cls, cus)
% plot the probability coverage of std. 95% CI for binomial for
% fixed n
%% input:
% n - number of trials 

%nt = 1000;
%alpha = 0.05;
%cla;    
plot(cls);
hold on;
plot(cus);
hold off;

%plot((50:nt-50)/nt,y(50:nt-50));           


xlabel( 'number of trials' );
ylabel( 'probability coverage' );
grid on;
title('Plot for CIs')

end