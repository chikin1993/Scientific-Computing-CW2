% A function for the Monte-Carlo integration of question 2a
function [integral, var] = q2a()

    % The area with in which the function is contained
    area = 4;
    
    % Number of points to use in sampling
    N = 5000;
    
    % This is the function to integrate 
    fun = @(z) 0.5 + sin(z.^3-4).*log(1+abs(z));
    
    % Sample from the interval [-2,2]
    x = 4.*rand(N,1) -2;
    
    % Using the number of points below the line to estimate the integral
    integral = area/N * sum(fun(x));
    
    % Begin calculating the variance
    tot = 0;
    for i=1:N
        tot = (fun(x(i)) - (sum(fun(x))./N)).^2;
    end
    var = tot.*(area.^2)./(N.*(N-1));
    
end