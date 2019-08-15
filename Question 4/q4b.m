% A Script to produce a MC Mean Value estimate of the fuction for question
% 4, part b

% Create 100 equally spaced points in the interval [pi,2*pi] and a zero
% vector to store the estimates
xvals = linspace(pi,2*pi);
yvals = zeros(1,100);

% Loop over these values and calculate estimates for each
for i=1:100
    
    % Standard error is only taken as MATLAB needs all outputs to be
    % assigned, but it is not used further in the example
    [a,b] = q4a(xvals(i), 500);
    yvals(i) = a;
    
end

% Now plot these values
plot(xvals,yvals)
title('Approximate Graph Of The Function For Question 4')
xlabel('X - [\pi,2\pi]')
ylabel('Y - Coordinate')