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
function [matrix] = filter_multiples(a, k)
    matrix = a
    matrix(matrix > k & mod(matrix, k) == 0) = [ ] 
    #or through find
    #matrix(find(matrix > k & mod(matrix, k) == 0)) = [];
   
endfunction