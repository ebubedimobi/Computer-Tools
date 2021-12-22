## Copyright (C) 2021 Ebubechukwu Dimobi
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} task_left_top (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Ebubechukwu Dimobi <ebubed@Ebubechukwus-MacBook-Pro.local>
## Created: 2021-12-21

clc;  
clearvars;
close all; 
workspace; 

numberOfSteps = randi(15,1);

steps_types = [1 0 ; -1 0 ; 0 1 ; 0 -1];
deltax = rand(numberOfSteps) - 0.5;
deltay = rand(numberOfSteps) - 0.5;
xy = zeros(numberOfSteps,2);
for step = 2 : numberOfSteps
  % Walk in the x direction.
  xy(step, 1) = xy(step, 1) + deltax(step);  
  % Walk in the y direction.
  xy(step, 2) = xy(step, 2) + deltay(step);
  % Now plot the walk so far.
  xCoords = xy(1:step, 1);
  yCoords = xy(1:step, 2);
  plot(xCoords, yCoords, 'bo-', 'LineWidth', 2);
  hold on;
  textLabel = sprintf('%d', step);
  text(xCoords(end), yCoords(end), textLabel, 'fontSize', 20);
end
% Mark the first point in red.
hold on;
plot(xy(1,1), xy(1,2), 'rs', 'LineWidth', 2, 'MarkerSize', 25);
textLabel = '1';
text(xy(1,1), xy(1,2), textLabel, 'fontSize', 20);
grid on;
% Mark the last point in red.
plot(xCoords(end), yCoords(end), 'rs', 'LineWidth', 2, 'MarkerSize', 25);
title('Random Walk', 'FontSize', 20);
xlabel('X', 'FontSize', 20);
ylabel('Y', 'FontSize', 20);
% Enlarge figure to full screen.
set(gcf, 'units','normalized','outerposition',[0 0 1 1]);
% Calculate the distance from the origin.
distanceFromOrigin = hypot(xCoords(end), yCoords(end));
message = sprintf('Done with walk!\ntotal Distance covered = %.3f', distanceFromOrigin);
msgbox(message);