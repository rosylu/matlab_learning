function [x] = chiehjul_hw8_p2(f, df, x0, tol)
    % Determines the root of a single-variable function using the undamped
    % Newton-Rhapson method
    
    count = 1;
    x_list(count)= x0;
    
    while count < 101
        x_list(count + 1) = x_list(count) - f(x_list(count))/df(x_list(count));
        
        % Use a criteria of |f(x)| < tol to determine convergence
        if abs(f(x_list(count+1))) < tol
            x = x_list(count+1);
            break
        end
        count = count + 1;
        
        % If the iteration does not converge within 100 iterations return
        % error.
        if count > 100
            error('The iteration does not converge within 100 iterations');
        end
        
    end
    
end

