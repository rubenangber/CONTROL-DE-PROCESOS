%Programa main
clear alln %borra el contenido de las variables de simulaciones anteriores
close all %cierra todas las ventanas graficas

%Resolver una ODE se utiliza el comando ODE23
%b es la poblacion de bacterias
%t es el tiempo
%odefun es un fichero que contiene una funcion con la ODE
%tspan es el tiempo de la simulacion
%b0 son las condiciones iniciales --poblacion de bacterias

%CASO BASE

tspan = [0 20];%tiempo de simulacion
b0 = 30;%poblacion inicial de bacterias
r = 0.1;
%Representar la poblacion de bacterias frente al tiempo
[t,b] = ode23(@(t,b) ODEBacteriasNuevo(t,b,r), tspan, b0);
figure(1)
plot(t,b,'b-o')
title("Evolucion temporal de poblacion de bacterias")
xlabel('Tiempo'), ylabel('Poblacion de bacterias'), grid

%Apartado 2, aumento el tiempo de simulacion a 30
tspan = [0 30];
b0 = 30;
r = 0.1;
%Representar la poblacion de bacterias frente al tiempo
[t_nuevo,b_nuevo] = ode23(@(t_nuevo,b_nuevo) ODEBacteriasNuevo(t_nuevo,b_nuevo,r), tspan, b0);
hold on
figure(1)
plot(t_nuevo,b_nuevo,'r-*')
title("Evolucion temporal de poblacion de bacterias")
xlabel('Tiempo'), ylabel('Poblacion de bacterias')
legend('tspan = 20','tspan = 30')