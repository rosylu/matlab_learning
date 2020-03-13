function [L,U] = chiehjul_hw4_p2(A)
%Write your own MATLAB function that accepts a matrix A of size m¡Ñn and computes
% the reduced LU decomposition of A (without partial pivoting).

    % L = lower triangular
    % U = upper triangular    
    % A = m*n matrix 
    [m,n] = size(A);
    
    % Init
    L = eye(m, min(m,n));
    U = A;

    % LU - Decomposition
    for i = 1:min(m-1,n)
        for j = i+1:m
            L(j,i) = U(j,i)/U(i,i);
            U(j,i) = 0;
            for k=i+1:n
                U(j,k) = U(j,k) - L(j,i)*U(i,k);
            end
        end
    end
    
    if m > n
        U = U(1:n,1:n);
end

