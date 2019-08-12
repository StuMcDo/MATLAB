%problem 1
%%%%%%%%%%%%%%%%%%%%%%%%%%Create Domain%%%%%%%%%%%%%%%%%%%%%%%%%%
%S is the angle between the equator and the center of the sun
s= linspace(-0.4,0.4);
%t is the angle proportional to the time of day
t= linspace(-pi/2,pi/2);
%create grid for C and W
[S T] = meshgrid(s,t);
%%%%%%%%%%%%%%%%%%%%%%%%Anonymous function%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%Create Domain%%%%%%%%%%%%%%%%%%%%%%%%%%%
%cloudiness varies from 0 - 1 0 very cloudy, 1 no clouds 
C = @(s,t) (3-(1+(s-0.2).^2).*cos(t).^2)./3;
%%%%%%%%%%%%%%%%%%%%%%%%%%Range and surfplot%%%%%%%%%%%%%%%%%%%%%%
Cloud=C(S,T);

cl=surf(s,t,Cloud)
xlabel('Time of Year')
ylabel('Time of Day')
zlabel('Cloudiness')

%%%%%%%%%%%%%%%%%%%%%%%%%%Critical points #2%%%%%%%%%%%%%%%%%%%%%%
%%%%Compute W(s,u)%%%%%%
%%%%create u%%%%%%%%%%%%
u=linspace(-pi/2,pi/2);
[S U]=meshgrid(s,u);
%%%%W(s,u)%%%%%%%%%%%%%%
W= @(s,u) 1+(1+0.65.*s-1.2.*s.^2-0.4.*s.^3+0.35.*s.^4).*cos(u)...
    +(1.4.*s-0.4.*s.^2-1.5.*s.^3-0.35.*s.^4).*sin(u)
w=W(S,U);

%surf(S,U,w)
%contour(S,U,w)
