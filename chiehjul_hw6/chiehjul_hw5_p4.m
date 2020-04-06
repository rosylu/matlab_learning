function [Q,R] = chiehjul_hw5_p4(A)
% Modified Gram-Schmidt method
    [m,n] = size(A);

    % Check if m > n
    if m < n
        error("m must greater than or equal to n");
    end

    % Init
    R = zeros(n);
    Q = zeros(m,n);
    V = zeros(m,n);
    
    % Save A to V
    V = A;
    
    for i = 1:n
        
        % Normalization factor
        R(i,i) = norm(V(:,i));
        % i th orthonormal column
        Q(:,i) = V(:,i)/ R(i,i);
        
        % Project all remaining columns
        for j = i+1:n
            % Normalization factor
            R(i,j) = Q(:,i)' * V(:,j);
            % Project to orthonormal space
            V(:,j) = V(:,j) - R(i,j)*Q(:,i);
        end

    end
    
end

