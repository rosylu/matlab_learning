function [val] = chiehjul_hw10_p3(f, a, b, n)
    % Simpson’s rule
    
    if a > b
        error("b should larger than a")
    end
    
    % Init
    val = 0;
    
    h = (b-a)/n;
    x = a;
    
    for i = 1 : n+1
        if x == a || x == b
            coe = 1;
        elseif mod(i,2) == 0
            coe = 4;
        else
            coe = 2;
        end

        val = val + coe * f(x);
        
        x = x + h;
    end
    
    val = h* (1/3) * val;
    
end

