% command_line_argument.m
% Matlab does not allow arguments like traditional languages, but when launching it from the command
% line we can specify a script.  If that script is a function, we can pass in a parameter when we
% launch it.  However, if there is an error with the passed in parameter, then the program will not
% exit Matlab.  Therefore, we need to catch the error when we run the program at the command line:

% matlab -nodisplay -nosplash -r "try, command_line_argument('test'), catch, end, quit"

function printed = command_line_argument(input_str)
    
    printed = input_str;
    
    disp(printed)
    
    error('Error')
    
    fid=fopen('parameter_written.csv','w');
    fprintf(fid, '%s', printed);
    fclose(fid);
    
    
end
