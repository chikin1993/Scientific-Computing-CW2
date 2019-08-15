% A function for the Monte-Carlo integration of question 3a using the mean
% value method
function [integral, error] = q3a()

    % The area with in which the function is contained
    area = 300;
    
    % Number of points to use in sampling
    N = 10000;
    
    % This is the function to integrate 
    fun = @(x) 3.*x.^(3./4).*exp(-x./4);
    
    % Sample from the interval [0,300]
    x = 300.*rand(N,1);
    
    % Using the number of points below the line to estimate the integral
    integral = area/N * sum(fun(x));
    
    % Begin calculating the standard error
    tot = 0;
    for i=1:N
        tot = (fun(x(i)) - (sum(fun(x))./N)).^2;
    end
    error = (300./(N.^0.5)).*((1./(N-1)).*tot).^0.5;
    
end