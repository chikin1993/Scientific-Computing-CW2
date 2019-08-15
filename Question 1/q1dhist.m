% A Script to sample random numbers and plot them in a histogram, for this
% I will use 1000 samples to hopefully see the distribution

% Create a vector of zeros to store the samples
samplesd1 = zeros(1,1000);
samplesd2 = zeros(1,1000);
samplesd3 = zeros(1,1000);

% Sample the numbers
for i=1:1000
   
    samplesd1(i) = q1d(0.7);
    samplesd2(i) = q1d(1.5);
    samplesd3(i) = q1d(3.5);
    
end

% Create a histogram of the samples
histogram(samplesd1)
hold on
histogram(samplesd2)
histogram(samplesd3)
title('Histogram Of Samples for Question 1d')
xlabel('Sample Value')
ylabel('Number Of Occurrences')
legend('Lambda = 0.7','Lambda = 1.5','Lambda = 3.5')
hold off