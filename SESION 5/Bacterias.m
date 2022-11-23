%Programa main

%Resolver una ODE se utiliza el comando ODE23
%b es la poblacion de bacterias
%t es el tiempo
%odefun es un fichero que contiene una funcion con la ODE
%tspan es el tiempo de la simulacion
%b0 son las condiciones iniciales --poblacion de bacterias
tspan = [0 20];%tiempo de simulacion
b0 = 30;%poblacion inicial de bacterias
[t,b] = ode23('ODEBacterias',tspan,b0);
%Representar la poblacion de bacterias frente al tiempo

plot(t,b)