function z =b1_7_1(t,y);
z=(2.*t)/((1+t.^2).*y);
end


y0=-1;
[t , y]=ode45(@b1_7_1,[0 5],y0);

figure;
plot(t,y)