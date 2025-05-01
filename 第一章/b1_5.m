x=-3:0.1:3;
numx=length(x);
y=zeros(1,numx);
figure;
y=(x.^2)./(1+x.^2);
plot(x,y)