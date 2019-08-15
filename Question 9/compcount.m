% A function to count the sizes of the components in a network and return
% them
function compnums = compcount(netmat)
    
    compnums = [];
    comps = compfindall(netmat);
    numcomps = max(comps);
    for i=1:numcomps
        
        compnums(i) = nnz(comps==i);
        
    end

end