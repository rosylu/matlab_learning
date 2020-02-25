function [num] = chiehjul_hw2_p2(A, i, j, n)
    % Q: Determines the total number of paths of length ? n
    
    % Get path when length = 1
    power_A = A;
    num = power_A(i,j);
    
    % Print plot
    % direct plot: plot(digraph(A))
    % undirect plot: plot(graph(A))
    
    % Check if i, j in the matrix
    size_A = size(A,1);
    if i > size_A || j > size_A
        error('i, j out of matrix range');
    end

    % Count path til length == n
    for length = 2:n
        power_A = power_A*A;
        num = num + power_A(i,j);
    end

end

