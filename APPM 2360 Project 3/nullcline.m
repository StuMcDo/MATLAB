%used
a=0.15;
k=8;
epsilon=0.002;
mu1=0.2;
mu2=0.3;
fnull_1 = @(v) -k.*(v-a).*(v-1);
fnull_2 = @(v)  0.*v;

gnull_1 = @(v) -k.*v.*(v-a-1);
gnull_2 = @(v) -epsilon/mu1.*(v+mu2)
v = linspace(-0.05,1.2,10000);
vnull_1 = fnull_1(v);
vnull_2 = fnull_2(v);
hnull_1 = gnull_1(v);
hnull_2 = gnull_2(v);

figure
hold on
plot(v, vnull_1,'b',v,vnull_2,'b',v, hnull_1, 'r',...
    v,hnull_2,'r',0,0,'o')
ax=gca
ax.XAxisLocation = 'origin'
 ax.YAxisLocation = 'origin'
xlabel('v')
ylabel('h')
title('nullclines')

axis([-0.05 1.5 -0.5 2.75])
legend('v1 nullcline' ,'v2 nullcline','h1 nullcline','h2 nullcline',...
    'equillibrium solution')
hold off
