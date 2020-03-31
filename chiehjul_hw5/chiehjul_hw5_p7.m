clear all

x = [ 0, 1, 2, 3, 4, 5, 6];
y = [ 0.02, 1.1, 5.0, 8.5, 17.3, 26.1, 42];

% A) Find a least-squares solution to fitting the data using a linear 
% function f(x) = a0 + a1x

c = [ones(7,1),x'];
ls_a = inv((c')*c)*(c')*(y');

ls = @(x)(ls_a(2).*x + ls_a(1));
ls_y = ls(x);

% Calculate error
ls_error = norm(y-ls(x));


% B) Now fit the data using a quadratic polynomial f(x) = a0 + a1x + a2x^2

c = [ones(7,1),x',(x').^2];
f_qp_a = inv((c')*c)*(c')*(y');

f_qp = @(x)(f_qp_a(3).*(x.^2)+f_qp_a(2).*x + f_qp_a(1));
f_qp_y = f_qp(x);

% Calculate error
f_qp_error = norm(y-f_qp(x));

% Plot
plot(x,y,'k*',x,ls_y, '-s',x,f_qp_y,'-s');
legend('Original data','Linear function', 'Quadratic polynomial');
grid;

title('Regression line of Linear function and Quadratic polynomial');
xlabel('X');
ylabel('Y');


