clear;
function zout=n1_2_1(t,z);  %μはaにした

a=1;
zdot1=z(2);
zdot2=a*(1-(z(1))^2)-z(1);
zout=[zdot1;zdot2];


end




