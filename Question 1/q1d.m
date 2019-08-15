% A function to sample from the pdf lam*exp(-lam*x) where lam is provided
% by the user and x non-negative
function num = q1d(lam)

    % Pick a sample from U(0,1)
    ran = rand();
    
    % caluclate F^-1(ran) by known formula
    num = (-1./lam).*log(1-ran);
    
end