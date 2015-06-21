% read_file_with_text.m
% 

clear;
clc;

[qtedate cusip matdate] = textread('file_with_text.prn','%f%s%f\n');
