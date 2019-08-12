initCon = [0 0];
tspan = [0 1000];
T=100;
opts = odeset('MaxStep',0.2);
hbar_plot = zeros(1,6);
T_plot = zeros(1,6);

for n = 1:6
    T = 100 - (n-1)*10;
[t,Y] = ode45(@(t,y) mod2hde(t,y,T) ,tspan, initCon,opts);%[0.5 0.2]
V = Y(:,2);
V_min=islocalmin(V);
vIndex = find(V_min >0);
v_last_row = length(vIndex);
hbar_plot(1,n) = V(vIndex((v_last_row-1),1))
T_plot(1,n) = T;
end
figure
hold on
plot(T_plot, hbar_plot,'o-')
title('$\bar{h}\;steady\;state \;versus \;Stimulation \;Period$','Interpreter','latex')
xlabel('$T$','Interpreter','latex')
ylabel('$\bar{h}$','Interpreter','latex')
%plot(Y(:,1),Y(:,2),initCon(1,1), initCon(1,2),'o')
%plot(t,Y(:,1))
%axis([0 50 0 1.2])
%plot(t,Y(:,2))
hold off