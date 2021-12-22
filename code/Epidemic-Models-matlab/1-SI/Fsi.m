

function dY= Fsi(~,Y,lambda)

s=Y(1);
i=Y(2);

dY = zeros(2,1);

dY(1) = -lambda*s*i;
dY(2) = lambda*s*i;

end