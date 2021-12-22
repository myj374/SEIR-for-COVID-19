

function dY= Fsis(~,Y,lambda,mu)

s=Y(1);
i=Y(2);

dY = zeros(2,1);

dY(1) = -lambda*s*i + mu*i;
dY(2) =  lambda*s*i - mu*i;

end