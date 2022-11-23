function [dbdt] = ODEbacterias(t,b)
%Defino la ODE de las bacterias
%Deribada bacterias con respecto del tiempo
r = 0.1; %velocidad de crecimiento de las bacterias
dbdt = r*b; %ODE

end