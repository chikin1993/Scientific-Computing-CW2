% A function to simulate a random walk in two dimensions  evolving on a
% plane with a given starting point and number of iterations.
function walk2dmatrix = walk2d(N, X, Y)
    
    % Create an empty matrix to hold the positions
    walk2dmatrix = zeros(N+1,2);

    % Assign the starting position
    walk2dmatrix(1,1) = X;
    walk2dmatrix(1,2) = Y;
    
    % Now iterate for N steps, moving by the given pdf
    for i=1:N
        
        % Draw a random number for the x step and alter the coordinate
        a = rand();
        if a < 0.5
            walk2dmatrix(i+1,1) = walk2dmatrix(i,1) -1;
        else
            walk2dmatrix(i+1,1) = walk2dmatrix(i,1) +1;
        end
        
        % Draw a random number for the y step and alter the coordinate
        b = rand();
        if b < 0.5
            walk2dmatrix(i+1,2) = walk2dmatrix(i,2) -1;
        else
            walk2dmatrix(i+1,2) = walk2dmatrix(i,2) +1;
        end
        
end