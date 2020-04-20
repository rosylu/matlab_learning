% Use MATLAB’s fsolve function

fdf = @(x)chiehjul_hw8_p4(x);
tol = 10^-8;
options = optimoptions('fsolve','SpecifyObjectiveGradient', true, ...
    'Display', 'off', 'FunctionTolerance', 1e-8);

x0=[0;1E-6];

%x0 = [0;0.1];
x = fsolve(fdf, x0, options);

eas596_hw8_p5(fdf, x0, x);

x0=[0;-1E-6];

%x0 = [0;-0.1];
x = fsolve(fdf, x0, options);

eas596_hw8_p5(fdf, x0, x);

