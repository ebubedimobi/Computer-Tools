
l =  5;                                                 ##Length
w =  5;                                                 #Width
h = 30;                                                 # Height
X = [-1  -1   1   1  -1; -1  -1   1   1  -1]*l;
Y = [-1   1   1  -1  -1; -1   1   1  -1  -1]*w;
Z = [ 1   1   1   1   1;  0   0   0   0   0]*h;
figure(1)
surf(X, Y, Z)                                           # Plot Walls
hold on
patch(X(1,:), Y(1,:), Z(1,:), 'y')                      # Plot Flat Roof
hold off
grid on
axis equal
axis([-10  10    -10  10    0  40])