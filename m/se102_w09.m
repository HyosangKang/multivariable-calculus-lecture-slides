n = 10000;
sum = 0;
for i = 1 : n
    for j = 1 : n
        sum = sum + j/(n*(n^2+i*j));
    end
end
sum
2*log(2)-1

%%
syms x y
f = y / (1+x*y);
int(int(f,x,[0,1]),y,[0,1])

%%
f = @(x,y) (x.^2-y.^2)./(x.^2+y.^2).^2
[X Y] = meshgrid(linspace(0,1));
surf(X,Y,f(X,Y))
