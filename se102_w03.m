%%

a = [1 2 1];
b = [2 1 2];
u = [0 1 -1];

c = cross(a,b);
c = c / norm(c);

u3 = proj(u,c);
uu = u - u3;

coeff = inv([a(1:2)' b(1:2)'])*uu(1:2)'

coeff(1)*a + coeff(2)*b + u3
function v = proj(u, a)
    v = dot(u,a)/norm(a)^2*a;
end
