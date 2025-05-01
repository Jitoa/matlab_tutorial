clear;
N=128;
tend=1;
h=1/N;
h2=h*h;
x=h:h:h*(N-1);
v=5;

y0=(exp(v*x/2)).*(sin(pi*x));

[t,y]=ode45(@(t,y) ydot_heat2(t,y,h,h2,v),[0 tend],y0);
tleng = length(t);
approxSol = [0; y(tleng, :)'; 0];
u=exp((v*x/2)-(v^2/4+pi^2)*tend).*sin(pi*x);

exactSol=[0,u,0];

fullX=[0,x,h*N];

figure
plot(fullX,approxSol);
hold on
plot(fullX,exactSol);