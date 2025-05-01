N = 32;
tEnd = 1;
r = 1/2;  

approxSol = heat_diffusion_FDM2(N, tEnd, r,v);


h = 1 / N;
x = h:h:1-h;
fullX = [0, x, 1];  
exactSol = [0, exp((v*(x/2))-((v^2/4)+pi^2)*tend).*sin(pi*x), 0];


plot(fullX, approxSol, 'o-', fullX, exactSol, '--');
legend('数値解', '真の解');
xlabel('x');
ylabel('u(x, tEnd)');
title('数値解と真の解の比較（r=1/2）');
grid on;
