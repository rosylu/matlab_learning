function [B] = chiehjul_hw7_p5(A, p)
    % Accepts a matrix A and rank p and returns the rank-p matrix B that is 
    % the best approximation to A.
    
    % If the requested rank p is larger than rank(A) then you can simply 
    % return A as the solution
    if rank(A) < p
        B = A;
    else
        [U,S,V] = svd(A);
        B = zeros(size(A));
        for i = 1:p
            B = B + S(i,i).*U(:,i).*V(:,i)';
        end
    end
    
end

