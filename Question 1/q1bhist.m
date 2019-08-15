% A Script to sample random numbers and plot them in a histogram, for this
% I will use 1000 samples to hopefully see the distribution

% Create a vector of zeros to store the samples
samplesb = zeros(1,1000);

% Sample the numbers
for i=1:1000
   
    samplesb(i) = q1b();
    
end

% Create a histogram of the samples
histogram(samplesb)
title('Histogram Of Samples for Question 1b')
xlabel('Sample Value')
ylabel('Number Of Occurrences')