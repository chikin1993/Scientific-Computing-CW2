% A function to choose 2 random numbers from the Gaussian distribution with
% a given mean value and variance. Using Marsaglia's Polar method.
function num = q1c(mu, sig)
    
    % Pick random variables and accept when radius less than 1
    rad = 1.1;
    while rad > 1
        x = rand();
        x = 2.*x - 1;
        y = rand();
        y = 2.*y - 1;
        rad = x.^2 + y.^2;
    end
    
    % Transform these in to a gaussian variable
    x = x.*sqrt(-2.*log(rad)./rad);
    y = y.*sqrt(-2.*log(rad)./rad);
    
    % Take the given values and transform them to a modified gaussian
    x = sig.*x + mu;
    y = sig.*y + mu;
    
    % Return the first value, 2 calculated if needed
    num = x;
    %num2 = y;
end