[ XX YY ZZ ] = sphere( 100 ) ;
surf(XX, YY, ZZ)
hold on;
fimplicit3(@(x,y,z) x.^3 + y.^3 + z.^3 - 1/sqrt(2));
hold off;
axis([-1.25,1.25,-1.25,1.25,-1.25,1.25]);
view (120 ,30)


%%
[ XX YY ZZ ] = sphere( 100 ) ;

for c = linspace ( 0, 1/sqrt(3), 20 )
    fimplicit3(@(x,y,z)x.^3 + y.^3 + z.^3 - c);
    hold on ;
    surf( XX, YY, ZZ ) ;
    axis([-1.25,1.25,-1.25,1.25,-1.25,1.25]);
    hold off;
    view (120 ,30)
    text (1,1,1,['\fontsize{25}c= ',num2str(c)]) ;
    drawnow;
end

for c = 1 : 10 
    fimplicit3(@(x,y,z)x.^3 + y.^3 + z.^3 - 1/sqrt(3));
    hold on ;
    surf( XX, YY, ZZ ) ;
    view (120 ,30);   
    text (1,1,1,['\fontsize{25}c= ',num2str(1/sqrt(3))]) ;
    axis([-1.25,1.25,-1.25,1.25,-1.25,1.25]);
    hold off;
    drawnow ;
end

for c = 1 : 10 
    fimplicit3(@(x,y,z)x.^3 + y.^3 + z.^3 - 1/sqrt(3));
    hold on ;
    surf( XX, YY, ZZ ) ;
    view (120 ,30);   
    text (1,1,1,['\fontsize{25}c= ',num2str(1/sqrt(3))]) ;
    plot3(1/sqrt(3), 1/sqrt(3), 1/sqrt(3), ...
        '.r', 'markersize', 20);
    axis([-1.25,1.25,-1.25,1.25,-1.25,1.25]);
    hold off;
    drawnow ;
end

for c = linspace ( 1/sqrt(3), 1/sqrt(2), 20 ) 
    fimplicit3(@(x,y,z)x.^3 + y.^3 + z.^3 - c);
    hold on ;
    surf( XX, YY, ZZ ) ;
    hold off;
    view (120 ,30);
    axis([-1.25,1.25,-1.25,1.25,-1.25,1.25]);
    text (1,1,1,['\fontsize{25}c= ',num2str(c)]) ;
    drawnow;
end

for c = 1 : 10
    fimplicit3(@(x,y,z)x.^3 + y.^3 + z.^3 - 1/sqrt(2));
    hold on ;
    surf( XX, YY, ZZ ) ;
    view (120 ,30);
    axis([-1.25,1.25,-1.25,1.25,-1.25,1.25]);
    text (1,1,1,['\fontsize{25}c= ',num2str(1/sqrt(2))]) ;
    hold off;
    drawnow;
end

for c = 1 : 10
    fimplicit3(@(x,y,z)x.^3 + y.^3 + z.^3 - 1/sqrt(2));
    hold on ;
    surf( XX, YY, ZZ ) ;
    view (120 ,30);
    axis([-1.25,1.25,-1.25,1.25,-1.25,1.25]);
    text (1,1,1,['\fontsize{25}c= ',num2str(1/sqrt(2))]) ;
    plot3(0, 1/sqrt(2), 1/sqrt(2), '.r', 'markersize', 20);
    plot3(1/sqrt(2), 0, 1/sqrt(2), '.r', 'markersize', 20);
    plot3(1/sqrt(2), 1/sqrt(2), 0, '.r', 'markersize', 20);
    hold off;
    drawnow;
end


for c = linspace ( 1/sqrt(2), 1, 20 ) 
    fimplicit3(@(x,y,z)x.^3 + y.^3 + z.^3 - c);
    hold on ;
    surf( XX, YY, ZZ ) ;
    hold off;
    view (120 ,30)
    axis([-1.25,1.25,-1.25,1.25,-1.25,1.25]);
    text (1,1,1,['\fontsize{25}c= ',num2str(c)]) ;
    drawnow;
end

for c = 1 : 10
    fimplicit3(@(x,y,z)x.^3 + y.^3 + z.^3 - 1);
    hold on ;
    surf( XX, YY, ZZ ) ;
    view (120 ,30);
    axis([-1.25,1.25,-1.25,1.25,-1.25,1.25]);
    text (1,1,1,['\fontsize{25}c= ',num2str(1)]) ;
    hold off;
    drawnow;
end

for c = 1 : 10
    fimplicit3(@(x,y,z)x.^3 + y.^3 + z.^3 - 1);
    hold on ;
    surf( XX, YY, ZZ ) ;
    view (120 ,30)
    axis([-1.25,1.25,-1.25,1.25,-1.25,1.25]);
    text (1,1,1,['\fontsize{25}c= ',num2str(1)]) ;
    plot3(0, 0, 1, '.r','markersize', 20);
    plot3(1, 0, 0, '.r','markersize', 20);
    plot3(0, 1, 0, '.r','markersize', 20);
    hold off;
    drawnow;
end


%%
fimplicit3(@(x,y,z) x.*y.^2.*z.^3 - 2 );


%%
[R Theta] = meshgrid(linspace(0,1,20), linspace(0,2*pi,50));
X = R.*cos(Theta);
Y = R.*sin(Theta);
f = @(x,y) x.^2 + x.*y + y.^2;
surf(X,Y,f(X,Y))
hold on;
theta = linspace(0, 2*pi);
plot3(cos(theta), sin(theta), f(cos(theta),sin(theta)), ...
    'r', 'linewidth', 2);
hold off;
