 
 # reuseableMethod
  function [newMatrix] = task_bottom_half (initialMatrix)
      n = size(initialMatrix)(1)
      firstHalf = initialMatrix(1:n/2,:)
      secondHalf = initialMatrix(n/2 + 1:n,:)
      newMatrix = [secondHalf;firstHalf]
  endfunction