clear all,close all
dt=1;
N=10^6;
beta=0.77;
gamma=1/10;
I(1)=10;
S(1)=N-I(1);

mi=0.00356;

for n=2:1000
	I(n) = I(n-1)+dt*I(n-1)*(beta*(S(n-1)/N)-gamma-mi);
    S(n) = S(n-1)+dt*(mi*N-beta*((S(n-1)*I(n-1))/N)-mi*S(n-1));
endfor

x=S/N;
y=I/N;
z=1-x-y;

vreme=1:1:1000;
figure 1, 
plot(vreme,y,"r","linewidth",1.5,
	vreme,z,"g","linewidth",1.5,
	vreme,x,"b","linewidth",1.5);
leg=legend("I","R","S")
set(leg,"fontsize",17);
axis([0 500 0 1])

figure 2,
plot(x,y,"linewidth",1.5);
xlabel('S(t)/N',"fontsize",15)
ylabel('I(t)/N',"fontsize",15)

figure 3,
plot(y,"linewidth",1.5);
xlabel('Day',"fontsize",15)
ylabel('Rrevalence',"fontsize",15)

grid on
hold on