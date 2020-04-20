function [x] = chiehjul_hw8_p1(f, a, b, tol)
    % Determines the root of a single-variable function using the Bisection method
    
    if a >= b
        error(' a must less than b');
    end
    
    % Middle point
    m = (a+b)/2;
    
    if abs(b-a) < tol
        x = m;
        
    else
        while abs(f(m)) >= tol
            if f(a)*f(m) < 0
                b = m;
            elseif f(m)*f(b) < 0
                a = m;
            end

            m = (a+b)/2;
            
        end
        if abs(f((a+b)/2)) < tol
            x = m;
        end
    end
    
    % consider infinite loop!
    
end

