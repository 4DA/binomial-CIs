function plot_coverage_std(p, N)
% plot the probability coverage of std. 95% CI for binomial from 2
% to N trials
%% input:
% p - probability
% number of trials


for n = 1:N
    y(n) = get_coverage_std(p,n);
end

% for n = 1:N
%     z(n) = get_coverage_pearson(p,n);
% end

% subplot(211);

plot(1:N,y,1:N,0.95,'*');
% plot(0.95);
xlabel( 'number of trials' );
ylabel( 'probability coverage' );
grid on;

% subplot(212);
% plot(1:N,z,1:N,0.95,'*');
% % plot(0.95);
% xlabel( 'number of trials' );
% ylabel( 'probability coverage' );
% grid on;
end