% A function for the Monte-Carlo integration of question 2e
function [integral, var] = q2e()

    % The area with in which the function is contained
    area = 1;
    
    % Number of points to use in sampling
    N = 5000;
    
    % This is the function to integrate 
    fun = @(x,y) abs(sin((x.^2+2.*y.^2+5.*x+1).^0.5))./cos(x.*y);
    
    % Sample 5000 points from [0,1]x[0,1]
    x = rand(N,1);
    y = rand(N,1);
    
    % Using the number of points below the line to estimate the integral
    integral = area/N * sum(fun(x,y));
    
    % Begin calculating the variance
    tot = 0;
    for i=1:N
        tot = (fun(x(i),y(i)) - (sum(fun(x,y))./N)).^2;
    end
    var = tot.*(area.^2)./(N.*(N-1));