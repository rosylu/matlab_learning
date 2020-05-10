function [val] = chiehjul_hw10_p3(f, a, b, n)
    % Simpson’s rule
    
    if a > b
        error("b should larger than a")
    end
    
    % Init
    val = 0;
    sub_val = 0;
    
    h = (b-a)/n;
    x1 = a;
    
    % Composite rule
    for i = 1 : n
        
        % Simpson's rule in every interval
        x3 = x1 + h;
        
        sub_h = (x3-x1)/2;
        x2 = x1 + sub_h;

        sub = f(x1);
        sub = sub + 4*f(x2);
        sub = sub + f(x3);
        
        % Intergration of sub-interval
        sub = sub_h * (1/3) * sub;
        
        x1 = x1 + h;
        
        val =  val + sub;
    end
    

    
end

