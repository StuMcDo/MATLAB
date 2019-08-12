
%Stuart McDonald HW 10 problem 3

Vmax=1
g=@(n)(Vmax.*sin(n.*pi.*(1.0./1.8e1)).^2.*-2.0)./(n.*pi)+(Vmax.*(cos(n.*pi)-cos(n.*pi.*(8.0./9.0))))./(n.*pi)+(Vmax.*(cos(n.*pi)-cos(n.*pi.*(1.0e1./9.0))))./(n.*pi)+(Vmax.*(cos(n.*pi.*(1.0./9.0))-cos(n.*pi.*(8.0./9.0))))./(n.*pi)-(Vmax.*(cos(n.*pi.*2.0)-cos(n.*pi.*(1.7e1./9.0))))./(n.*pi)-(Vmax.*(cos(n.*pi.*(1.0e1./9.0))-cos(n.*pi.*(1.7e1./9.0))))./(n.*pi)
h=@(n)Vmax./(n.*pi).*(-1+2.*cos(n.*pi/9)-2.*cos(8.*n.*pi/9)-...
    2.*cos(10.*n.*pi/9)+2.*cos(17.*n.*pi/9)-2.*cos(2*pi.*n))+2.*cos(pi.*n)
n=linspace(1,100,100);
w0=2*pi*1000
H=@(n) 1./sqrt((1-(w0.*n).^2).^2+(n.*w0).^2)
Hn=linspace(1,100,100);
Hn=H(Hn);
n=g(n);
Fn=@(n) 2*pi/(0.001).*n;
fn=linspace(1,100,100);
fn=Fn(fn);
t=linspace(0,0.001,10000);
currentAmp= zeros(1,10000);
totalAmp=zeros(1,10000);
for k= 1:length(n)
    currentAmp = n(k).*sin(fn(k).*t);
    totalAmp = totalAmp+currentAmp;
end
totalAmp=totalAmp;
plot(t,totalAmp)

(n(1)*h(1))/(n(5)*h(5))

