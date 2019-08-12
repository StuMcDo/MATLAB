omega1=25*2*pi
omega2=150*2*pi
omega3=4000*2*pi
omega4=150000
s=linspace(10,1e6,1e6);
k=7.94
length(s)
G= @(s) k*(1+s./omega1)/((1+s./omega2)*(1+s./omega3)*(1+omega4./s));
%mag=zeros(1,size(s))
for n = 1:length(s)
    mag(1,n)=G(s(1,n));
end

semilogx(s,mag)