

function dY= Fsir(~,Y,lambda,mu)

s=Y(1);
i=Y(2);
%R=Y(3);

dY = zeros(2,1);

dY(1) = -lambda*s*i ;
dY(2) =  lambda*s*i - mu*i;
dY(3)=   mu*i; % its not necessary this line (dR+dI+dS=0)

end