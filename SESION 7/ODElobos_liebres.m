function [dpdt] = ODElobos_liebres(t,p,knlob,knlib,kmlob,kmlib)
%p es una matriz con 2 columnas
%primera columna se refiere a la poblacion de lobos 
% %y la segunda columna a la de liebres
%p(1) lobos
%p(2) liebres
%dpdt=size(2,1)
dpdt=[0;0];
dpdt(1) = knlob*p(1)*p(2)-knlob*p(1);
dpdt(2) = knlib*p(2) - kmlib*p(1)*p(2);
end