%used
initCon = [0 0];
tspan = [0 500];
opts = odeset('MaxStep',0.2)
[t,Y] = ode45(@modhde ,tspan, initCon,opts);%[0.5 0.2]
figure 
hold on
%plot(Y(:,1),Y(:,2),initCon(1,1), initCon(1,2),'o')
plot(t,Y(:,1))
plot(t,Y(:,2))
xlabel('t','Interpreter','latex')
ylabel('v(t) h(t)','Interpreter','latex')
axis([0 500 0 2.1])
legend('v(t) solution curve','h(t) solution curve')
hold off