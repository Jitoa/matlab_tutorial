function approxSol = heat_diffusion_FDM2(N, tEnd, r,v)


    h = 1 / N;
    x = h:h:1-h;              
    yVec = sin(pi * x);       
    dt = r * h^2;               
    numSteps = round(tEnd / dt);
    v=5;

    % 時間発展
    for n = 1:numSteps
    yNewVec = zeros(size(yVec)); 

    
    yNewVec(1) = yVec(1) + r*((0 - 2*yVec(1) + yVec(2))-v*(h/2)*(yVec(2)-0));

    
    for i = 2:N-2
        yNewVec(i) = yVec(i) + r*((yVec(i-1) - 2*yVec(i) + yVec(i+1))-v*(h/2)*(yVec(i+1)-yVec(i-1)));
    end

    
    yNewVec(N-1) = yVec(N-1) + r*((yVec(N-2) - 2*yVec(N-1) + 0)-v*(h/2)*(0-yVec(N-2)));

    
    yVec = yNewVec;

    end

    
    approxSol = [0, yVec, 0];   
end
