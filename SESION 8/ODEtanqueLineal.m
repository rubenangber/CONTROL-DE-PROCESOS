function [dhdt] = ODEtanqueLineal(t,h,kd,A,Fi)
%h es un vector columna
%dh/dt es un vector columna
dhdt=[0];
dhdt = (1/A)*(Fi - kd*h);
end