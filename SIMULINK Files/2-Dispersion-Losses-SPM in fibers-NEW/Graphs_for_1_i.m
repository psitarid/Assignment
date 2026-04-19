% 1. Define your 5 value pairs (X and Y coordinates)
x = [0.1, 0.5, 1, 2, 10]; 
y = [23.4608, 23.4608, 23.4608, 23.4608, 23.4608]; % Replace these with your actual data

%x = [0.1, 0.5, 1, 2, 10]; 
%y = [24.022453, 24.022564, 24.022912, 24.024304, 24.068792]; % Replace these with your actual data

% 2. Create a new figure window
figure;

% 3. Plot the data
% '-o' means: use a solid line (-) and circle markers (o) for the discrete points
plot(x, y, '-o', ...
    'LineWidth', 1.5, ...          % Makes the line a bit thicker
    'MarkerSize', 8, ...           % Makes the scatter dots larger
    'MarkerEdgeColor', 'b', ...    % Blue outline for the dots
    'MarkerFaceColor', 'r');       % Red fill color for the dots

% 4. Add formatting to make it look professional
title('T0_out vs Distance @ 25Gb/s');
xlabel('Distance (km)');
ylabel('T0,out(psec)');
grid on; % Turns on the background grid