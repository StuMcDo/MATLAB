%%%number 6%%%
%%%%%%s represents the angle of the sun depending on the time of year%%%%%
s= linspace(-0.4,0.4,10000);
u=linspace(-pi/2,pi/2,10000);
[S U]=meshgrid(s,u);
%%formula for energy
W= @(s,u) 1+(1+0.65.*s-1.2.*s.^2-0.4.*s.^3+0.35.*s.^4).*cos(u)...
    +(1.4.*s-0.4.*s.^2-1.5.*s.^3-0.35.*s.^4).*sin(u);
w=W(S,U);
[maxW indexW]=max(w);
min(maxW)
%si=365;
%maxS=zeros(1,si);
%for n= 1:si

%maxS(n)=S(n,indexW(n));

%end
%maxU=zeros(1,si);
%for n= 1:si

%maxU(n)=U(n,indexW(n));

%end
%hold on
%contour(S,U,w)
%plot(maxS,maxU)