% A script to compute and plot the degree distribution of the network in
% question 8. This will most likely only run after the script from part a
% has been run and will assume the same names for the network data etc.

% Create a vector of the sums of the columns to show node degrees
degreelist = sum(network);

% Display this on a histogram to show the degree distribution
histogram(degreelist)
title('Histogram Of The Degree Distribution of network\_500')
xlabel('Degree Of Node')
ylabel('Number of Occurrences')