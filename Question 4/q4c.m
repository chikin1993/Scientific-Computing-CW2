% A function to calculate the function in question 4 using its Fourier
% series
function sum = q4c(x)

    % Initialise the sum to 0
    sum = 0;
    
    % Loop over the first 5 terms, summing as it goes
    for i=1:5
       
        sum = sum + (sin(i.*x)./i.^2);
        
    end

end