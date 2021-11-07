clear all,close all, clc
N=10^6;
dt=1;
beta=0.77;
gamma=1/10;
I(1)=10;
S(1)=N-I(1);

mi=0.00356;

for n=2:1000
	I(n) = I(n-1)*(1+dt*(beta*(S(n-1)/N)-gamma-mi));
    S(n) = S(n-1)+dt*(mi*N - beta*((S(n-1)*I(n-1))/N)-mi*S(n-1));
endfor

x=S/N;
y=I/N;
R=1-x-y;

vreme=1:1:1000;
figure 1, plot(vreme,y,"r","linewidth",1.5,
	vreme,R,"g","linewidth",1.5,
	vreme,x,"b","linewidth",1.5);
leg=legend("I","R","S")
set(leg,"fontsize",15);
axis([0 500 0 1])
grid on
hold on