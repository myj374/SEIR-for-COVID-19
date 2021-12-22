#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon May 18 20:53:58 2020

@author: 
@source: https://blog.csdn.net/weixin_43289424/article/details/104214637

"""


import scipy.integrate as spi
import numpy as np
import matplotlib.pyplot as plt

# 人群总数
N = 10000
# 传染率系数
Lambda = 0.25

# I_0为感染者的初始人数
I_0 = 1
# S_0为易感者的初始人数
S_0 = N - I_0
# 感染者每天接触人数
P = 1
# T为传播时间
T = 150

# INI为初始状态下的数组
INI = (S_0/N,I_0/N) 


def funcSI(inivalue,_):
    Y = np.zeros(2)
    X = inivalue
    # 易感个体变化s(t)
    Y[0] = - (P * Lambda * X[0] * X[1])
    # 感染个体变化i(t)
    Y[1] = (P * Lambda * X[0] * X[1])
    return Y

T_range = np.arange(0,T + 1)

RES = spi.odeint(funcSI,INI,T_range)# 解微分方程


plt.plot(RES[:,0],color = 'darkblue',label = 'Susceptible',marker = '.')
plt.plot(RES[:,1],color = 'red',label = 'Infection',marker = '.')
plt.title('SI Model, N='+str(N)+', I_0='+str(I_0)+' ,λ='+str(Lambda))
plt.legend()
plt.xlabel('Day')
plt.ylabel('Number')
plt.show()
