

function dY= Fsirs(~,Y,lambda,mu,gamma)

s=Y(1);
i=Y(2);
r=Y(3);

dY = zeros(2,1);

dY(1) = -lambda*s*i + gamma*r;
dY(2) =  lambda*s*i - mu*i;
dY(3)=   mu*i - gamma*r; 

% another possibility (size of dY =2, Comment the line R=Y(3))
% dY(1) = -lambda*s*i + gamma*(1-s-i);
% dY(2) =  lambda*s*i - mu*i;

end