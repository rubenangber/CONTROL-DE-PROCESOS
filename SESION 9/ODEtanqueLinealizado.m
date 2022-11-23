function [dInchdt] = ODEtanqueLinealizado(t,Inch,kd,A,IncFi,hbarra)
%h es un vector columna
%dh/dt es un vector columna
%dInchdt=[0];
dInchdt = (1/A)*(IncFi - (kd/(2*sqrt(hbarra)))*Inch);
end