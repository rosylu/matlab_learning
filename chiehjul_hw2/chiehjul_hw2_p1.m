function [length] = chiehjul_hw2_p1(A, i, j)
    % Q: Determines the minimum path length to connect two points

    % Init
    length = 1;
    power_A = A;
    
    % Print plot
    % direct plot: plot(digraph(A))
    % undirect plot: plot(graph(A))
    
    % Check if i, j in the matrix
    size_A = size(A,1);
    if i > size_A || j > size_A
        error('i, j out of matrix range');
    end

    % Count length til length == 20
    while power_A(i,j) == 0 && length < 20
        power_A = power_A*A;
        length = length + 1;
    end
    
    % Check if the length need to > 20, error out
    if power_A(i,j) == 0
        error('Length is larger than 20');
    end
    
end


