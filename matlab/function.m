% function.m
% A basic matlab function

function residuals = calc_ssr(spline, input_data)

    x = input_data(:,1);
    y = input_data(:,2);

    xhat = fnval(spline, x);

    residuals = (xhat') * xhat;

% Note that there is no semicolon after the "end" statement. Matlab will not run the function if
% there is a semicolon.
end
