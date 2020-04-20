% Uses the functions from problems 3 and 4 to determine the roots of the 
% nonlinear system in Problem 4 

fdf = @(x)chiehjul_hw8_p4(x);
tol = 10^-8;

x0=[0;1E-6];
% x0 = [0;0.1];
x = chiehjul_hw8_p3(fdf, x0, tol);

eas596_hw8_p5(fdf, x0, x);

x0=[0;-1E-6];
% x0 = [0;-0.1];
x = chiehjul_hw8_p3(fdf, x0, tol);

eas596_hw8_p5(fdf, x0, x);