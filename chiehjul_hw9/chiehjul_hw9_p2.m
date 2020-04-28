function [f, g, H] = chiehjul_hw9_p2(x)
    % Verify that your function in Problem 1 is working correctly by 
    % obtaining the minimum location for the Rosenbrock function 
    
    f = (1-x(1))^2 + 100 * (x(2) - x(1)^2)^2;
    
    g(1,1) = -2 + 2*x(1) - 400*x(1)*x(2) + 400 * x(1)^3;
    g(2,1) = 200 * x(2) - 200 * x(1)^2;
    
    H(1,1) = 2 - 400 * x(2) + 1200 * x(1)^2;
    H(1,2) = -400 * x(1);
    H(2,1) = -400 * x(1);
    H(2,2) = 200;
end

