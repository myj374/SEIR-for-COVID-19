%SEIR模型求解
clear;clc;
%参数设置
N = 1400000000;%人口数
I = 1;%传染者
R = 0;%康复者
D = 0;%死亡患者数量
E = 0;%潜伏者
S = N-I;%易感染者
sum_I = 1;
a = 20;%感染者平均接触人数
b = 0.03;%感染率
lambda = a*b;%感染系数
delta = 0.125;%潜伏者患病概率
mu = 0.1;%康复概率
alpha = 0.05;%死亡概率
T = 1:500;
for idx =1:length(T)-1
    S(idx+1)=S(idx)-lambda*I(idx)*S(idx)/N;%易感人数迭代
    E(idx+1)=E(idx)+lambda*S(idx)*I(idx)/N-delta*E(idx);%潜伏者人数迭代
    I(idx+1)=I(idx)+delta*E(idx)-(mu+alpha)*I(idx);%患病人数迭代
    R(idx+1)=R(idx)+mu*I(idx);%康复人数迭代 
    D(idx+1)=D(idx)+alpha*I(idx);%死亡患者人数迭代
    sum_I(idx+1) = sum_I(idx) + delta*E(idx);%累计患病人数迭代
end


plot(T,S,T,E,T,I,T,R,T,D);
grid on;
xlabel('日期');
ylabel('人数');
legend('易感者','潜伏者','感染者','康复者','死亡者');
title('SEIR模型');
