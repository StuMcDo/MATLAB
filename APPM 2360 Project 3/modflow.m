%close all; clear all;
% This Matlab code generates a vector field for the system of ODEs
% dx/dt = f(x,y), dy/dt = g(x,y)
% This code currently will find the vector field for the EXAMPLE problem
%           dv/dt = a*x2
%           dh/dt = -x1
%-------------------------------------------------------------------------

%        THIS IS NOT THE PROBLEM YOU ARE SOLVING FOR PROJECT 3!
% (Make any necessary adjustments to this code so that it generates the
% vector field for the Project 3 system of equations.)
%-------------------------------------------------------------------------

% Set the axis limits
vmin = -0.05; vmax = 1.2; hmin = -0.05; hmax = 2.75;
%set step size for x and y;
vstep = 0.1; hstep = 0.15;
%generate mesh for plotting
[v, h] = meshgrid(vmin:vstep:vmax, hmin:hstep:hmax);
%set parameter value
a = 1;
% Define the system of equations
A = 0.15;
k = 8;
epsilonZero = 0.002; 
mu1 = 0.2;
mu2 = 0.3;
dv = -k*v.*(v-A).*(v-1)-v.*h;
dh = (epsilonZero +(mu1.*h)./(v+mu2)).*(-h-k.*v.*(v-A-1));
%ode45
initCon = [0.1 0.2];
tspan = [0 500];
[t,Y] = ode45(@hde ,tspan, initCon);%[0.5 0.2]
%normalize vectors (to help plotting)
dv = dv./sqrt(dv.^2 + dh.^2);
dh = dh./sqrt(dv.^2 + dh.^2);
% Generate the vector field
figure
%plot(t,y)
plot(Y(:,1),Y(:,2),initCon(1,1), initCon(1,2),'o')
hold on
quiver(v, h, dv,dh,'AutoScaleFactor',0.5)
%change axes limits, add labels
axis([vmin vmax hmin hmax])
xlabel('$v$','Interpreter','latex')
ylabel('$h$','Interpreter','latex')
hold off