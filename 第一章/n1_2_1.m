function dz = n1_2_2(t, z, a)
    dz = zeros(2,1);
    dz(1) = z(2);                              
    dz(2) = a * (1 - z(1)^2) * z(2) - z(1);    
end

a = 1;
zo = [2; 0];  
[t,z] = ode45(@(t,z) n1_2_2(t,z,a), [0 20], zo);

figure;
plot(t, z(:,1), 'b', t, z(:,2), 'r')

