Ipk=1

h=@(n)2*Ipk./(pi.*n).*(sin(2/3.*n)+sin(1/3.*n))
n=linspace(1,10,10);
n=h(n);
Fn=@(n) 2*pi/(70e-6).*n;
fn=linspace(1,10,10);
fn=Fn(fn);
t=linspace(-0.00007,0.00007,10000);
currentAmp= zeros(1,10000);
totalAmp=zeros(1,10000);
for k= 1:length(n)
    currentAmp = n(k).*cos(fn(k).*t);
    totalAmp = totalAmp+currentAmp;
end
totalAmp=totalAmp;
plot(t,totalAmp)
