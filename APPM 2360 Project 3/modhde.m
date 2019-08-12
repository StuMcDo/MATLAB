function vh = modhde(t,y,T)
%DESOL Summary of this function goes here
%   Detailed explanation goes here
if nargin<3
        T=100;
end
if ( (mod(t,T) >= 10.0) && ( mod(t,T) <= 13.0) || t==0 )
S = 0.25;
else
S = 0.0;
end
A = 0.15;
k = 8;
epsilonZero = 0.002; 
mu1 = 0.2;
mu2 = 0.3;
vh = zeros(2,1);

vh = [-k*y(1)*(y(1)-A)*(y(1)-1)-y(1)*y(2)+S; 
    (epsilonZero +(mu1*y(2))/(y(1)+mu2))*(-y(2)-k*y(1)*(y(1)-A-1))];
end


