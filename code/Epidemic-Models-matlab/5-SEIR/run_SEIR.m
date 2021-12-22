
% This script needs the file Fseir.m to run
% Fseir.m contains the differential equation model

% S is the number of Susceptible individuals at each time step
% E is the number of Exposed individuals at each time step
% I is the number of Infected individuals at each time step
% R is the number of Recovered individuals at each time step

N=10000;  %Population Size

%-- initial condictions
i0=5;    % initial condition for I
s0=N-i0; % initial condition for S
e0=0;    % initial condition for E
r0=0;    % initial condition for R
% --

T=150;   % evaluation time

%-- parameters 
lambda=0.5; % infectious rate
mu= 0.1; % recover rate 
delta= 0.1; % migration rate of latency
%--

S0E0I0R0=[s0 e0 i0 r0]/N;    % initial condictions Vector
Tspam=(0:0.1:T); % time interval

%-- Numerical Integration
[T,Y] = ode45(@(t,Y) Fseir(t,Y,lambda,mu,delta),Tspam,S0E0I0R0);
%--

S=Y(:,1)*N; % Solution S
E=Y(:,2)*N; % Solution E
I=Y(:,3)*N; % Solution I
R=Y(:,4)*N; % Solution R (another solution is R=N-S-E-I) 

%-----   plots -----
plot(T,S,'k');
hold on;
grid on;
plot(T,E,'m:');
plot(T,I,'r--');
plot(T,R,'b-.');
title(['SEIR model: \lambda= ',num2str(lambda),', \mu= ',num2str(mu), '\delta= ',num2str(delta), ', N=',num2str(N)])
xlabel('Time')
ylabel('Number of Individuals')
legend('S','E','I','R','Location','best')
%------------------