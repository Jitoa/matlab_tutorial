function ykaku=ydot_heat2(t,y,h,h2,v)
yleng=length(y);
ykaku=zeros(yleng,1);

ykaku(1)=((y(2)-2*y(1))/h2)-v*(y(2)/(2*h));

for b=2:yleng-1
    ykaku(b)=((y(b-1) - 2 * y(b) + y(b+1)) / h2)-(v*(y(b+1)-y(b-1)))/(2*h);
end

ykaku(yleng)=((y(yleng-1) - 2 * y(yleng)) / h2)-(v*(-1*y(yleng-1)))/(2*h);

end