%Programa main
clear alln %borra el contenido de las variables de simulaciones anteriores
close all %cierra todas las ventanas graficas

%CASO BASE

tspan = [0 25];
p0 = [2 2];
knlob = 0.2;
kmlob = 1;
knlib = 1;
kmlib = 0.1;
%Representar la poblacion de bacterias frente al tiempo
[t_base,p_base] = ode23(@(t_base,p_base) ODElobos_liebres(t_base,p_base,knlob,knlib,kmlob,kmlib), tspan, p0);
figure(1)
lobos=p_base(:,1);
liebres=p_base(:,2);
plot(t_base,lobos,'b')
hold on
plot(t_base,liebres,'g')
title("Evolucion temporal de poblacion de lobos y liebres")
xlabel('Tiempo'), ylabel('poblacion lobos y liebres'), grid

