% A) Produce a single plot of the time required versus the matrix size

% Random select at least matrices sizes from a size n = 10 to n = 1000
size_vec = round(logspace(1,3,50));

for size_index = 1:length(size_vec)
    % Generate random matrix
    n = size_vec(size_index);
    A = rand(n,n)+n*eye(n);    
    
    % Calculate the time required for the LU-decomposition
    tic;
    chiehjul_hw4_p2(A);
    require_time(size_index) = toc;
    
end

% Generate plot
loglog(size_vec,require_time,'-s'); 
grid

% Add plot info
title('Expected long-term trend of the time required')
xlabel('Matrix size')
ylabel('Require time')

% B) The expected long-term trend should be steadily increased, but the 
% trend does not hold for small matrix sizes. 
% According to the time complexity = 1/6(2n^3-3n^2-n), the big O is n^3, if 
% matrix sizes are not large enough, n^3 cannot dominate the time complexity,
% causing the different trend than the expected.