% A script to plot the largest node degree as a function of the average
% degree of a set of 80 E-R model A graphs

% Create 2 empty vectors to store the results
maxdegree = zeros(1,80);
averagedegree = zeros(1,80);

% Create a vector of values of K to use
kvals = linspace(50,4000,80);

% Loop over the graph generation for different values of K and record the
% largest and average node degree of the graph
for i=1:80
   
    tempnet = ERmodA(1000, kvals(i));
    tempdegree = sum(tempnet);
    tempmaxdegree = max(tempdegree);
    % The nnz function is included to give the number of nodes that have a
    % degree that is non-zero. I have included this rather than division by
    % 1000 as I would prefer not to count nodes that are disconnected from
    % the network and would otherwise bring the average down
    tempaveragedegree = sum(tempdegree)/nnz(tempdegree);
    maxdegree(i) = tempmaxdegree;
    averagedegree(i) = tempaveragedegree;
    
end

% Now plot these two against eachother
plot(averagedegree, maxdegree)
title('Graph of Max Degree As A Function Of Average Degree')
xlabel('Average Node Degree')
ylabel('Max Node Degree')