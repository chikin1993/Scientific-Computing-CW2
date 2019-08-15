% A function to produce a discrete-space unbias random walk
function walkvec = walka(N)
    
    % Create an empty vector of zeros to store the current postion of the
    % walker, is size N+1 to allow for a 0 starting postion and then N
    % steps, ending with the N+1 value
    walkvec = zeros(1,N+1);
    
    % Create a for loop of the number of steps to walk
    for i=1:N
        
        % Create a random number each step
        u = rand();
        
        % Change the element of the vector to +/-1 the previous
        if u < 0.5
            walkvec(i+1) = walkvec(i) -1;
        else
            walkvec(i+1) = walkvec(i) +1;
        end
        
    end
    
end