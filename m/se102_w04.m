%%
syms x y 
f(x,y) = cos(x)*cos(y);
% f = cos(x)*cos(y);
fx = diff(f,x);
fy = diff(f,y);
fxx = diff(fx,x);
fxy = diff(fx,y);
fyy = diff(fy,y);
% subs(f,[x,y],[1,0])
Q = f(1,0) + fx(1,0)*(x-1) + fy(1,0)*(y-0) + 1/2*fxx(1,0)*(x-1)^2 + ...
    fxy(1,0)*(x-1)*y + 1/2*fyy(1,0)*y^2
simplify(Q)

%%
f = @(x) x.^2;
f([1,2,3])

%%

syms x y
f(x,y) = x*y - x^2*y - x*y^2;
fx = diff(f,x);
fy = diff(f,y);

eqn = [fx == 0, fy == 0];
sol = solve(eqn);
sol.x
sol.y

%%
f = @(x,y) x.*y - x.^2.*y - x.*y.^2;

x0 = 1/3; y0 = 1/3;
epsilon = .05;

[X,Y] = meshgrid(linspace(x0-epsilon,x0+epsilon), ...
    linspace(y0-epsilon,y0+epsilon));
surf(X,Y,f(X,Y));

%%
A = [ 1 2 ; 3 4 ];
B = [ 2 2 ; 2 2 ];
A*B % matrix multiplication
A.*B % element-wise multiplication

v = [1 2 3]; w = [2 2 2];
v.*w 
v*w % dimension does not match

%%
f = @(x,y) x.*(x.^2-y.^2);
[X, Y] = meshgrid(linspace(-1,1));
subplot(1,2,1);
surf(X, Y, f(X,Y))
axis equal;
axis([-1,1,-1,1,-1,1])
subplot(1,2,2);
XX = X + 2*Y;
YY = Y;
surf(XX, YY, f(XX,YY));
axis equal;
axis([-1,1,-1,1,-1,1])

%%
[X, Y, Z] = meshgrid(-1:.1:1);
f = @(x,y,z) x.^2 - y.^2 + z.^2;
slice(X,Y,Z,f(X,Y,Z),0,0,0);
colorbar

%%
clear all
syms x y
f(x,y) = x*y + 2/x + 2/y;
fx = diff(f,x);
fy = diff(f,y);
eqn = [fx == 0, fy == 0];
sol = solve(eqn);
sol.x
sol.y

%%
clear all
f = @(x,y) 3*x + y;
g = @(x,y) x.^2 + y.^2;
[X,Y] = meshgrid(linspace(-3,3));
surf(X,Y,f(X,Y));
hold on;
fimplicit(@(x,y)g(x,y)-10, 'linewidth', 2);
theta = linspace(0,2*pi);
plot3(sqrt(10)*cos(theta),sqrt(10)*sin(theta), ...
    f(sqrt(10)*cos(theta),sqrt(10)*sin(theta)),'r','linewidth',2);
hold off;
axis([-3,3,-3,3,-15,15])

axis equal;
%%
f = @(x,y) 2*x + y.^2 + x.^2;
theta = linspace(0,2*pi);
x = cos(theta); y = sqrt(2)*sin(theta);
[X, Y] = meshgrid(linspace(-2,2));
surf(X,Y,f(X,Y));
hold on;
plot3(x,y,zeros(size(x)),'b','linewidth',2);
plot3(x,y,f(x,y),'r','linewidth', 2);
hold off;
axis equal;

%%
[X,Y] = meshgrid(linspace(-1.5,1.5));
f = @(x,y) x.^2 + y.^2;
contour(X,Y,f(X,Y),20,'ShowText','on');
hold on
%surf(X,Y,f(X,Y));
theta = linspace(0,2*pi);
plot(cos(theta),sin(theta)/2,'r','linewidth',2);
hold off;