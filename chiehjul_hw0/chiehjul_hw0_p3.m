function [f] = chiehjul_hw0_p3(n)
% Computes the factorial of n using while-loop
    
    if n == 0
        % The factorial of 0 is 1
        f = 1;
    elseif n > 0
        i = 1;
        f = 1;
        while i < n
            i = i + 1;
            f = f * i;
         end
    else
        error('Input should be positive number!')
    end
    
end

