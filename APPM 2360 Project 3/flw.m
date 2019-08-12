close all; clear all;
% This Matlab code generates a vector field for the system of ODEs
% dx/dt = f(x,y), dy/dt = g(x,y)
% This code currently will find the vector field for the EXAMPLE problem
%           dx/dt = a*x2
%           dy/dt = -x1
%-------------------------------------------------------------------------

%        THIS IS NOT THE PROBLEM YOU ARE SOLVING FOR PROJECT 3!
% (Make any necessary adjustments to this code so that it generates the
% vector field for the Project 3 system of equations.)
%-------------------------------------------------------------------------

% Set the axis limits
xmin = -5; xmax = 5; ymin = -5; ymax = 5;
%set step size for x and y;
xstep = 1; ystep = 1;
%generate mesh for plotting
[x, y] = meshgrid(xmin:1:ymax, ymin:1:ymax);
%set parameter values
a = 1;
% Define the system of equations
dx = a*y;
dy = -x;
%normalize vectors (to help plotting)
dx = dx./sqrt(dx.^2 + dy.^2);
dy = dy./sqrt(dx.^2 + dy.^2);
% Generate the vector field
quiver(x, y, dx,dy,'AutoScaleFactor',0.5)
%change axes limits, add labels
axis([xmin xmax ymin ymax])
xlabel('$x$','Interpreter','latex')
ylabel('$y$','Interpreter','latex')