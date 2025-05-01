N=32;
h=1/N;
r=1/2;
dt=r*h*h;
tend=1;

x=h:h:h*(N-1);
yVec=exp(v*(x/2))*sin(pi*x); %初期条件

numSteps = round(tEnd / dt);  

for n = 1:numSteps
    yNewVec = zeros(size(yVec)); 

    
    yNewVec(1) = yVec(1) + r*((0 - 2*yVec(1) + yVec(2))-v*(h/2)*(yVec(2)-0));

    
    for i = 2:N-2
        yNewVec(i) = yVec(i) + r*((yVec(i-1) - 2*yVec(i) + yVec(i+1))-v*(h/2)*(yVec(i+1)-yVec(i-1)));
    end

    
    yNewVec(N-1) = yVec(N-1) + r*((yVec(N-2) - 2*yVec(N-1) + 0)-v*(h/2)*(0-yVec(N-2)));

    
    yVec = yNewVec;
end