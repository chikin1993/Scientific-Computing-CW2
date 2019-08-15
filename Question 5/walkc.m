% A function to produce a continuous-space random walk, stepping from a
% given pdf. Unsure of the given pdf so am using the starting value u taken
% from the standard normal distribution as in walkb.
function walkvec = walkc(N)
    
    % Create an empty vector of zeros to store the current postion of the
    % walker, is size N+1 to allow for a 0 starting postion and then N
    % steps, ending with the N+1 value
    walkvec = zeros(1,N+1);
    
    % Create a for loop of the number of steps to walk
    for i=1:N
        
        % Create a random normal number
        u = randn();
        
        % Put this value through the given pdf, was unsure of where to draw
        % the starting sample from, so have used N(0,1)
        u = (0.01)./(pi.*(u.^2+0.01.^2));
        
        % Take a step of this legnth and record current displacement
        walkvec(i+1) = walkvec(i) +u;
        
    end
    
end