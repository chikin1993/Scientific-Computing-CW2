% Script to generate 80 graphs of the same type as in part c and then
% calculate the needed measures of the connected components

% Create 2 empty vectors to store the results
maxdegree = zeros(1,80);
averagedegree = zeros(1,80);
largestcomps = zeros(1,80);
averagecomps = zeros(1,80);

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
    tempcomps = compcount(tempnet);
    tempaveragecomps = sort(tempcomps);
    tempaveragecomps = tempaveragecomps(1:end-1);
    
    % Record the values
    maxdegree(i) = tempmaxdegree;
    averagedegree(i) = tempaveragedegree;
    largestcomps(i) = max(tempcomps)/1000;
    averagecomps(i) = sum(tempaveragecomps)/length(tempaveragecomps);
    
end
figure(1)
% Now plot these two against eachother
plot(averagedegree, maxdegree)
title('Graph of Max Degree As A Function Of Average Degree')
xlabel('Average Node Degree')
ylabel('Max Node Degree')

% Now plot these two against eachother
figure(2)
plot(averagedegree, largestcomps)
title('Graph of Largest Connected Component Size As A Function Of Average Degree')
xlabel('Average Node Degree')
ylabel('Size Of Largest Connected Component')

% Now plot these two against eachother
figure(3)
plot(averagedegree, averagecomps)
title('Graph of Average Connected Component Size As A Function Of Average Degree')
xlabel('Average Node Degree')
ylabel('Average Size Of All But Largest Component')