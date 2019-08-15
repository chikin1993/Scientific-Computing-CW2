% A function to simulate the diffusion of gases in 4 boxes using an
% Ehrenfest Chain, specifing the starting conditions and number of
% iterations of the system.
function box = four_boxes(m0, N)
    
    % Start the current state of the boxes using the value from the initial
    % vector
    box = [m0(1),m0(2),m0(3),m0(4)];
    
    % Calculate the total number of molecules
    total = m0(1) + m0(2) + m0(3) + m0(4);
    
    % Loop over the number of time-steps required
    for i=1:N
        
        % Pick a molecule at random from all possible
        mole = randi(total);
        
        % Decide which box this molecule is in, assuming the molecules are
        % numbered from 1 to total, going through boxes A to D, we can see
        % which box it is in, although in reality the molecules are all
        % uniform
        if mole <= box(i,1)
            
            % Now this molecule must be in the first box, so choose at
            % random one of the two connected boxes using a bernoulli trial
            % and update the system
            choose = rand();
            if choose < 0.5
                % Move from A to B 
                box = [box; box(i,1)-1,box(i,2)+1,box(i,3),box(i,4)];
            else
                % Move from A to D
                box = [box; box(i,1)-1,box(i,2),box(i,3),box(i,4)+1];
            end
        
        % Now must be in box B
        elseif mole <= box(i,1) + box(i,2)
            
            % Another trial to choose box
            choose = rand();
            if choose < 0.5
                % Move from box B to A
                box = [box; box(i,1)+1,box(i,2)-1,box(i,3),box(i,4)];
            else
                % Move from box B to C
                box = [box; box(i,1),box(i,2)-1,box(i,3)+1,box(i,4)];
            end
            
        % Now must be in box C
        elseif mole <= box(i,1) + box(i,2) + box(i,3)
            
            % Another trial to choose box
            choose = rand();
            if choose < 0.5
                % Move from box C to B
                box = [box; box(i,1),box(i,2)+1,box(i,3)-1,box(i,4)];
            else
                % Move from box C to D
                box = [box; box(i,1),box(i,2),box(i,3)-1,box(i,4)+1];
            end
            
        % Now must be in box D
        else
            
            % Another trial to choose box
            choose = rand();
            if choose < 0.5
                % Move from box D to C
                box = [box; box(i,1),box(i,2),box(i,3)+1,box(i,4)-1];
            else
                % Move from box D to A
                box = [box; box(i,1)+1,box(i,2),box(i,3),box(i,4)-1];
            end
            
        end
            
    end

end