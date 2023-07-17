% binary_search.m
% A routine returning the lowest index d with searchSet(d) >= val.
% Useful for taking probability draws: can find which probability window a draw falls into.
% Drew Vollmer 2019-05-07

function upperIdx = findPurch(val, searchSet)

    % With a non-recursive formulation, we can do some checks at the start
    assert( (val >= searchSet(1)) && (val <= searchSet(end)) );

    left = 1;
    right = length(searchSet);
    exitFlag = 0;

    % Take care of simple cases: searchSet has length 1 or 2
    if right == 1
        upperIdx = 1;
        exitFlag = 1;
    elseif right == 2
        upperIdx = 1 + (val > searchSet(1));
        exitFlag = 1;
    end

    while exitFlag == 0

        % Get the midpoint
        mid = left + round((right - left) / 2);
        % disp(['Left is ' num2str(left) '. Right is ' num2str(right) '. Mid is ' num2str(mid)])
        % disp(['Lower bound is ' num2str(searchSet(mid - 1)) ' and upper is ' num2str(searchSet(mid))])

        % Update left and right based on whether it's too high or too low
        if val >= searchSet(mid)
            left = mid;
        elseif val < searchSet(mid - 1)
            right = mid - 1;
        else
            upperIdx = mid;
            exitFlag = 1;
        end

    end

end
