%SEIR模型第三次修正，易感人群进行自我隔离
clear;clc;
%参数设置
N=1400000000;%人口数
I = 1;%传染者
R = 0;%康复者
D = 0;%死亡患者数量
E = 0;%潜伏者
S = N-I;%易感染者
Q = 0;%隔离者人数
Iq = I+Q;%现存总患病人数
F = 0;%自我隔离人数
sum_I = 1;%累计感染人数
a = 20;%感染者平均每日接触人数
b = 0.03;%平均感染率
lambda = a*b;%传染系数
lambda_1 = lambda;%潜伏者感染系数
delta = 0.125;%潜伏者患病概率
mu = 0.1;%康复概率
mu_1 = 0.05;%转阴率
mu_2 =mu*1.15;%隔离者治愈率
alpha = 0.05;%死亡概率
alpha_1 = alpha*0.05;%隔离者死亡率
phi = 0.7;%自我隔离速率
sita = 0.9;%隔离速率
day=31;%采取控制措施的天数
T = 1:200;
for idx = 1:length(T)-1
    S(idx+1) = S(idx)-lambda*I(idx)*S(idx)/N-lambda_1*E(idx)*S(idx)/N+mu_1*E(idx);%易感人数迭代
    E(idx+1) = E(idx)+lambda*I(idx)*S(idx)/N+lambda_1*E(idx)*S(idx)/N-delta*E(idx)-mu_1*E(idx);%潜伏者人数迭代
    I(idx+1) = I(idx)+delta*E(idx)-(mu+alpha)*I(idx)-sita*I(idx);%患病人数迭代
    R(idx+1) = R(idx)+mu*I(idx)+mu_2*Q(idx);%康复人数迭代
    D(idx+1) = D(idx)+alpha*I(idx)+alpha_1*Q(idx);%死亡患者人数迭代
    Q(idx+1) = Q(idx)+sita*I(idx)-mu_2*Q(idx)-alpha_1*Q(idx);%隔离人数迭代
    Iq(idx+1) = I(idx)+Q(idx);%现存总患病人数迭代
    
    if idx>=day
        S(idx+1) = S(idx)-phi*S(idx);%采取控制措施后潜伏者人数迭代
    end
    sum_I(idx+1) = sum_I(idx) + delta*E(idx);%累计患病人数迭代(累计患病人数=前一天的患病人数+新增患病)
end
save('output3.txt',"sum_I","Iq","D","R",'-ascii');%累计确诊\现存确诊\累计死亡\累计出院
plot(T,E,T,I,T,R,T,D,T,Iq,T,sum_I);
grid on;
hold on;
plot(31,0,'.');
xlabel('日期');
ylabel('人数');
legend('潜伏者','感染者','康复者','死亡者','总感染人数','累计感染人数');
title('SEIR模型第三次改进');
