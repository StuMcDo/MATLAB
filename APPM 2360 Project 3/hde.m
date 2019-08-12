function vh = hde(t,y,T)
%DESOL Summary of this function goes here
%   Detailed explanation goes here
A = 0.15;
if nargin<3
        T=100;
end
k = 8;
epsilonZero = 0.002; 
mu1 = 0.2;
mu2 = 0.3;
vh = zeros(2,1);
vh = [
    -k*y(1)*(y(1)-A)*(y(1)-1)-y(1)*y(2); 
    (epsilonZero +(mu1*y(2))/(y(1)+mu2))*(-y(2)-k*y(1)*(y(1)-A-1))];
end

