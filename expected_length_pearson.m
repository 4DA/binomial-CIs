function y = expected_length_pearson(n, p)
% get expected length of std CI interval
%% input:
% n - number of trials
% p - sample probability

L = 0;
for x = 0:n
    % [cl cu]  = std_approx(n, p);
    [ph, ci] = binofit(n.*p, n);
    cl = ci(1);
    cu = ci(2);
    L = L + (cu - cl) .* nchoosek(n, x) .* p.^x .* (1 - p).^ (n - ...
                                                      x);
end

y = L;

end
    