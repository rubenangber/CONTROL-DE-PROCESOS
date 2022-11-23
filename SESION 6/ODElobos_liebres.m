function [dpdt] = ODElobos_liebres(t_base,b_base,knlob,knlib,kmlob,kmlib)
%p es una matriz con 2 columnas
dpdt(1) = r*p*(1-p/k);
end