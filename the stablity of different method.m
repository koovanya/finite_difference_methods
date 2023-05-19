S0=50;
K=50;
r=0.04;
sigma=0.25;
T=0.5;
N=100;
Smax=100;

price=zeros(4,10);

for M=50:100:950
    price(1,(M+50)/100) = M;
    price(2,(M+50)/100) = EuPutExpl(S0,K,r,T,sigma,Smax,M,N);
    price(3,(M+50)/100) = EuPutImpl(S0,K,r,T,sigma,Smax,M,N);
    price(4,(M+50)/100) = EuPutCN(S0,K,r,T,sigma,Smax,M,N);
end


