% Script to calculate and plot the clustering coefficent of the nodes in
% the network given.

% Create a duplicate matrix to use for this part and also a degreelist
cnetwork = network;
tempdegree = degreelist;

% Take the 3rd power of the adjacency matrix to show number of paths of
% length 3
cnetwork3 = cnetwork^3;

% Find the vector representing the number of distinct triangles each node
% is present in, originally i thought this must be divided by 6
% element-wise but that results in fraction numbers so am proceeding as is
triangles = diag(cnetwork3);

% Transpose to give the same size as degreelist
triangles = triangles';

% Calculate the clustering of each node using the number of triangles and
% the node degree
cluster = (triangles)./(tempdegree.*(tempdegree-1));

% Some nodes have degrees of 1 so have 0 clustering, so replacing this from
% the NaN that would be found from the above formula
for i=1:500
    
    if isnan(cluster(i))
        cluster(i) = 0;
    end
    
end

% Now plot the histogram of the clustering coefficents
histogram(cluster)
title('Histogram Of The Clustering Coefficient Of network\_500')
xlabel('Clustering Coefficient')
ylabel('Number of Occurrences')