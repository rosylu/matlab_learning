function [Q,R] = chiehjul_hw5_p3(A)
    % Classical Gram-Schmidt method

    [m,n] = size(A);

    % Check if m >= n
    if m < n
        error("m must greater than or equal to n");
    end
    
    % Init
    R = zeros(n);
    Q = zeros(m,n);

    % Calculate Classic G-S method
    for j = 1:n
        Q(:,j) = A(:,j);
        for i = 1:j-1
            R(i,j) = Q(:,i)'*A(:,j);
            Q(:,j)=Q(:,j)-R(i,j)*Q(:,i);
        end

        R(j,j) = norm(Q(:,j));
        Q(:,j) = Q(:,j)/R(j,j);
    end
end

