  n = 4
  b = zeros(n) + [1:n]  
  a = zeros(n) + transpose([1:n]) 
  
  minimum = min(a, b)
  module = mod(minimum, 2)
  matrix = 2 - module
  