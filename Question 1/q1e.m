% A function to sample from the cdf of (1/6)*(x^2 + x) with x in [0,2]
function num = q1e()
    
    % Sample a random number from U(0,1)
    ran = rand(); 
    
    % Put the uniform sample through the inverse
    num = 0.5.*(-1+(24.*ran + 1).^0.5);
    
end