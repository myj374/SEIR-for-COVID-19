#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon May 18 20:56:11 2020

@author: oudeng
"""


import scipy.integrate as spi
import numpy as np
import matplotlib.pyplot as plt

# N为人群总数
N = 10000
# 传染率系数
Lambda = 0.25
# 恢复率系数
Mu = 0.05
# Ts为抗体持续时间
Ts = 5
Gamma = 1 / Ts
# I_0为感染者的初始人数
I_0 = 1
# R_0为治愈者的初始人数
R_0 = 0
# S_0为易感者的初始人数
S_0 = N - I_0 - R_0
# T为传播时间
T = 150

# INI为初始状态下的数组
INI = (S_0/N,I_0/N,R_0/N)


def funcSIRS(inivalue,_):
    Y = np.zeros(3)
    X = inivalue
    # 易感个体变化
    Y[0] = - (Lambda * X[0] * X[1]) + Gamma * X[2]
    # 感染个体变化
    Y[1] = (Lambda * X[0] * X[1]) - Mu * X[1]
    # 治愈个体变化
    Y[2] = Mu * X[1] - Gamma * X[2]
    return Y

T_range = np.arange(0,T + 1)

RES = spi.odeint(funcSIRS,INI,T_range)


plt.plot(RES[:,0],color = 'darkblue',label = 'Susceptible',marker = '.')
plt.plot(RES[:,1],color = 'red',label = 'Infection',marker = '.')
plt.plot(RES[:,2],color = 'green',label = 'Recovery',marker = '.')
plt.title('SIRS Model, '+'N='+str(N)+', I_0='+str(I_0)+\
          ', λ='+str(Lambda)+', μ='+str(Mu)+', γ='+str(Gamma))
plt.legend()
plt.xlabel('Day')
plt.ylabel('Number')
plt.show()
