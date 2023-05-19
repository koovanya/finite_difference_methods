# finite_difference_methods
Compare the result and its stablity of three finite difference methods (explicit scheme, implicit scheme, and Crank-Nicolson scheme) for pricing the European put option under the Black-Scholes model

比较Black-Scholes模型下欧洲看跌期权定价的三种有限差分方法（显式方案、隐式方案和Crank-Nicolson方案）。
示例参数如下：现货资产价格用S0表示，执行价格K=50，无风险利率r=0.04；到期时间T=0.5年，资产波动率σ=0.25：对于所有的有限差分方法，选择Smin=0和Smax=100，并定义dt=T/N；dS＝Smax/M以形成网格。将每个有限差分方案的定价误差定义为根据Black-Scholes公式计算的价格与根据每个有限差方案计算的价格之间的差。
