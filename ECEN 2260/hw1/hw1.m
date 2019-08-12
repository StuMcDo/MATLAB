z = 2+3i
[theta, rho] = cart2pol(real(z), imag(z))

a = -2+4i
[theta, rho] = cart2pol(real(a), imag(a))

b=(2+3i)/(-2+4i)

[theta, rho] = cart2pol(real(b), imag(b))

z2 = -2+3i
[theta, rho] = cart2pol(real(z2), imag(z2))

z3 = (-2+3i)^1/3

t = linspace(0,2*pi/100,1000);
plot(t,3*cos(100.*t-pi/6)+2*sin(100.*t+pi/3),t,5*cos(100.*t-pi/6))