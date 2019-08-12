R1 =100
R2 = 10
L = 25e-6
C1 = 6.8e-6
C2 = 150e-6
Zout= @(s)1/(1/R1+s*C1+s*C2/(s*R2*C2+1)+1/(s*L))
Z= @(s)R1*s*L*(s*R2*C2+1)/(s^3*R2*C2*R1*C1*L+s^2*(L*R2*C2+R1*L*C1+R1*C2*L)+s*(R1*R2*C2+L)+R1)
a=Zout(100)
b=Z(100)
equal(a,b)