% A function to use importance sampling and the monte-carlo method to
% calculate the intergral of the function from q3a/b with a user spcified
% paramater.
function integral = q3b2()
    
    % Set N as the number of points used
    N = 10000;
    
    u = rand(N,1);

    x = -log(1-u.*(1-exp(-1)));
    
    integral = (1./N).*sum((3.*x.^(3./4).*exp(-x./4))./(1./(1-exp(-1))));
end