syms x y
f = 100 + 100 / (x^2 + 2*y^2 + 9);
fx = matlabFunction(diff(f,x), 'vars', {x,y});
fy = matlabFunction(diff(f,y), 'vars', {x,y});

f = matlabFunction(f, 'vars', {x,y});
F = @(t,c) [-fx(c(1),c(2)); -fy(c(1),c(2))];
[~, c] = ode45(F, linspace(0, 10), [1, 1]);

[X, Y] = meshgrid(linspace(-6,6));
surf(X,Y,f(X,Y));
hold on;
plot3(c(:,1),c(:,2), f(c(:,1),c(:,2)), 'r', 'linewidth', 2);
d = linspace(1,2);
plot3(d, d.^2, f(d,d.^2), 'k', 'linewidth', 2);
hold off;
axis equal;

%%
a = 7 ; b = 3 ; 
x = @(t) (a-b)*cos(b/a*t) + b*cos((1-b/a)*t) ;
y = @(t) (a-b)*sin(b/a*t) - b*sin((1-b/a)*t) ;
t = linspace(0,2*a*pi) ;
plot(x(t),y(t)) ; 
axis equal ; axis([-a,a,-a,a]) ;
    