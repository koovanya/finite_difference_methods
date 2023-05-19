# finite_difference_methods
Compare the result and its stablity of three finite difference methods (explicit scheme, implicit scheme, and Crank-Nicolson scheme) for pricing the European put option under the Black-Scholes model

比较Black-Scholes模型下欧洲看跌期权定价的三种有限差分方法（显式方法、隐式方法和Crank-Nicolson方法）。
示例参数如下：现货资产价格用S0表示，执行价格K=50，无风险利率r=0.04；到期时间T=0.5年，资产波动率σ=0.25：对于所有的有限差分方法，选择Smin=0和Smax=100，并定义dt=T/N；dS＝Smax/M以形成网格。将每个有限差分方案的定价误差定义为根据Black-Scholes公式计算的价格与根据每个有限差方案计算的价格之间的差。
横轴为股价，划分为M个网格；纵轴为时间，划分为N个网格。

## 当横纵网格均为100时
每个有限差分方法的定价误差和股票价格S的关系图如下

![image](https://github.com/koovanya/finite_difference_methods/assets/107574034/44132414-e98c-4631-84e9-a6d96c4ef59e)

## 改变M的值（其他参数固定），比较每种有限差分方法的稳定性

![image](https://github.com/koovanya/finite_difference_methods/assets/107574034/9712195c-dc4e-435e-81a2-d888b3e3cc27)


