% A function to use importance sampling and the monte-carlo method to
% calculate the intergral of the function from q3a/b with a user spcified
% paramater.
function integral = q3b()
    
    % Set N as the number of points used
    N = 10000;
    
    % Define the function f(x) we want to calculate the integral of
    fx = @(x) 3.*x.^(3./4).*exp(-x./4);
    
    % Through assumption that the given function p(x) is a pdf, we can then
    % deduce the constant C is equal to: C = 1/(1-exp(-1))
    
    % Using his value of C we can now define the inverse function to sample
    % from
    px = @(x) log(x) + log(exp(1)-1) -1;
    
    % Sample from the interval [0,1] and [0,300]
    u = rand(N,1);
    x = 300.*rand(N,1);
    
    % Now calculate the sum of f(x)/p(x) for all the samples
    tot = 0;
    for i=1:N
        tot = tot + fx(x(i))./px(u(i));
    end
    
    % Divide the sum by N 
    integral = tot./N;
    
end