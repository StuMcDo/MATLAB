t = linspace(0, 15, 7000);
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
dxT=dxdt./speed;
dyT=dydt./speed;
dzT=dzdt./speed;
kt=sqrt(dxT.^2+dyT.^2+dzT.^2)./sqrt(dxdt.^2+dydt.^2+dzdt.^2);
plot(t(1:6999),kt)
xlabel('time in seconds')
ylabel('curvature')
%dx2dt2=diff(dxdt);
%dy2dt2=diff(dydt);
%dz2dt2=diff(dzdt);

%rt1=diff(rt)
%rt2=diff(rt1)
%kt=norm(cross(rt1,rt2))/(norm(rt1)^3)
%fplot(kt,[0 15])