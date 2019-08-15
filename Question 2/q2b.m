% A function for the Monte-Carlo integration of question 2b
function [integral, var] = q2b()

    % The area with in which the function is contained
    area = 10;
    
    % Number of points to use in sampling
    N = 5000;
    
    % This is the function to integrate 
    fun = @(z) cos(z+5).*((z.^2-3.*z+6)./(z.^2+3));
    
    % Sample 5000 points from [0,10]
    x = rand(N,1).*10;
    
    % Using the number of points below the line to estimate the integral
    integral = area/N * sum(fun(x));
        
    % Begin calculating the variance
    tot = 0;
    for i=1:N
        tot = (fun(x(i)) - (sum(fun(x))./N)).^2;
    end
    var = tot.*(area.^2)./(N.*(N-1));