x=-2:0.05:2;
y=-3:0.05:3;

numx=length(x);
numy=length(y);

z=zeros(numy,numx);

[X,Y]=meshgrid(x,y);

t=0;
v=5*sin(pi*t);
basez=(X+Y+v).*exp(-X.^2-Y.^2);

a=surf(X,Y,z)
axis([-2 2 -3 3 -5 5]);

set(gca,'SortMethod','childorder');

for t=0.1:0.1:10;

    v=5*sin(pi*t);
 z = (X + Y + v) .* exp(-X.^2 - Y.^2);

 set(a, 'ZData', z);

 drawnow;

 pause(0.1);

end