% A script to generate 10000 iterations of the four_boxes function and show
% the outcome on a signle figure

% Generate the data matrix to display
moledata = four_boxes([0,400,0,0], 10000);

% Reduce the matrix to only the rows required (first row ignored as it is
% t=0) (want rows 8001 to 10001
moledata = moledata(8001:10001,:);

% Now plot this data on a single graph
plot(moledata(:,1))
hold on
plot(moledata(:,2))
plot(moledata(:,3))
plot(moledata(:,4))
title('Graph Showing Diffusion Of Gas Molecures In 4 Boxes Over Time')
xlabel('Time Range [8000,10000]')
ylabel('# Of Molecules In Box')
legend('Box A','Box B','Box C','Box D')
hold off