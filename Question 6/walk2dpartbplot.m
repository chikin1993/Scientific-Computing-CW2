% A script to simulate 5 different trajectories of random walks from the
% same starting point and plot them for question 6b.

% Simulate the walks and record the trajectories
walk1 = walk2d(200,3,-1);
walk2 = walk2d(200,3,-1);
walk3 = walk2d(200,3,-1);
walk4 = walk2d(200,3,-1);
walk5 = walk2d(200,3,-1);

% Plot the walks on the same plot
plot(walk1(:,1),walk1(:,2));
hold on
plot(walk2(:,1),walk2(:,2));
plot(walk3(:,1),walk3(:,2));
plot(walk4(:,1),walk4(:,2));
plot(walk5(:,1),walk5(:,2));
title('Trajectories of 5 random 2D walks after 200 steps')
xlabel('X - Coordinate')
ylabel('Y - Coordinate')
legend('Walk 1','Walk 2','Walk 3','Walk 4','Walk 5')
hold off