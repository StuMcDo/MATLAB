%set up ODE45
initCon = [0 0];
%tspan = linspace(0,1000,5000)
tspan = [0 1000];
T=100;
opts = odeset('MaxStep',0.2);
ADP0_plot = zeros(1,6);
T_plot = zeros(1,6);
for n = 1:6
    T = 100 - (n-1)*10;
[t,Y] = ode45(@(t,y) mod2hde(t,y,T) ,tspan, initCon,opts);%[0.5 0.2]
V = Y(:,1);
vIndex = find(V>=0.095& V<=0.105);
v_last_row = length(vIndex);
if T==90||T==70
    ADP0_plot(1,n) = t(vIndex((v_last_row-1),1))-t(vIndex((v_last_row-2),1));

else
    ADP0_plot(1,n) = t(vIndex(v_last_row,1))-t(vIndex((v_last_row-1),1));
end
T_plot(1,n) = T;
end


for n = 1:6
    T = 100 - (n-1)*10;
[t,Y] = ode45(@(t,y) mod2hde(t,y,T) ,tspan, initCon);%[0.5 0.2]
V = Y(:,2);
V_min=islocalmin(V);
vIndex = find(V_min >0);
v_last_row = length(vIndex);
hbar_plot(1,n) = V(vIndex(v_last_row)); 
%t(vIndex((v_last_row-1),1))-t(vIndex((v_last_row-2),1));
T_plot(1,n) = T;
end
figure
hold on
plot(hbar_plot,ADP0_plot, 'o-')
title('$Action\;Potential\;Duration \;versus \;steady \;state\;\bar{h}$','Interpreter','latex')
xlabel('$\bar{h}$','Interpreter','latex')
ylabel('$APD_0$','Interpreter','latex')
%plot(Y(:,1),Y(:,2),initCon(1,1), initCon(1,2),'o')
%plot(t,Y(:,1))
%axis([0 50 0 1.2])
%plot(t,Y(:,2))
hold off
%plot(t,Y(:,1))