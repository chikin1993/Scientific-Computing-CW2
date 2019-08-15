% A script to simulate a random walk muliple times, extract the max
% displacement and final position and plot them on histograms. This script
% for walkc.

% Create two empty vectors to store the final postions and maximum
% displacements
finalpos = zeros(1,500);
maxdisp = zeros(1,500);

% Run the walk and record the two needed values for each i
for i=1:500
    
    walk = walkc(100);
    finalpos(i) = walk(101);
    maxdisp(i) = max(abs(walk));
    
end
    
% Now plot these two vectors on seperate histograms
figure(1)
histogram(finalpos);
title('Histogram of final positions of "walkc" after 100 steps')
xlabel('Final position from origin')
ylabel('Frequency of occurrence')

figure(2)
histogram(maxdisp);
title('Histogram of maximum displacements of "walkc" after 100 steps')
xlabel('Maximum displacement from origin')
ylabel('Frequency of occurrence')