t=linspace(0,15,1001);
x= 20*cos(8*pi/15.*t).^2 
%y component
y=10*sin(4*pi/15.*t) 
%z component
z=16/675.*t.^3
%paremeters beam one
xb1=30-t.*20
yb1=t.*8
zb1=t.*15
%parameters of beam two
xb2=25-10.*t
yb2=20+(-10+5*sqrt(3)/2).*t
zb2=320/27*t
%parameters of beam 3
xb3=20.*t
yb3=-30 + 20.*t
zb3=135/32.*t

for i = 1: length(t)
    if abs(x-xb1)<.05
        fprintf ('there beam 1 colided with path at t = %i',i*1001/15)
    end
    if abs(x-xb2)<.05
        fprintf ('there beam 2 colided with path at t = %i',i*1001/15)
    end
    if abs(x-xb3)<.05
        fprintf ('there beam 3 colided with path at t = %i',i*1001/15)
    end
end