function zout=b1_8_1(t,z);

zdot1=z(1)*(1-z(2));
zdot2=-1*z(2)*(1-z(1));
zout=[zdot1;zdot2];

end

zo=[0.5;0.5];

[t,z]=ode45(@b1_8_1,[0 5],zo);

figure;
plot(t,z(:,1),'b',t,z(:,2),'r')

