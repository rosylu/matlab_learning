function [f] = chiehjul_hw10_p2(L, x, xList, yList)
    % Evaluates the interpolating polynomial at location x given the data 
    % pairs xList and yList.
    
    % Init
    f = 0;
    
    % Get the size of xList
    i = length(xList);
    l = L(x, i, xList);
    
    % Calculate f
    for index = 1:i
        f = f + (l(index)*yList(index));
    end
    
end

