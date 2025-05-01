gamma = 10;
b = 8/3;
R = 28;  


dt = 0.01;        
T = 30;           
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

xnew = zeros(1, N+1);
ynew = zeros(1, N+1);
znew = zeros(1, N+1);

xnew(1) = 0;
ynew(1) = 1.1;
znew(1) = 0;


for n = 1:N
    xnew(n+1) = xnew(n) + dt * (-gamma * xnew(n) + gamma * ynew(n));
    ynew(n+1) = ynew(n) + dt * (R * xnew(n) - ynew(n) - xnew(n) * znew(n));
    znew(n+1) = znew(n) + dt * (xnew(n) * ynew(n) - b * znew(n));
end

figure;
plot3(x, y, z, 'bx');
xlabel('x'); ylabel('y'); zlabel('z');
title('Lorenz Attractor (Euler Method)');
grid on;
view(3);

hold on
plot3(xnew, ynew, znew,'ro')

