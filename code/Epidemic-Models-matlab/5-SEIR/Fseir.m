

function dY= Fseir(~,Y,lambda,mu,delta)

s=Y(1);
e=Y(2);
i=Y(3);
%R=Y(4);

dY = zeros(2,1);

dY(1) = -lambda*s*i ;
dY(2) =  lambda*s*i - delta*e;
dY(3) =  delta*e- mu*i;
dY(4)=   mu*i; % its not necessary this line (dR+dI+dE+dS=0)

end