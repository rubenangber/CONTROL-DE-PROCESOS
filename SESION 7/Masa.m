%Programa main
clear alln %borra el contenido de las variables de simulaciones anteriores
close all %cierra todas las ventanas graficas

%CASO BASE
k = 20; % constante elastica
f = 4; % coeficiente de ficcion
M = 1; % masa
%Entrada/Causa
F = 30; % fuerza externa
%Condiciones iniciales
x0 = [0 0]; % Posicion inicial y velocidad inicial
tspan = [0 4];

%Representar la poblacion de bacterias frente al tiempo
[t_base,x_base] = ode23(@(t_base,x_base) ODEmasa(t_base,x_base,M,k,f,F), tspan, x0);
figure(1)
posicion=x_base(:,1); % la coordenanda z
velocidad=x_base(:,2); % la velocidad, deribada de z con respecto del tiempo
plot(t_base,posicion,'b')
title("Evolucion temporal del desplazamiento de la masa")
xlabel('Tiempo'), ylabel('Desplazamiento z(t)'), grid
figure(2)
plot(t_base,velocidad,'g')
title("Evolucion temporal de la velocidad de la masa")
xlabel('Tiempo'), ylabel('Velocidad dz/dt'), grid

%%CAMBIO DEL COEFICIENTE DE ROZAMIENTO
k = 20; % constante elastica
f = 4; % coeficiente de ficcion
M = 1; % masa
F = 30; % fuerza externa
%Condiciones iniciales
x0 = [0 0]; % Posicion inicial y velocidad inicial
tspan = [0 4];

[t_base,x_base] = ode23(@(t_base,x_base) ODEmasa(t_base,x_base,M,k,f,F), tspan, x0);
figure(1)
posicion=x_base(:,1); % la coordenanda z
velocidad=x_base(:,2); % la velocidad, deribada de z con respecto del tiempo
plot(t_base,posicion,'b')
title("Evolucion temporal del desplazamiento de la masa")
xlabel('Tiempo'), ylabel('Desplazamiento z(t)'), grid
hold on
k = 20; % constante elastica
f = 4; % coeficiente de ficcion
M = 1; % masa
F = 120; % fuerza externa
%Condiciones iniciales
x0 = [0 0]; % Posicion inicial y velocidad inicial
tspan = [0 4];

[t_base,x_base] = ode23(@(t_base,x_base) ODEmasa(t_base,x_base,M,k,f,F), tspan, x0);
figure(1)
posicion=x_base(:,1); % la coordenanda z
velocidad=x_base(:,2); % la velocidad, deribada de z con respecto del tiempo
plot(t_base,posicion,'g')
title("Evolucion temporal del desplazamiento de la masa")
xlabel('Tiempo'), ylabel('Desplazamiento z(t)'), grid
hold on
k = 20; % constante elastica
f = 4; % coeficiente de ficcion
M = 1; % masa
F = 30/4; % fuerza externa
%Condiciones iniciales
x0 = [0 0]; % Posicion inicial y velocidad inicial
tspan = [0 4];

[t_base,x_base] = ode23(@(t_base,x_base) ODEmasa(t_base,x_base,M,k,f,F), tspan, x0);
figure(1)
posicion=x_base(:,1); % la coordenanda z
velocidad=x_base(:,2); % la velocidad, deribada de z con respecto del tiempo
plot(t_base,posicion,'r')
title("Evolucion temporal del desplazamiento de la masa")
xlabel('Tiempo'), ylabel('Desplazamiento z(t)'), grid
hold on
legend('F=30','F=120','F=30/4')