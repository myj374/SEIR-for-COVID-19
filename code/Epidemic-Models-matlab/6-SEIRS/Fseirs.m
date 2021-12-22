

function dY= Fseirs(~,Y,lambda,mu,delta,gamma)

s=Y(1);
e=Y(2);
i=Y(3);
r=Y(4);

dY = zeros(3,1);

dY(1) = -lambda*s*i + gamma*r;
dY(2) =  lambda*s*i - delta*e;
dY(3) =  delta*e - mu*i;
dY(4)=   mu*i - gamma*r; % its not necessary this line (dR+dI+dE+dS=0)

% another possibility (size of dY =3, Comment the line R=Y(4))
% dY(1) = -lambda*s*i + gamma*(1-s-e-i);
% dY(2) =  lambda*s*i - delta*E;
% dY(3) =  delta*e- mu*i;

end