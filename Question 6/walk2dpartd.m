% Script to generate 250 trajectories of length 170 from the origin, then
% plotting the distribution of the X and Y coordinates.

% A matrix to record the final position of each walk
finalpositions = zeros(250,2);

% Loop to generate a walk and record the final postion only
for i=1:250
    
    % Generate a walk 
    tempwalk = walk2d(170,0,0);
    
    % Add the final positions as a row in the matrix of the same name
    finalpositions(i,1) = tempwalk(171,1);
    finalpositions(i,2) = tempwalk(171,2);
    
end

% Now plot the final positions of the walks
histogram(finalpositions(:,1))
hold on
histogram(finalpositions(:,2))
title('Histogram Of The Final Position Of 250 Random 2D Walks')
xlabel('Final Coordinate Value')
ylabel('Number of Occurrences')
legend('X - Coordinates','Y - Coordinates')