clc 
clear all
close all
% Given parameters
total_bandwidth = 30e6;  % 30 MHz in Hz
channel_bandwidth = 50e3;  % 50 kHz in Hz
total_area = 2000;  % Total area in sq.km
cell_area = 2;  % Area of a cell in sq.km
N = 5;  % Reuse factor

% Calculate capacity without reuse
capacity_without_reuse = (total_bandwidth / channel_bandwidth) / N;

% Calculate the number of cells
num_cells = total_area / cell_area;

% Calculate capacity with reuse
capacity_with_reuse = (total_bandwidth / channel_bandwidth);

% Calculate capacity improvement
capacity_improvement = capacity_with_reuse - capacity_without_reuse;

% Display results
fprintf('Capacity without reuse: %d channels\n', capacity_without_reuse);
fprintf('Capacity with reuse: %d channels\n', capacity_with_reuse);
fprintf('Capacity improvement with reuse: %d channels\n', capacity_improvement);
