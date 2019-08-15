% A script just importing the data from the given text file and converting
% it to a sparse matrix, note the txt file must be in the same directory as
% this file to work

% Import data as a matrix
data = importdata('network_500.txt');

% Split this in to the two column vectors needed
ii = data(:,1);
jj = data(:,2);

% Build the matrix using these
network = sparse(ii,jj,1,500,500);

% Add the transpose of the matrix to itself for the full matrix
network = network + network';