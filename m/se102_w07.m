syms x y
f = 100 + 100 / (x^2 + 2*y^2 + 9);
fx = matlabFunction(diff(f,x), 'vars', {x,y});
fy = matlabFunction(diff(f,y), 'vars', {x,y});

f = matlabFunction(f, 'vars', {x,y});
F = @(t,c) [-fx(c(1),c(2)); -fy(c(1),c(2))];
[~, c] = ode45(F, linspace(0, 10), [1, 0]);

[X, Y] = meshgrid(linspace(-6,6));
surf(X,Y,f(X,Y));
hold on;
plot3(c(:,1),c(:,2), f(c(:,1),c(:,2)), 'r', 'linewidth', 2);
d = linspace(1,2);
plot3(d, d.^2, f(d,d.^2), 'k', 'linewidth', 2);
hold off;
axis equal;

%%
a = 7 ; b = 5 ; 
x = @(t) (a-b)*cos(t) + b*cos((b/a)*t) ;
y = @(t) (a-b)*sin(t) - b*sin((b/a)*t) ;
t = linspace(0,2*a*pi,1000) ;
theta = linspace(0,2*pi) ;
for i = 1 : 1000
    plot(x(t(1:i)),y(t(1:i))) ; hold on;
    plot(a*cos(theta), a*sin(theta));
    plot(b*cos(theta) + (a-b)*cos(t(i)), ...
        b*sin(theta) + (a-b)*sin(t(i)));
    plot(x(t(i)),y(t(i)), '.r', 'markersize', 20) ;
    hold off;
    axis equal ; axis([-a,a,-a,a]) ;
    drawnow;
end

%%
syms x y z l
g = x^2 + y^2 + z^2;
f = x*y^2*z^3;
eqn = [l*gradient(f) == gradient(g); f==2];
S = solve(eqn, [x,y,z,l]);
S.x
    