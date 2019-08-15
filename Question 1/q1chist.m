% A Script to sample random numbers and plot them in a histogram, for this
% I will use 1000 samples to hopefully see the distribution

% Create a vector of zeros to store the samples
samplesc = zeros(1,1000);

% Sample the numbers
for i=1:1000
   
    samplesc(i) = q1c(12.5, 3);
    
end

% Create a histogram of the samples
histogram(samplesc)
title('Histogram Of Samples for Question 1c')
xlabel('Sample Value')
ylabel('Number Of Occurrences')