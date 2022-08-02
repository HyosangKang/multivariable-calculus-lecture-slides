%% Drawing a graph of two variable function
%% z = x^2-y^2
f = @(x,y) x.^2 - y.^2 ;
[X, Y] = meshgrid(linspace(-1,1));
surf(X,Y,f(X,Y))
%% f(t) = (t^2,t^3)
x = @(t) t.^2 ;
y = @(t) t.^3 ;
t = linspace(-1,1);
for i = 1 : 100
    plot(x(t(1:i)), y(t(1:i)))
    axis equal;
    axis([-.5,1.5,-1,1]);
    drawnow
end
%% c(t) = (cos(t), t, sin(t))
x = @(t) cos(t);
y = @(t) t ;
z = @(t) sin(t);
t = linspace(0,6*pi);
plot3(x(t),y(t),z(t));

%%
f = @(x,y) (x.^4 - 4*y.^2)./(x.^2 + 2*y.^2) ;
[X, Y] = meshgrid(linspace(-1,1,100));
surf(X,Y,f(X,Y))
hold on;
t = linspace(1,0);
plot3(t,t,f(t,t), 'r', 'linewidth', 2);
plot3(t,2*t,f(t,2*t), 'b', 'linewidth', 2);
hold off;
axis equal;

%%
f = @(x,y) (x.*y)./sqrt(x.^2+y.^2) ;
[X,Y] = meshgrid(linspace(-1,1));
surf(X,Y,f(X,Y))







%% Animation
a = 3 ; b = 2 ;
x = @(t) a*t - b*sin(t) ;
y = @(t) a - b*cos(t) ;
xmax = 10*pi; N = 300;
t = linspace(0, xmax, N) ;
theta = linspace(0,2*pi) ;
for i = 1 : N 
    plot(x(t(1:i)), y(t(1:i)));
    hold on;
    plot(a*cos(theta)+a*t(i), a*sin(theta)+a);
    plot(b*cos(theta)+a*t(i), b*sin(theta)+a);
    plot(x(t(i)), y(t(i)), '.r', 'markersize', 10);
    hold off;
    axis equal;
    axis([0,xmax,0,6])
    drawnow
end

%%
syms x y 

simplify(((y*(x^2-y^2)+ x*y*2*x)*(x^2+y^2) - x*y*(x^2-y^2)*2*x) / (x^2+y^2)^2)

%%
syms x y

f = x*y*(x^2-y^2)/(x^2+y^2);
simplify(diff(f, y))

%%
clear all
f = @(x,y) x.*(x.^2-y.^2);
[X, Y] = meshgrid(linspace(-1,1));
surf(X,Y,f(X,Y))

%%
f = @(x,y) x.*y./sqrt(x.^2+y.^2) ;
[X Y] = meshgrid(linspace(-1,1));
z = @(x,y) zeros(size(x));
surf(X,Y,f(X,Y))
hold on ;
surf(X,Y,z(X,Y))
hold off;