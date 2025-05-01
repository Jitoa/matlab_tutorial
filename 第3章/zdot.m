function zout= zdot(t,z)
%UNTITLED3 演習問題基本(8)

zdot1 =z(1)*(1-z(2)) ;
zdot2 =-1*z(2)*(1-z(1));
zout = [zdot1;zdot2];
end