t = linspace(0, 15, 10000);
%x component
x= 20*cos(8*pi/15.*t).^2 ;
%y component
y=10*sin(4*pi/15.*t) ;
%z component

z=16/675.*t.^3;
dxdt=diff(x);
dydt=diff(y);
dzdt=diff(z);

speed=sqrt(dxdt.^2+dydt.^2+dzdt.^2)
a=max(speed)
exceedMax=speed>37.5;
dxT=dxdt./speed;
dyT=dydt./speed;
dzT=dzdt./speed;
kt=sqrt(dxT.^2+dyT.^2+dzT.^2)./sqrt(dxdt.^2+dydt.^2+dzdt.^2);
plot(t(1:9999),kt)
