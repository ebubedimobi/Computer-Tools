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

 # reuseableMethod
function [
            heightsSum,...
            meanHeight,...
            mean_height_higher_than_100_kg,...
            BMI,...
            higher_than_10_and_heavier_than_100...
         ] = task_animals(matrix)     
    # 1  
    heightsSum = sum(matrix(:, 1))

    # 2  
    meanHeight = mean(matrix(:, 1))

    # 3  
    mean_height_higher_than_100_kg = matrix(matrix(:, 2) > 100, 1)  
    mean_height_higher_than_100_kg = mean(mean_height_higher_than_100_kg)

    # 4
    BMI = matrix(:, 2) ./ (matrix(:, 1).^2)

    # 5
    higher_than_10_and_heavier_than_100 = matrix(matrix(:, 2) > 100 & matrix(:, 1) > 10)  
endfunction