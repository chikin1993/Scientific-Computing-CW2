% A function for the Monte-Carlo integration of question 2c
function [integral, var] = q2c()

    % The area with in which the function is contained
    area = 6;
    
    % Number of points to use in sampling
    N = 5000;
    
    % This is the function to integrate 
    fun = @(z) (((1./6).*abs(cos(z.^2-5.*z+6))).^0.5)./sin(z./20 +2);
    
    % Sample 5000 points from [2,8]
    x = rand(N,1).*6 +2;
    
    % Using the number of points below the line to estimate the integral
    integral = area/N * sum(fun(x));
        
    % Begin calculating the variance
    tot = 0;
    for i=1:N
        tot = (fun(x(i)) - (sum(fun(x))./N)).^2;
    end
    var = tot.*(area.^2)./(N.*(N-1));