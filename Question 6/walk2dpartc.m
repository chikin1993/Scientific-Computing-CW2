% A function to simulate a random walk in two dimensions evolving on a
% plane with a given starting point and number of iterations. This is
% modified for question 6, part c to only hold the current position and
% count the number of times abs(X)>abs(Y).
function [finx, finy, fincount] = walk2dpartc()
    
    % This is specifically for question 6 part c so I will now set the
    % needed arguments
    N = 25000;
    position = [0,-2];
    count = 0;
    
    % Now iterate for N steps, moving by the given pdf
    for i=1:N
        
        % Check if abs(X)>abs(Y), added at the start so counting including
        % when X starts larger than Y as a valid timestep.
        if abs(position(1)) > abs(position(2))
            count = count + 1;
        end
        
        % Draw a random number for the x step and alter the coordinate
        a = rand();
        if a < 0.5
            position(1) = position(1) -1;
        else
           position(1) = position(1) +1;
        end
        
        % Draw a random number for the y step and alter the coordinate
        b = rand();
        if b < 0.5
            position(2) = position(2) -1;
        else
            position(2) = position(2) +1;
        end
        
        finx = position(1);
        finy = position(2);
        fincount = count;
        
end