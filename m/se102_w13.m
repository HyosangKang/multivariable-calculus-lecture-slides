[X,Y] = meshgrid(linspace(-1,1));
Z1 = 1-2*(X.^2+Y.^2);
Z2 = X.^2 - Y.^2;
surf(X,Y,Z1); hold on
surf(X,Y,Z2); holds off