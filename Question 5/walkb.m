% A function to produce a continuous-space random walk using a normal step
% size
function walkvec = walkb(N)
    
    % Create an empty vector of zeros to store the current postion of the
    % walker, is size N+1 to allow for a 0 starting postion and then N
    % steps, ending with the N+1 value
    walkvec = zeros(1,N+1);
    
    % Create a for loop of the number of steps to walk
    for i=1:N
        
        % Create a random normal number
        u = randn();
        
        % Alter this using the mean and variance, 0 still added for
        % clarity, mu = 0 and sigma squared is 2.25, so sigma is 1.5
        u = u.*1.5 + 0;
        
        % Take a step of this legnth and record current displacement
        walkvec(i+1) = walkvec(i) +u;
        
    end
    
end