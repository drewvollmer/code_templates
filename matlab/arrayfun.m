% arrayfun.m
% 

clear;
clc;

release_months = arrayfun(@(n)addtodate(input_dates(n), -1, 'month'), 1:length(input_dates))';
