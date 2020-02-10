function [f] = chiehjul_hw0_p2(n)
% Compute the factorial of n using for-loop
        
    if n == 0
        % The factorial of 0 is 1
        f = 1;
    elseif n > 0
        f = 1;
        for fac_count = 1:n
            f = f * fac_count;
        end
    %else
        %error('Input should be positive number!')
    end
    
end

