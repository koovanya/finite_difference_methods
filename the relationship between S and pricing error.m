S0=[45,46,47,48,49,50,51,52,53,54,55];
K=50;
r=0.04;
sigma=0.25;
T=0.5;
M=100;
N=100;
Smax=100;

pricebls = blsprice(S0,K,r,T,sigma);

ExplError = EuPutExpl(S0,K,r,T,sigma,Smax,M,N)-pricebls;
ImplError = EuPutImpl(S0,K,r,T,sigma,Smax,M,N)-pricebls;
CNError = EuPutCN(S0,K,r,T,sigma,Smax,M,N)-pricebls;

plot(S0,ExplError);
hold on;
plot(S0,ImplError);
hold on;
plot(S0,CNError);
