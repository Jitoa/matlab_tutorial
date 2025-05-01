function dy=dydt(t,y,a)
dy1=y(2);
dy2=a*(1-y(1)^2)*y(2)-y(1);
dy=[dy1;dy2];
end