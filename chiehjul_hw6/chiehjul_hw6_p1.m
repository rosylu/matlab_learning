function [Q,R] = chiehjul_hw6_p1(A)
    % compute a QR decomposition using Householder Reflectors
    
    % Get m,n from matrix, and check if m >= n
    [m, n] = size(A);
    if m < n
        error(' m must greater than or equal to n');
    end
    
    %Init
    R = A;
    Q = eye(m);
    
    % Iterate overall columns
    for k = 1:n
        % Extract the vector below pivot K
        x = R(k:m, k);
        % Create a zero-vector below pivot k
        e = zeros((m-k+1), 1);
        % Make the first ele = 1
        e(1) = 1;
        
        % Get projection onto e
        v = sign(x(1))* norm(x)* e + x;
        v = v/ norm(v);
        
        R(k:m, k:n) = R(k:m, k:n) - 2* v* ( (v') * R(k:m, k:n));
        Q(k:m, :) = Q(k:m, :) - 2* v* ((v')*Q(k:m, :));
    end
    
    % Inverse of the applied Qk's
    Q = Q';
        
end

