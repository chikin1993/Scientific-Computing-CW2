% A script to produce and approimate plot of the function in question using
% its Fourier series, truncated to the first 5 terms

% Create 100 equally spaced points in the interval [pi,2*pi] and a zero
% vector to store the values
xvals = linspace(pi,2*pi);
yvals = zeros(1,100);

% Loop over these values and calculate values for each
for i=1:100
    
    a = q4c(xvals(i));
    yvals(i) = a;
    
end

% Now plot these values
plot(xvals,yvals)
title('Fourier Series Approximation Of The Function For Question 4')
xlabel('X - [\pi,2\pi]')
ylabel('Y - Coordinate')