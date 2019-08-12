f0=7.02e6
c38=100e-12
l6=3.4e-6
c39=(1/(2*pi*f0)^2)/l6-c38
fu=7.063e6
fl=6.964e6
fb=fu-fl
Qp=f0/fb
fob=7e6
fub=7.04e6
flb=6.95e6
fbb=fub-flb
Qboard=fob/fbb
cscope=10.25e-12
v7=2.34
v2=9e-3
r=v7/v2
rdB=20*log10(r)
L6=1/(((2*pi*fob)^2)*(c38+c39+cscope))


AL=4e-9
Lexpected=AL*27^2
