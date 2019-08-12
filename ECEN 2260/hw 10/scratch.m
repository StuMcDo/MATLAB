a1=-(20e-6)^2;
b1=(70e-6)^2;
b2=(50e-6)^2;
(a1+b1-b2)*5/(2*20e-6*70e-6);
B=2/70e-6*5/20e-6
A=2*pi/70e-6;
Q = 20e-6/70e-6;
h=@(n)1.0./n.^2.*1.0./pi.^2.*sin(n.*pi.*(2.0./7.0)).^2.*3.5e1
n=linspace(1,10,10);
n=h(n);
Fn=@(n) 2*pi/(70e-6).*n;
fn=linspace(1,100,100);
fn=Fn(fn);
t=linspace(-0.00007,0.00007,10000);
currentAmp= zeros(1,10000);
totalAmp=zeros(1,10000);
for k= 1:length(n)
    currentAmp = n(k).*cos(fn(k).*t);
    totalAmp = totalAmp+currentAmp;
end
totalAmp=1.4286+totalAmp;
plot(t,totalAmp)
