%%
syms t

int((1-cos(t))/sin(t)^2)

int((1+cos(t))/sin(t)^2)

%%
syms r t p
x = r*sin(t)*cos(p);
y = r*sin(t)*sin(p);
z = r*cos(t);

A = [diff(x,r), diff(x,p), diff(x,t);
    diff(y,r), diff(y,p), diff(y,t);
    diff(z,r), diff(z,p), diff(z,t)];
simplify(det(A))