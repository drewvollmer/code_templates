% tables.m
% Drew Vollmer 01-27-2017

% If the first row contains variable names, to import:
data = readtable('MazzeoData.csv');


% Rename only a few variables:
data.Properties.VariableNames({'est811112', 'est811113'}) = {'trans_firms', 'exhaust_firms'};
