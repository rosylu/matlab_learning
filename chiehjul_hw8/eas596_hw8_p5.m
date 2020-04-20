function [] = eas596_hw8_p5(fdf, x0, x)
%EAS596_HW8_P5 Displays the formatted results for EAS 596, Spring 2020, 
%   HW 8, Problem 5
%   
%   fdf - Function handle to residual and Jacobian function
%   x0 - Initial guess at the solution
%   x - The determined root.

    f = fdf(x);
    fmt = '%4s %+.4e\t%4s %+.4e\t%4s %+.4e\n';
    fprintf(fmt, 'x0:', x0(1), 'x:', x(1), 'f:', f(1));
    fprintf(fmt, '', x0(2), '', x(2), '', f(2));
    fprintf('\n');


    

end

