initCon = [0; 0];
%tspan = linspace(0,1000,5000);
%tspan = [0 1000];
T=50;
opts = odeset('MaxStep',0.2);
tspan=[0 1000]


[t,Y] = ode45(@(t,y) mod2hde(t,y,T) ,tspan, initCon,opts);%[0.5 0.2]
V = Y(:,1);
vIndex = find(V>=0.09& V<=0.11);
v_last_row = length(vIndex);
ADP0_plot(1,1) = t(vIndex(v_last_row,1))-t(vIndex((v_last_row-1),1));
T_plot(1,n) = T;
[m, n] = size(vIndex);
time = zeros(1,m);
voltage = zeros(1,m);
for g = 1:m
    time(1,g) = t(vIndex(g,1));
end
for h = 1:m
    voltage(1,h) = V(vIndex(g,1));
end
figure
plot(t,Y(:,1),time,voltage,'o')