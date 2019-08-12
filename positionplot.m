t=linspace(0,15,1000)
%x component
x= 20*cos(8*pi/15.*t).^2 
%y component
y=10*sin(4*pi/15.*t) 
%z component
z=16/675.*t.^3
%plot the trajectory
plot3(x,y,z)