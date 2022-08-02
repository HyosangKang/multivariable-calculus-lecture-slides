v = [ 1, 2, 3 ] ; % 1x3 행렬
w = [ 3, 4, 5 ] ;
A = [ 0, 1, 2 ; 3, 4, 5 ; 6, 7, 8 ]; % 3x3 행렬
A * v'; % (3x3) * (3x1) = 3x1 행렬
acos(dot(v,w) / norm(v) / norm(w))

%%
t = linspace(0, 2*pi, 100) ;
x = cos(t) ;
y = sin(t) ;
z = t ;
plot3(x, y, z)

%%
a = 3 ; b = 2 ;
x = @(t) a*t - b*sin(t) ;
y = @(t) a - b*cos(t) ;
t = linspace(0, 10*pi, 1000) ;
plot(x(t), y(t))
axis equal

%%
A = [ 1 2 3 ; 
      4 5 6 ;
      9 9 1 ] ;
inv(A)

%%
B = [A(1,:);
    A(2,:) - A(1,:) ;
    A(3,:)]

%%
B = A;
B(2,:) = B(2,:) - B(1,:);
B

%%
B = A;
B(:,1) = []
B(1,:) = []
det(B)
