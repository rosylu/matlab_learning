function [x, f] = chiehjul_hw9_p1(fun, x0, tol, maxIter)
    % Uses the damped-Newton method for minimization to determine the 
    % minimum and it’s location of a generic function
    
    % constant damping coefficient of α = 0.75
    damp_coe = 0.75;
    count = 1;
    x_pre = x0;
    
    while count <= maxIter
        [f, g, H] = fun(x_pre);
        
        x_new = x_pre - damp_coe*(H\g);
        
        % Use a criteria of |f(x)| < tol to determine convergence
        [f_new, g_new, H_new] = fun(x_new);
        if norm(g_new) < tol
            x = x_new;
            f = f_new;
            break
        end
        count = count + 1;
        x_pre = x_new;
        
        % If the iteration does not converge within max iterations return
        % error.
        if count > maxIter
            error('The iteration does not converge within max iterations');
        end
        
    end
end

