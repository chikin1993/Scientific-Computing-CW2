% A function to draw a random number uniformly from the interval [-2pi,pi]
function num = q1a()
    num = rand();
    num = num.*3.*pi - 2.*pi;
end