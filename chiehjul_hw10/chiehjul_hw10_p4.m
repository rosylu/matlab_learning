
clear all;

f = @(x) sqrt(1+(x^-2));
a = 1;
b = 2;

n_size = 1:1000;

ans = sqrt(5)-sqrt(2)+atanh(sqrt(2))-atanh(sqrt(5));

for i = n_size
    val = chiehjul_hw10_p3(f, a, b, i);
    error(i) = abs(ans-val);
    
    h = 1/i;
    expect(i) = h^4;
end

expect = expect*0.037;

% Generate plot
loglog(n_size, error, '-s', ...
    n_size, expect, '-s');
legend("Error","Global expected val");
grid;

% Add plot info
title('Simpson’s rule error');
xlabel('n size');
ylabel('Error');