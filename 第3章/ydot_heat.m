function yout=ydot_heat(t,y,h2)
yleng=length(y);
yout=zeros(yleng,1);
yout(1)=(y(2)-2*y(1))/h2;

for b=2:yleng-1
    yout(b)=(y(b-1) - 2 * y(b) + y(b+1)) / h2;
end

yout(yleng)=(y(yleng-1) - 2 * y(yleng)) / h2;

end