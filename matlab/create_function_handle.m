% create_function_handle.m
% In some cases, we have to reduce the number of parameters passed in to
% a function.  In such cases, we can create function handles.

% Suppose that I have a function f that takes arguments A, B, and C.  If
% the variable C is already defined in the workspace, then I can use a
% function handle to create f1(A, B) = f(A, B, C) as follows:

f1 = @(A,B)f(A,B,C);

% The function handle works using the value of C that existed when the
% handle is defined.  So if before C=3 and now I set C=4, calling f1(A,B)
% still gives f(A,B,3).
