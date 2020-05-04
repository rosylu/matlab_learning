function [l] = chiehjul_hw10_p1(x, i, xList)
    % Returns the ith-Lagrange polynomial evaluated at x from a list of 
    % x-locations xList
    
    for index = 1:i
        l(index) = 1;
        for j = 1:i
            if j ~= index
                l(index) = l(index)* ((x-xList(j))/(xList(index)-xList(j)));
            end
        end
    end
end

