function [l, v] = chiehjul_hw7_p4(A,v0)
    %Implements the Rayleigh-Quotient iteration for eigenvalue and eigenvector calculation.
    
    % Get m,n from matrix, and check if m == n
    [m, n] = size(A);
    if m ~= n
        error(' m must equal to n');
    end
    
    % Get norm(v0) and check if norm(v0) == 1
    if uint8(norm(v0)) ~= 1
        error(' norm(v0) must equal to 1');
    end
    
    tol = 10^-8;
    diff = 1;
    
    lamb(1) = (v0)'* A * v0;
    v(:,1) = v0;
    k = 1;
    
    while diff > tol
        %(A - lamb(k-1)*eye(n))*Vk = Vk-1
        if k == 1
            v(:,k+1) = (A - lamb(1) * eye(n))\v0;
        else
            v(:,k+1) = (A - lamb(k)*eye(n))\ v(:,k);
        end
        
        v(:,k+1) = v(:,k+1)/norm(v(:,k+1));
        lamb(k+1) = (v(:,k+1))'* A* v(:,k+1);
        
        
        if k == 1
            diff = 1;
        else
            diff = abs(lamb(k+1)-lamb(k))/abs(lamb(k));
        end
        k = k + 1;
    end
    
    l = lamb;
end

