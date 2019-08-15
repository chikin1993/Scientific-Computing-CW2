% A function for the Monte-Carlo integration of question 2d
function [integral, var] = q2d()

    % The area with in which the function is contained
    area = 4*1;
    
    % Number of points to use in sampling
    N = 5000;
    
    % This is the function to integrate 
    fun = @(x,y) 3.*x.*y.^2.*tan(x.^2./y);
    
    % Sample 5000 points from [-2,2]x[3,4]
    x = rand(N,1).*4 -2;
    y = rand(N,1) +3;
    
    % Using the number of points below the line to estimate the integral
    integral = (area/N) .* sum(fun(x,y));
    
    % Begin calculating the variance
    tot = 0;
    for i=1:N
        tot = (fun(x(i),y(i)) - (sum(fun(x,y))./N)).^2;
    end
    var = tot.*(area.^2)./(N.*(N-1));