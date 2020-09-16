%%

a = [1 2 1];
b = [2 1 2];
c = cross(a,b);
u = [0 1 -1];

u3 = proj(c, u);
up = u - u3 %% Matlab considers u' as "transpose" of u.
% need to find s and t for up = s*a + t*b 
% Since up, a, b are 3-dimensional vectors, up = s*a + t*b gives 3
% equation. But we need only two to determin s and t
% So use the first two components of the vectors:
% up(1:2) = s*a(1:2) + t*b(1:2)
% up(1:2) = s*[1 2] + t*[2 1]
% up(1:2)' = [1,2]'*s + [2 1]'*t
% up(1:2)' = [1 2 ; 2 1] * [s ; t]
% var = [s ; t]
var = inv([1 2; 2 1])*up(1:2)';
u1 = var(1) * a;
u2 = var(2) * b;
u1 + u2 + u3


%%
A = [ a', b', c' ] ;
% var = [ s t r ]'
var = inv(A)*u' 

u1 = var(1) * a;
u2 = var(2) * b;
u3 = var(3) * c;
u1 + u2 + u3


%%
syms s t r 

eqn = u == s * a + t * b + r * c;
var = solve(eqn);
var.s
var.t
var.r


function v = proj(a, u)
    v = dot(a,u) / norm(a)^2 * a;
end