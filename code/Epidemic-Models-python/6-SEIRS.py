#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon May 18 20:51:15 2020

@author: 
@source: https://blog.csdn.net/weixin_43289424/article/details/104214637
"""

import scipy.integrate as spi
import numpy as np
import matplotlib.pyplot as plt

# N为人群总数
N = 20000
# 传染率系数
Lambda = 0.6
# 恢复率系数
Mu = 0.1
# Ts为抗体持续时间
Ts = 7
Gamma = 1 / Ts
# Te为疾病潜伏期
Te = 14
Delta = 1 / Te
# I_0为感染者的初始人数
I_0 = 1
# E_0为潜伏者的初始人数
E_0 = 0
# R_0为治愈者的初始人数
R_0 = 0
# S_0为易感者的初始人数
S_0 = N - I_0 - E_0 - R_0
# T为传播时间
T = 150

# INI为初始状态下的数组
INI = (S_0/N,E_0/N,I_0/N,R_0/N)


def funcSEIRS(inivalue,_):
    Y = np.zeros(4)
    X = inivalue
    # 易感个体变化
    Y[0] = - (Lambda * X[0] * X[2]) + Gamma * X[3]
    # 潜伏个体变化
    Y[1] = (Lambda * X[0] * X[2]) - Delta * X[1]
    # 感染个体变化
    Y[2] = Delta * X[1] - Mu * X[2]
    # 治愈个体变化
    Y[3] = Mu * X[2] - Gamma * X[3]
    return Y

T_range = np.arange(0,T + 1)

RES = spi.odeint(funcSEIRS,INI,T_range)


plt.plot(RES[:,0],color = 'darkblue',label = 'Susceptible',marker = '.')
plt.plot(RES[:,1],color = 'orange',label = 'Exposed',marker = '.')
plt.plot(RES[:,2],color = 'red',label = 'Infection',marker = '.')
plt.plot(RES[:,3],color = 'green',label = 'Recovery',marker = '.')

plt.title('SEIRS Model, '+'N='+str(N)+', I_0='+str(I_0)+\
          ', λ='+str(Lambda)+', μ='+str(Mu)+', δ='+str(Delta)+', γ='+str(Gamma))
plt.legend()
plt.xlabel('Day')
plt.ylabel('Number')
plt.show()
