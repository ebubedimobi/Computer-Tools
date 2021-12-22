n = 4;
a = 1;
b = 2;

diagonal = diag(a* ones(1,n))
adjascentB = b * ones(1, n - 1)
diag(adjascentB, -1) 
matrix = diagonal + diag(adjascentB, -1) + diag(adjascentB, 1) 