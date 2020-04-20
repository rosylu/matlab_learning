function [f, J] = chiehjul_hw8_p4(x)
    % Returns the residual vector and Jacobian matrix for
    % the following system of nonlinear equations
    
    f(1,1) = x(1)^2 + x(2)^2 - 0.75;
    f(2,1) = sin(pi*x(1)) - x(2)^3;
    
    % df1^i/dX1 = 2*X1
    % df1^i/dX2 = 2*X2
    % df2^i/dX1 = pi*cos(pi*X1)
    % df2^i/dX2 = -3*X2^2
    
    J(1,1) = 2*x(1);
    J(1,2) = 2*x(2);
    J(2,1) = pi*cos(pi*x(1));
    J(2,2) = -3*x(2)^2;
end

