clear all
x0=[1,0,0,0,0,0];
tf = 800;

a = 1/9; b = 1/10; p = 1/30; p2 = 1/27;m = 1/10;

fg = @(t,x) [ -a*x(1)+(p/2)*x(3)+p*x(6);
              -(a+2*b)*x(2)+a*x(1);
              -(p/2)*x(3)+(2*m/3)*x(4)+(p2/2)*x(5);
              -(13*m/6)*x(4)+b*x(2);
              -(p2/2)*x(5)+(m/2)*x(4);
              -p*x(6)+(a+b)*x(2)+m*x(4)];

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
grid on
legend('Stato E/S','Stato E/IT','Stato E/O','Stato E/ID','Stato E/G')