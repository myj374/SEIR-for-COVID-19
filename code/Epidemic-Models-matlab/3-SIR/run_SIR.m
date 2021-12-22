
% This script needs the file Fsir.m to run
% Fsir.m contains the differential equation model

% S is the number of Susceptible individuals at each time step
% I is the number of Infected individuals at each time step
% R is the number of Recovered individuals at each time step

N=10000;  %Population Size

%-- initial condictions
i0=1000;    % initial condition for I
s0=N-i0; % initial condition for S
r0=0;    % initial condition for R
% --

T=100;   % evaluation time

%-- parameters 
lambda=0.05; % infectious rate
mu= 0.25; % recover rate 
%--

S0I0R0=[s0 i0 r0]/N;    % initial condictions Vector
Tspam=(0:0.1:T); % time interval

%-- Numerical Integration
[T,Y] = ode45(@(t,Y) Fsir(t,Y,lambda,mu),Tspam,S0I0R0);
%--

S=Y(:,1)*N; % Solution S
I=Y(:,2)*N; % Solution I
R=Y(:,3)*N; % Solution R (other solution is R=N-S-I) 

%-----   plots -----
plot(T,S,'k');
hold on;
grid on;
plot(T,I,'r--');
plot(T,R,'b-.');
title(['SIR model with parameters: \lambda= ',num2str(lambda),', \mu= ',num2str(mu), ', N=',num2str(N)])
xlabel('Time')
ylabel('Number of Individuals')
legend('S','I','R','Location','best')
%------------------