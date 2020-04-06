% This problem will study the loss of orthogonality that can 
% occur using the Gram- Schmidt procedure for ill-conditioned matrices.

clear all

for n = 2:11
    ortho_err_size(n-1) = n;
    A = hilb(n);
     
    % Get the Q, R from matlab command, classical and modified G-S method
    [Q, R]=qr(A,0);
    [Q_classic, R_classic] = chiehjul_hw5_p3(A);
    [Q_modified, R_modified] = chiehjul_hw5_p4(A);
    [Q_householder, R_householder] = chiehjul_hw6_p1(A);
    
    I = eye(n);
    
    % Compute the error and store the val
    ortho_err_matlab(n-1) = (norm(Q'*Q - I));
    ortho_err_classic(n-1) = (norm(Q_classic'*Q_classic - I));
    ortho_err_modified(n-1) = (norm(Q_modified'*Q_modified - I));
    ortho_err_householder(n-1) = (norm(Q_householder'*Q_householder - I));
     
end

% Plot the graph
semilogy(ortho_err_size, ortho_err_matlab, '-s', ...
    ortho_err_size, ortho_err_classic, '-s', ...
    ortho_err_size, ortho_err_modified, '-s', ...
    ortho_err_size, ortho_err_householder, '-s');
legend('Matlab qr','Classic G-S method','Modified G-S method','Household G-S method');
grid;

title('Loss of orthogonality for ill-conditioned matrices');
xlabel('Matrix size');
ylabel("Loss of orthogonality");
 