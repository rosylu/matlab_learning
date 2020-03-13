% A) Computes the forward finite difference approximation 
% of the derivative of cos(x) for x = £k/5 and plot the error between your 
% approximation and the exact derivative for each of your step sizes

% Init
error_list = [];

x = pi/5;
h = logspace(-16,-1,100);
% derivative of cos(x)
deri = -sin(x);

for size_index = 1:length(h)
    % Construct a forward difference approximation of the derivative
    approx = (cos(x+h(size_index)) - cos(x))/h(size_index);
    % Calculate the error between approx and exact derivative
    error_list(size_index) = abs(approx - deri);
end

% Generate plot
loglog(h,error_list,'-s'); 
grid

% Add plot info
title('Derivative of cos(x) for x = £k/5.')
xlabel('Each step size')
ylabel('Error')

% B) The best size is around 5*10^-9 ~ 10^-8. The graph is roughly 
% symmetrical, and the fluctuation of the error presented on the left 
% (step size < best case) is greater than the right (step size > best case).
% This is because plotting with the absolute value of errors; moreover, the
% decimals get truncated when calculating forward difference approximation 
% with small step sizes.