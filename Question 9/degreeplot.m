% Script to generate an Redos-Renyi random graph and plot the resulting
% degree distribution

% Generate the graph
graph = ERmodA(10000,6000);

% Sum the columns of the matrix to get the degree vector
degreedist = sum(graph);

% Plot this resulting vector on a histogram
histogram(degreedist)
title('Histogram Of The Degree Distrobution of the ERmodA Graph')
xlabel('Node Degree')
ylabel('Number of Occurrences')