# 新型冠状病毒的传播动力学模型

根据新冠的传播特点，利用MATLAB和Berkeley Madonna软件建立了改进的SEIR传播动力学模型，将人群分为“易感者、潜伏着、感染者、康复者、死亡者、隔离者、自我隔离者”。

#### 1.经典的SEIR模型

<img src="C:\Users\mm\AppData\Roaming\Typora\typora-user-images\image-20211222112448578.png" alt="image-20211222112448578" style="zoom:67%;" />

matlab结果

![image-20211222111805137](C:\Users\mm\AppData\Roaming\Typora\typora-user-images\image-20211222111805137.png)

#### 2.考虑潜伏者传染情况

<img src="C:\Users\mm\AppData\Roaming\Typora\typora-user-images\image-20211222112510066.png" alt="image-20211222112510066" style="zoom:67%;" />

matlab结果

![image-20211222111920999](C:\Users\mm\AppData\Roaming\Typora\typora-user-images\image-20211222111920999.png)

#### 3.考虑政府采取隔离措施

<img src="C:\Users\mm\AppData\Roaming\Typora\typora-user-images\image-20211222112527193.png" alt="image-20211222112527193" style="zoom:67%;" />

matlab结果

![image-20211222112016861](C:\Users\mm\AppData\Roaming\Typora\typora-user-images\image-20211222112016861.png)

#### 4.考虑民众居家隔离

<img src="C:\Users\mm\AppData\Roaming\Typora\typora-user-images\image-20211222112543737.png" alt="image-20211222112543737" style="zoom:67%;" />

matlab结果

![image-20211222112104647](C:\Users\mm\AppData\Roaming\Typora\typora-user-images\image-20211222112104647.png)

#### 5.参数调整（Berkeley Madonna）

![image-20211222112147023](C:\Users\mm\AppData\Roaming\Typora\typora-user-images\image-20211222112147023.png)

MATLAB结果图如下

![image-20211222112208120](C:\Users\mm\AppData\Roaming\Typora\typora-user-images\image-20211222112208120.png)

## 模型检验

![img](file:///C:/Users/mm/AppData/Local/Temp/msohtmlclip1/01/clip_image002.png)

![image-20211222112233619](C:\Users\mm\AppData\Roaming\Typora\typora-user-images\image-20211222112233619.png)

![image-20211222112238551](C:\Users\mm\AppData\Roaming\Typora\typora-user-images\image-20211222112238551.png)

![image-20211222112245025](C:\Users\mm\AppData\Roaming\Typora\typora-user-images\image-20211222112245025.png)

## 参考

[1]  D. Bernoulli, "Essai d’une nouvelle analyse de la mortalité causée par la petite vérole et des avantages de l’inoculation pour la prévenir", Memoirs Roy. Math. Phys. Acad. Sci., pp. 1-45, 1760.

[2]  W. O. Kermack, A. G. McKendrick and G. T. Walker, "A contribution to the mathematical theory of epidemics", Proc. Roy. Soc. London. Ser. A Containing Papers Math. Phys. Character, vol. 115, no. 772, pp. 700-721, 1927.

[3]  W. O. Kermack, A. G. McKendrick and G. T. Walker, "Contributions to the mathematical theory of epidemics. II. The problem of endemicity", Proc. Roy. Soc. London. Ser. A Containing Papers Math. Phys. Character, vol. 138, no. 834, pp. 55-83, 1932.

[4]  W. O. Kermack, A. G. McKendrick and G. T. Walker, "Contributions to the mathematical theory of epidemics. III. Further studies of the problem of endemicity", Proc. Roy. Soc. London. Ser. A Containing Papers Math. Phys. Character, vol. 141, no. 843, pp. 94-122, 1933.

[5]  KeepLearn. 数学建模常用算法——传染病模型（一）SI模型[EB/OL]. [2021.12.21]. https://zhuanlan.zhihu.com/p/141875765.

[6]  KeepLearn. 数学建模常用算法——传染病模型（二）SIS模型[EB/OL]. [2021.12.21]. https://zhuanlan.zhihu.com/p/142017716.

[7]  KeepLearn. 数学建模常用算法——传染病模型（三）SIR模型[EB/OL]. [2021.12.21]. https://zhuanlan.zhihu.com/p/142117497.

[8]  KeepLearn. 数学建模常用算法——传染病模型（四）SIRS模型[EB/OL]. [2021.12.21]. https://zhuanlan.zhihu.com/p/142117535.

[9]  KeepLearn. 数学建模常用算法——传染病模型（五）SEIR模型[EB/OL]. [2021.12.21]. https://zhuanlan.zhihu.com/p/142117573.

[10] CBeat. 基于改进SEIR模型的病毒传播动力学建模与疫情预测分析（以COVID-19新冠病毒为例，超详细，带matlab源码）[EB/OL]. [2021.12.21]. https://blog.csdn.net/qq_43954124/article/details/118884855.

[11] 桑茂盛,丁一,包铭磊,等. 基于新冠病毒特征及防控措施的传播动力学模型[J]. 系统工程理论与实践,2021,41(1):124-133. DOI:10.12011/SETP2020-0911.

[12] 刘天, 赵泽宇, 姚梦雷,等. SEIAR传染病动力学模型的建立及实现[J]. 疾病监测, 2020, 35(10):5.

[13] 中华人民共和国国家卫生健康委员会. 新型冠状病毒感染的肺炎疫情最新情况[EB/OL].[2021.12.21]. http://www.nhc.gov.cn/xcs/yqtb/list_gzbd.shtml.
