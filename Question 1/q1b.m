% A function to draw a random number uniformly from the intervals
% [1,2],[3,4],[5,6]
function num = q1b()
    
    % Choose a random integer from 1,2 or 3
    interval = randi(3);
    
    % Pick a random number from [0,1]
    num = rand();
    
    % Modify this based on the choice of inteval
    if interval == 1
        num = num + 1;
    elseif interval == 2
        num = num + 3;
    elseif interval == 3
        num = num + 5;
    end
    
end