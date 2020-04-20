function [x] = chiehjul_hw8_p3(fdf, x0, tol)
    % Determines the root of a system of nonlinear functions using the 
    % undamped Newton-Rhapson method.
    
    count = 1;
    x_pre = x0;
    
    while count < 101
        [f,J] = fdf(x_pre);
        %x_new = x_pre - J\f;
        x_new = x_pre - J\f;
        
        %x_new = x_pre - inv(J)*f
        
        
        % Use a criteria of |f(x)| < tol to determine convergence
        [f_new,J_new] = fdf(x_new);
        if norm(f_new) < tol
            x = x_new;
            break
        end
        count = count + 1;
        x_pre = x_new;
        
        % If the iteration does not converge within 100 iterations return
        % error.
        if count > 100
            error('The iteration does not converge within 100 iterations');
        end
        
    end
    
end

