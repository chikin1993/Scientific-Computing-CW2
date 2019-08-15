% A function to calculate the mean-value monte carlo estimate of a the
% function for question 4
function [integral,serror] = q4a(x, N)
    
    % Note the legnth of the area
    area = x;
    
    % Note end points of the interval
    a = 0;
    b = x;
    
    % Use the input to generate points to put in the function
    t = rand(1,N) .* (b-a) + a;
    
    % The function to put the samples through
    fun = @(t) log(abs(2.*sin(t./2)));
    
    % Calculate the integral using MC
    integral = -((area)./N) * sum(fun(t));

    % Calculate the Standard Error
    tot = 0;
    for i=1:N
        tot = (fun(t(i)) - (sum(fun(t))./N)).^2;
    end
    serror = ((b-a)./(N).^0.5).*((1./(N-1)).*tot).^0.5;
    
end