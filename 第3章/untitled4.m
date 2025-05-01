gamma = 10;
b = 8/3;
R = 28;  


dt = 0.01;        
T = 50;           
N = T / dt;       
t = 0:dt:T;       


x = zeros(1, N+1);
y = zeros(1, N+1);
z = zeros(1, N+1);

x(1) = 0;
y(1) = 1;
z(1) = 0;


for n = 1:N
    x(n+1) = x(n) + dt * (-gamma * x(n) + gamma * y(n));
    y(n+1) = y(n) + dt * (R * x(n) - y(n) - x(n) * z(n));
    z(n+1) = z(n) + dt * (x(n) * y(n) - b * z(n));
end


figure;
plot3(x, y, z, 'b');
xlabel('x'); ylabel('y'); zlabel('z');
title('Lorenz Attractor (Euler Method)');
grid on;
view(3);
