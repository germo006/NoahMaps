function map = Palettizer(RGB)
%PALETTIZER is a function that takes a matrix of RGB values as input and
%converts it to a usable color palette as a cell array. 
%It also plots the output as a series of lines so you can see what the
%colors look like. 
% INPUT
%   RGB: an 3 x N matrix where the rows are the R, G, and B values
%   expressed not as a decimal but as integers from 0-255. N is the number
%   of colors you're putting in. I personally like five for a decent
%   palette. 
% OUTPUT
%   map: an N x 1 cell array that can be indexed as map{i} to extract an
%   RGB triplet in MATLAB's decimal parlance. 

N = size(RGB, 2); 
map = cell(N, 1);
figure
for ii = 1:N
    map{ii} = RGB(:,ii).'./255;
    plot(1:10, [0:9]+ii, 'LineWidth', 3, 'Color', map{ii})
    hold on
end
end

