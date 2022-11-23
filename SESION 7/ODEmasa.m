function [dxdt] = ODEmasa(t,x,M,k,f,F)
%x es una matriz con 2 columnas
%dxdt es una matriz con 2 columnas
%primera columna se refiere al desplazamiento z(t)
%y la segunda columna es la velocidad dz/dt
%x(1) posicion
%x(2) velocidad
dxdt=[0;0];
dxdt(1) = x(2);
dxdt(2) = (1/M)*(F - k*x(1) - f*x(2));
end