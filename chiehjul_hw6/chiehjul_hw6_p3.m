% Produces the time needed to compute the QR factorization 
% using the functions using Classical Gram-Schmidt, Modified Gram-Schmidt,
% Householder Reflectors, and MATLAB¡¦s qr function.

% Random square matrices from a size n = 10 to n = 1000
size = round(logspace(1, 3, 50));

% Calculate the required time for each method and store the vl
for index = 1:length(size)
    % Generate a random matrix
    n = size(index);
    A = rand(n,n);
    
    tic;
    [Q, R]=qr(A,0);
    qr_cmd(index) = toc;
    
    tic;
    [Q_classic, R_classic] = chiehjul_hw5_p3(A);
    qr_classic(index) = toc;
    
    tic;
    [Q_modified, R_modified] = chiehjul_hw5_p4(A);
    qr_modified(index) = toc;
    
    tic;
    [Q_householder, R_householder] = chiehjul_hw6_p1(A);
    qr_householder(index) = toc;
    
end

% Modified: 2*m.^3
% Householder: 2*m^3- 2/3*n.^3

expected = (2*(size.^3));

% Generate plot
loglog(size, qr_cmd, '-s', ...
    size, qr_classic, '-s', ...
    size, qr_modified, '-s', ...
    size, qr_householder, '-s', ...
    size, expected, '-s');
legend("Matlab's command", "Classical", "Modified", "HouseHolder", "Expected");
grid;

% Add plot info
title('QR factorization required time');
xlabel('Matrix size');
ylabel('Require time');

