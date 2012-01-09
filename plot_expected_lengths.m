function  plot_expected_lengths(n)
% plot expected length of intervals 
%% input:
% n - number of trials

N = 100;

for p = 1:N-1
    y(p) = expected_length_std(n,p/N);
end

for p = 1:N-1
    z(p) = expected_length_pearson(n,p/N);
end

hold; 
plot((1:N-1)/N,y,'*');
plot((1:N-1)/N,z,'+');

xlabel( 'trial probability' );
ylabel( 'expected length' );
title('Expected length of CI. "*" - standard, "+" - pearson')

hold;

