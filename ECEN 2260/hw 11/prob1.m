

T=1/60
an= @(n) (3.*(sin((3*pi.*n)./2) - sin((19*pi.*n)./12)))./(2.*n.*pi) - (3.*(sin((pi.*n)./2) - sin((7*pi.*n)./12)))./(2.*n.*pi)
bn= @(n) 3./(2*pi.*n).*(-cos(7*pi/12.*n)+cos(pi/2.*n)+cos(19*pi/12.*n)-cos(3*pi/2.*n))
n=linspace(1,100,100);
nmagA=an(n);
nmagB=bn(n);
Fn=@(n) 2*pi*60.*n;
fn=linspace(1,100,100);
fn=Fn(fn);
t=linspace(-0.01667,0.01667,100000);
currentAmp= zeros(1,100000);
totalAmp=zeros(1,100000);
for k= 1: length(n)
    currentAmp = nmagB(k).*sin(fn(k).*t)+nmagA(k).*cos(fn(k).*t);
    totalAmp = totalAmp+currentAmp;
end
totalAmp = totalAmp;
plot(t,totalAmp)
In=sqrt(sum(nmagA.^2+nmagB.^2/2))
