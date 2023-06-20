clear all

x0=[1,0,0,0,0,0,0];

tf =80;

a = 1/3;
b = 1/4;
l = 1/4;
p = 1/30;
m = 1/3;

fg = @(t,x) [ -a*x(1)+0.5*p*x(3)+p*x(7);
              -(5*b+3*a+l)*x(2)+a*x(1);
              -0.5*p*x(3)+(a+b)*x(2);
              (b+l)*x(2)+l*x(5);
              -(l+2*m)*x(5)+b*x(2);
              (a+b)*x(2)+m*x(5);
              -p*x(7)+(a+b)*x(2)+m*x(5)];

[t,x]=ode45(fg,[0,tf],x0);

figure(1)
plot(t,x(:,1))
grid on
legend('Stato Iniziale E/E')

figure(2)
plot(t,x(:,2))
hold on
plot(t,x(:,3))
plot(t,x(:,4))
plot(t,x(:,5))
plot(t,x(:,6))
plot(t,x(:,7))
grid on
legend('Stato E/S','Stato E/IT','Stato E/M','Stato E/O','Stato E/ID','Stato E/G')

