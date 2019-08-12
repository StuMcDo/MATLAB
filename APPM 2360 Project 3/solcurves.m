initCon = [0.25 0];
tspan = [0 500];
[t,Y] = ode45(@modhde ,tspan, initCon);%[0.5 0.2]
figure 
hold on
%plot(Y(:,1),Y(:,2),initCon(1,1), initCon(1,2),'o')
plot(t,Y(:,1))
plot(t,Y(:,2))
hold off