% In the SIR model we have 3 epidemiological classes: Susceptible, Infected and Removed individuals.
% SIR.m - we are just looking at a static population.
clear all,close all
pkg load signal
dt=1;
N=10^6;		% The total population
beta=0.25;		% Number of contacts per day that are sufficient to spread the disease
gamma=1/10;		% Fraction of the infected group that will recover during any given day
I(1)=10;		% I(0) - initial number of infected individuals
S(1)=N-I(1);		% S(0) - initial number of susceptible individuals

% I(n) - number of infected individuals
% S(n) - number of susceptible individuals
for n=2:1000
	I(n) = I(n-1)+dt*(beta*(S(n-1)/N)-gamma)*I(n-1);
	S(n) = S(n-1)-dt*beta*S(n-1)*(I(n-1)/N);
endfor

x=S/N;			% x - susceptible fraction of the population
y=I/N;			% y - infected fraction of the population
z=1-x-y;		% z - removed fraction of the population

vreme=1:1:1000;
figure 1, 
plot(vreme,y,"r","linewidth",1.5,vreme,z,"g","linewidth",1.5,vreme,x,"b","linewidth",1.5);
leg=legend("I","R","S")
set(leg,"fontsize",17)
axis([0 500 0 1])
grid on
hold on

figure 2,
plot(x,y,"linewidth",1.5);
xlabel('S(t)/N',"fontsize",17)
ylabel('I(t)/N',"fontsize",17)
grid on
hold on

figure 3,
plot(y,"linewidth",1.5);
xlabel('Day',"fontsize",17)
ylabel('Prevalence',"fontsize",17)
grid on
hold on

[pks,loc]=findpeaks(y);
[pk, ipk]=max(pks);
maxI=pk		% infected population at the peak of the epidemic
Tstar=loc(ipk)		% time where the epidemic reaches its peak
Rinf=z(end)		% removed population after the epidemic

figure 4,
plot(vreme,y,"linewidth",1,loc,pks,"go","linewidth",2);
xlabel('Day',"fontsize",17)
ylabel('Prevalence',"fontsize",17)
grid on
hold on
