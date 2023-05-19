function price = EuPutExpl(S0,K,r,T,sigma,Smax,M,N)
%set up grid and adjust increments if necessary
dS = Smax./M;
dt = T/N;
M = round(Smax./dS);
N = round(T/dt);
grid1 = zeros(M+1,N+1);
vetS = linspace(0,Smax,M+1);
veti = 0:M;
vetj = 0:N;
%set up boundary conditions
grid1(:,N+1) = max(K-vetS,0);
grid1(1,:) = K*exp(-r*dt*(N-vetj));
grid1(M+1,:) = 0;
%set up coefficients
a = 0.5*dt*(sigma^2*veti-r).*veti;
b = 1-dt*(sigma^2*veti.^2+r);
c = 0.5*dt*(sigma^2*veti+r).*veti;
%solve backward in time
for j=N:-1:1
    for i=2:M
        grid1(i,j)=a(i)*grid1(i-1,j+1)+b(i)*grid1(i,j+1)+c(i)*grid1(i+1,j+1);
    end
end
%return price,possibly by linear interpolation outside the grid
price = interp1(vetS,grid1(:,1),S0);
