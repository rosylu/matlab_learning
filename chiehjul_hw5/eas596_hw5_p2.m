
nList = 3:8;                    % List of sizes to use
err0 = zeros(size(nList));      % Initialize an error vector
err = zeros(size(nList));       % Initialize another error vector

for i=1:length(nList)           % Iterate over all sizes
    
    n = nList(i);               % Size of the matrix to use
    
    A=fliplr(vander(1:n));A(:,end)=[]   % Form the matrix and strip the last column
    

    b = ones(n,1)              % RHS of all ones

    x = A\b;                    % Solve using MATLAB's slash command
    A*x-b;
    err0(i) = norm(A*x-b);      % Error using slash

    x = (inv(A'*A))*(A')*b;     % Solve by explicitly forming inverse of the Normal equations
    A*x-b;
    err(i) = norm(A*x-b);       % Error using Normal equations
end

figure;
semilogy(nList, err0, '-s', nList, err,'-s'); % Plot the error
legend('Slash','Normal Equations');
xlabel('Matrix Size');
ylabel('Error in Solution');

