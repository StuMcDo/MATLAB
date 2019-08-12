Ipk=1

h=@(n)-Ipk./(pi.*n).*cos(pi.*n)
n=linspace(1,100,100);
n=h(n);
Fn=@(n) 2*pi/(70e-6).*n;
fn=linspace(1,100,100);
fn=Fn(fn);
t=linspace(-0.00007,0.00007,10000);
currentAmp= zeros(1,10000);
totalAmp=zeros(1,10000);
for k= 1:length(n)
    currentAmp = n(k).*sin(fn(k).*t);
    totalAmp = totalAmp+currentAmp;
end
totalAmp=1.4286+totalAmp;
plot(t,totalAmp)
