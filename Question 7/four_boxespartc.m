% A script to generate 200 trajectories of length 5000 of a given starting
% state and plot the distribution of the final state of box B

% A matrix to record the final state of each simulation
endstate = zeros(200,1);

% Loop to generate a diffusion simulation and recod the end state
for i=1:200
    
    % Generate a walk 
    tempmole = four_boxes([150,50,150,50], 5000);
    
    % Record the final state of box B as a row in the endstate matrix
    endstate(i) = tempmole(5001,2);
    
end

% Now plot the endstate vector on a histogram to see its distribution
histogram(endstate)
title('Histogram Of The Final Number Of Molecules In Box B')
xlabel('# Of Molecules')
ylabel('Number of Occurrences')